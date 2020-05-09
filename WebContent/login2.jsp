<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import="java.util.Date" %>
<%!
	String getDate(){
	return (new Date()).toString();
}
%>
로그인페이지
<%
	String uid= request.getParameter("id");
	String str= "Input ID: " + uid+"<br>";
	str+= "로그인시간:" + getDate();
	out.print(str);
%>
