<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入驗證中......</title>
</head>
<body>

	<%!String Tip = "密碼或帳號錯誤";%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" import="MemberShipDAOlib.*"%>
	<%
		String mail = new String(request.getParameter("email").getBytes("ISO-8859-1"), "utf-8");
		String pw = new String(request.getParameter("password").getBytes("ISO-8859-1"), "utf-8");								
		if (mail.equals("") || pw.equals("")) {
			Tip = "帳號或密碼不能空白";
			response.setHeader("refresh", "8;url=register.html");
		} else {
			Boolean Ans;
			MemberShipDAO dao = new MemberShipDAOImp();
			Ans = dao.Login(mail, pw);
			if (Ans == true) {
				Tip = "登入成功!將轉至首頁";
				response.setHeader("refresh", "3;url=index.html");
			}
		}
	%>
	<font color="red" size="28pt"><%=Tip%></font>

</body>
</html>