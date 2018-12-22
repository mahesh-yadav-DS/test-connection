
<%@ page import="java.sql.*" %>

<html>
<body>
<h2>Hello World!</h2>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/employees","root","root");
	Statement st =con.createStatement();
	ResultSet rs = st.executeQuery("select emp_id,emp_name,salary from employee_data");
	while(rs.next()) 
	{
		System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
	}
}
	catch (Exception e) {
		// TODO: handle exception
		System.out.println(e);
	}

%>

</body>
</html>
