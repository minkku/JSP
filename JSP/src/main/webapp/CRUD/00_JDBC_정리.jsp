<!-- 
DBMS
	- 데이터 베이스 관리하기 위한 소프트웨어 패키지
		ex. MYSQL, ORACLE, SYTBASE ...

JDBC
	- 자바 프로그램에서 데이터베이스를 처리하기 위한 도구
	- 자바로 만든 애플리케이션이 디비에 일관된 방식으로 접근할 수 있도록 API를 제공하는 클래스 집합
 
JDBC 데이터 연결 방법						JDBC 클래스
	1. JDBC 드라이버 로드						1. DriverManager
	2. 디비와 연결								2. Connection
	3. SQL문 실행								3. Statement
	4. 디비와 연결 끊음							4. ResultSet

	위와 같은 단계를 진행하기 위해서는 JDBC에서 제공하는 클래스를 사용해야한다.
	
	Connection : 디비와 연결; DriverManage.getConnection();
	Statement : 질의, 갱신 실행; connection.createStatement();
	ResultSet : 결과물; statement.executeQuery();
	* 항상 변수를 선언해서 사용해야한다.
	예시/
		ResultSet rs = null;
		rs = stmt.executeQuery(sql);
	
	디비와 연결하기 위해선 JDBC 드라이버를 다운받은 후
	Class.forName("com.mysql.cj.jdbc.Driver"); 메소드를 사용해야한다.
	
	getConnection() 메소드를 호출
	
	Connection conn = DriverManager.getConnection(url, user, pw);
		매개변수 설명
		// mysql -v
		url : JDBC 형싱 URL		"jdbc:mysql://[hostname] || [127.0.0.1] || [localhost]:[PORT]/[database]"
		user : 사용자명			"mysql id"
		pw : 패스워드				"mysql password"\
		
		모든 작업이 끝나면 항상 finally { } 에서 조건문을 사용하여 각 메소드를 연결을 끊어줘야한다.
			예시//	
					finally {
					try{
						if (rs != null) rs.close();
						if (stmt != null) stmt.close();
						if (conn != null) conn.close();
					} catch(Exception e) {
						e.printStackTrace();
					}
 -->