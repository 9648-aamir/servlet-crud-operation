<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h5>Welcome to Servlet Class</h5>

<%for(int i=0;i<=5;i++){%>

	<h5>hi</h5>
	
	<h5 style="color:fuchsia;"><%out.print(i);%></h5>
	
	<h6 style="color: olive;"><%=i%></h6>
	
<%}%>

<%!
public int addTwoNumber(int a,int b){
	
	return a+b;
}
%>

<% 
int sum=addTwoNumber(123, 123);
out.print(sum);
%>


</body>
</html>