<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="net.banking.bean.UserBean"%>
<%@ page import="net.banking.dao.UserDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Crud Example</title>
<style>
body {
background-color: #87CEFA
}
</style>
</head>

<body>
<%
	UserBean user = new UserBean();
%>
<%
	UserDao dao = new UserDao();
	String msg = request.getParameter("msg");
	String msg1 = request.getParameter("msg1");
%>

<!-- <p><a href="user.jsp">Add user</a></p> -->

<form method="POST" action='UserHandler' name="frmEditUser">
<input type="hidden" name="action" value="Select" />
<h3>Enter Valid UserID</h3>
UserId: <input type="text" name="userId"><br><br>
<c:out value="${msg}"/><br>
	<input type="submit" value="Submit" /><br>
</form>
<br>
<input type="submit" onclick=myFunction() value="Transaction" ${msg eq 'The Authentication is Successfull' ? '' : 'disabled' } />
<br>
<form method="POST" action='UserHandler' name="frmEditUser">
<input type="hidden" name="action" value="Transaction" />
<div id="myDIV" style="display: none">
	<h3>Do Your Transaction:</h3>
	Deposite: <input type="text" name="deposite" value=""/><br><br>
	Withdraw: <input type="text" name="withdraw" value=""/><br><br>
	<input type="submit" value="Transaction" /><br>
	</div>
</form>
<h4><p>Transaction Status:<br> <c:out value="${msg1}"/></p></h4>
<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
</body>
</html>