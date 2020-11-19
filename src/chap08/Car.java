package chap08;

public class Car {
	private String name;
	private int speed;
	
	public boolean getStop() {
		return speed == 0;
		//이런 메소드를 만들엇다 치면 필드는 없지만
		//stop이라는 프로퍼티 생성
		//프로퍼티는 메소드에 의해서 생긴다.
		//읽기만 할 수 있는 property
		//작성 규칙 중에
		//boolean type을 리턴하거나 셋하는 메소드는
		//앞에 get을 붙여도 되지만 isStop이라고 써도
		//get, set 메소드에 의해 proptery가 결정ㅇ이 되는데
		//boolean은 is가 붙어도 property로 분류가 된다.
		
	}

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
}
