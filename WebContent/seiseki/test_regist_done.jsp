<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<c:import url="/base.jsp">
 <c:param name="title">成績管理</c:param>
    <c:param name="body">
    <p>${ message }</p>
    <a link=".test_regist.jsp">戻る</a>
    <a link=".seiseki.jsp">成績参照</a>


</c:param>
</c:import>
