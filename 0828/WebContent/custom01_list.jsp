<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ include file="./ssi.jsp"%>  
 <%@ page import="custom_01.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="Stylesheet" href="../css/style.css" type="text/css" />
</head>
<body leftmargin="0" topmargin="0">
  <%
  ArrayList<CustomVO> list = customDAO.list();
  %>
<h3>회원목록조회</h3>
<hr>
  <table border="1">
    <tr>
      <th class="th">아이디</th>
      <th class="th">회원이름</th>
      <th class="th">이메일</th>
      <th class="th">연락처</th>
    </tr>
    <%
    	for (int index = 0; index < list.size(); index++) {
    		CustomVO vo = list.get(index);
    %>
    <tr>
      <td class="td"><%=vo.getP_id()%></td>
      <td class="td"><%=vo.getC_name()%></td>
      <td class="td"><%=vo.getC_email()%></td>
      <td class="td"><%=vo.getC_tel()%></td>
    </tr>
    <%
    	}
    %>
  </table>
  <div class="bottom">
    <button type="button" onclick="location.href='./member_insert.jsp'">등록</button>
  </div>
</body>
</html>