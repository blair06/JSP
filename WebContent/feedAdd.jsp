<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
   String uid = request.getParameter("id");
   String ucontent = request.getParameter("content");
   
   Class.forName("com.mysql.jdbc.Driver"); 
   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns?useSSL=true", "root", "1234"); 
   Statement st = conn.createStatement();
   
   String str = "INSERT INTO feed(id, contents) VALUES(";
   str += "'" + uid + "', ";
   str += "'" + ucontent + "'";
   str += ")";
   int cnt = st.executeUpdate(str);
   
   String res = (cnt > 0) ? "입력하신 내용이 기입되었습니다." : "입력 중 에러가 발생하였습니다.";
   out.print(res);
   st.close(); conn.close();
%>