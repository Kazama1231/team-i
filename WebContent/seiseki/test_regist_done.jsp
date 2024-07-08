<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<c:import url="/base.jsp">
 <c:param name="title">
       成績登録完了
    </c:param>
    <c:param name="body">
    <h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">成績管理</h2>
    <label id="registrationMessage">
        <% String errorMsg = (String) request.getAttribute("error_msg");
           if (errorMsg != null) {
               out.print(errorMsg);
           } %>
    </label>

</c:param>
</c:import>

