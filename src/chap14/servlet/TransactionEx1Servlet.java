package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TransactionEx1Servlet
 */
@WebServlet("/sample/transaction1")
public class TransactionEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TransactionEx1Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = getConnection(); // 같은 con쓰도록!
		try {			
			con.setAutoCommit(false);
			// 1. ironman의 잔고 (50 차감)
			update1(con);
			// 2. captain의 잔고 (50 증감)
			update2(con);
			con.commit(); // 원래 con의 commit자동 실행, con.setAutoCommit을 false로
		} catch (Exception e) {
			e.printStackTrace();
			if(con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // resource 연곳에서 닫아야 함
			}
		}
	}

	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\fluid\\Documents\\Wallet_mydb501";
		String user = "mydb17";
		String password = "adminAdmin12";

		Connection con = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 연결 생성
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;

	}

	private void update1(Connection con) {
		// 1. jdbc..
		String sql = "UPDATE bank SET money=(money-50) " 
					+ "WHERE name = 'ironman'";

		try {
			Statement stmt = con.createStatement();
			int row = stmt.executeUpdate(sql);
			if(row == 0) {
				con.rollback();
			}
			stmt.close();
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	private void update2(Connection con) {
		// 1. jdbc..
		String sql = "UPDATE bank SET money=(money+50) " + "WHERE name = 'captain2'";
	
		try {
			Statement stmt = con.createStatement();
			int row = stmt.executeUpdate(sql);
			//stmt.executeUpdate는 int를 return함, 영향을 미친 record개수
			
			if (row == 0) {
				con.rollback();
			}
			
			stmt.close();
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
