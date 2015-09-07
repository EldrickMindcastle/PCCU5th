<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.ArrayList,java.util.Iterator"%>
<jsp:useBean id='additem' scope='session'
	class='MemberShipDAOlib.Itemlist' />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>use JavaBean</title>
</head>
<body>
	<%

  ArrayList<String> A = new ArrayList<String>();
  //additem.product_id.add(PID) PID=productID
	
 //ADD TEST LOOP
  for (int i=1;i<10;i++){
  String PID="ABC123";
  additem.product_id.add(PID);
  }
  
  A = additem.getlist();
 
  // print all productID in cart
  for ( Object obj:A){
  System.out.println(obj);
  		}
  %>
</body>
</html>