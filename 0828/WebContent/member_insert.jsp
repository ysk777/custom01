<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
  request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {text-align: center;}
</style>
</head>
<body>
<h1>회원 등록</h1>
<form action='member_proc.jsp' method='post'>
<table border="1" style="width: 100%; height: 100%;">
  <tr>
    <td>아이디</td>
    <td><input type='text' name='p_id'size='15'></td>
  </tr> 
  <tr>   
    <td>비밀번호</td>
    <td><input type='text' name='p_pw' size='15'></td>
  </tr>
  <tr>
    <td>성명</td>
    <td><input type='text' name='c_name' size='15'></td>
  </tr>
  <tr>      
    <td>이메일</td>
    <td><input type='text' name='c_email' size='30'></td>
  </tr>
  <tr>    
    <td>연락처</td>
    <td><input type='text' name='c_tel' size='15'></td>
  </tr>
  <tr>
    <td colspan="2">
      <input type="submit" value="등록">
      <input type="button" value="조회" onclick="location.href='./custom01_list.jsp'">
    </td>
  </tr>
</table>
</form>
</body>
</html>