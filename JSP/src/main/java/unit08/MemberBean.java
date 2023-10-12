package unit08;

public class MemberBean {
	private String name;
	private String userId;
	public String getName() {
		return name;
	}
	// getter and setter
	public void setName(String name) {
		this.name = name;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	// 매개 변수가 있는 생성자
	public MemberBean(String name, String userId) {
		this.name = name;
		this.userId = userId;
	}
	// 매개 변수가 없는 디폴트 생성자
	public MemberBean() {
		
	}
	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", userId=" + userId + "]";
	}
}
