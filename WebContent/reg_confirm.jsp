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

		response.sendRedirect("checkout.html");
	}
%>
