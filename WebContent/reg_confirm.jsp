
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>請輸入驗證碼</title>
</head>
<body>

<%!String Tip ="註冊成功!請輸入驗證碼!"; %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="MemberShipDAOlib.*"%>
<%
	String Pw_1 = new String( request.getParameter("member_pw").getBytes("ISO-8859-1"), "utf-8");
	String Pw_2 = new String( request.getParameter("re_pw").getBytes("ISO-8859-1"), "utf-8");
	String fm = new String( request.getParameter("first_name").getBytes("ISO-8859-1"), "utf-8");
	String lm = new String( request.getParameter("last_name").getBytes("ISO-8859-1"), "utf-8");

	if (Pw_1.equals(Pw_2)) {
		int r;
		r = (int) (Math.random() * 100000);
		Member s = new Member(0, request.getParameter("member_acc"), Pw_1,fm,lm, r, "");
		MemberShipDAO dao = new MemberShipDAOImp();
		dao.add(s);
		response.sendRedirect("index.html");
	} else {
		Tip="兩次密碼不相同";
		response.setHeader("refresh","8;url=register.html");
	}
%>
<font color ="red" size ="28pt"><%=Tip %></font>

</body>
</html>