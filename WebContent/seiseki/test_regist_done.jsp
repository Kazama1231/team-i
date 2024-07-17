<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<c:import url="../base.jsp">
 <c:param name="title">成績管理</c:param>
    <c:param name="body">
    <p style="padding-right:10px; margin-bottom: 10px; background-color: #dcdcdc; color: #111111;">${ message }</p>
    <a href="test_regist.jsp">戻る</a>
    <a href=".kamoku.jsp">成績参照</a>


</c:param>
</c:import>
