<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.naming.Context" %>
 <%@ page import="javax.naming.InitialContext" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>environment</title>
</head>
<body>
	<h4>Environment</h4>
	
	<%
		String serverName = "missing";
		
		Context ctx = new InitialContext();
		serverName = (String)ctx.lookup("java:/comp/env/serverName");
	try{
		
	}catch(Throwable e){
		serverName = e.getMessage();
	}
	%>
	<p>serverName= "<%= serverName %>"</p>
</body>
</html>