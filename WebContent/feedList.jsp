<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>회원 목록</title></head>
<body>
<table width = "100%" border = "1">
<tr>
	<td>ID</td>
	<td>Contents</td>
	<td>TS</td>
</tr>
	
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns?use=false", "root", "1234");
	Statement st= conn.createStatement();
	String str= "";
	ResultSet rs= st.executeQuery("SELECT id, contents,ts FROM feed");
	while(rs.next()) {
	str+="<tr>";
	str+="\r\n";
	str+= "<td>"+rs.getString("id") + "</td>";
	str+= "<td>"+rs.getString("contents")+"</td>" + "<br>";
	str+= "<td>"+rs.getString("ts")+"</td>" + "<br>";
	str+="</tr>";
	}
	out.print(str);
	rs.close(); st.close(); conn.close();
%>
</table>
</body>
</html>
