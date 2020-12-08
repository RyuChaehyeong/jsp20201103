package chap20.lecture;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex1ServletContextListener
 *
 */
@WebListener
public class Ex1ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex1ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	//application이 종료될 때 실행되는 코드
    	System.out.println("우리 앱이 종료되었습니다.");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	//application이 실행되자마자 실행되는 코드
    	System.out.println("우리 앱이 실행되었습니다.");
    	//요청이 오지 않아도 실행하는 servlet보다 더 먼저 실행되는 코드
    	
    }
	
}
