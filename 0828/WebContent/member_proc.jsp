<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./ssi.jsp" %>
<%@ page import="custom_01.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="Stylesheet" type="text/css">
</head>
<!--  ********************************* -->
<body leftmargin="0" topmargin="0">
<!--  ********************************* -->

<%
  String p_id = request.getParameter("p_id");
  String p_pw = request.getParameter("p_pw");
  String c_name = request.getParameter("c_name");
  String c_email = request.getParameter("c_email");
  String c_tel = request.getParameter("c_tel");

  CustomVO vo = new CustomVO();
  vo.setP_id(p_id);
  vo.setP_pw(p_pw);
  vo.setC_name(c_name);
  vo.setC_email(c_email);
  vo.setC_tel(c_tel);

  int count =customDAO.insert(vo);

%>

  <div class='title' style='width : 20%;'>전송 결과</div>
  <div class='content'>

  <%
  if (count ==1) {
  %>
    <div class="title" style='width : 70%;'>자료 <%=count %> 건을 등록했습니다.</div>
  <%
  }else {
  %>  
    <div class="title" style='width : 70%;'>자료<%=count %> 건을 등록했습니다.</div>
  <%
  }
  %>
  </div> 

  <div class='bottom'>

  <input type="button" value="계속 전송" onclick="location.href='./member_insert.jsp'">
  <input type="button" value="목록" onclick= "location.href='./custom01_list.jsp'">
  
  </div>

<!-- ********************** -->
</body>
<!-- ********************** -->
</html>