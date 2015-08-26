<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MemberShipDAOlib.*"%>
<%
Member s = new Member(0,request.getParameter("member_acc"),request.getParameter("member_pw"));
MemberShipDAO dao = new MemberShipDAOIMP();
dao.add(s);
response.sendRedirect("ADDTESTFile.jsp");
%>    
