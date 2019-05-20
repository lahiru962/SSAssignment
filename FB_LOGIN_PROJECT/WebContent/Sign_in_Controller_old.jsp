<%@page import="javafx.scene.control.Alert"%>
<%@page import="com.chillyfacts.com.profile.Profile_Bean"%>
<%@page import="com.chillyfacts.com.profile.Profile_Modal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
<title>Online Newsletter</title>
</head>
<body>
<%
String access_token=(String)request.getParameter("access_token");
Profile_Modal obj_Profile_Modal=new Profile_Modal();
Profile_Bean obj_Profile_Bean= obj_Profile_Modal.call_me(access_token);
%>
Name : <%=obj_Profile_Bean.getUser_name() %><br>
Email : <%=obj_Profile_Bean.getEmail() %><br>
id : <%=obj_Profile_Bean.getId() %><br>
Profile Picture : <%=obj_Profile_Bean.getProfile_picture() %><br>
<img src="<%=obj_Profile_Bean.getProfile_picture() %>"></img>
</html>