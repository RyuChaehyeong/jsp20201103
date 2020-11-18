package chap14;

import java.time.LocalDateTime;

public class Employee {
	private String ename;
	private int eno;
	private LocalDateTime hireDate;
	private String job;
	private int salGrade;
	private String manager;

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public int getSalGrade() {
		return salGrade;
	}

	public void setSalGrade(int salGrade) {
		this.salGrade = salGrade;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public LocalDateTime getHireDate() {
		return hireDate;
	}
	
	public void setHireDate(LocalDateTime hireDate) {
		this.hireDate = hireDate;
	}
	
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	private int salary;
	private String dname;
	
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	
	
	
	
}
