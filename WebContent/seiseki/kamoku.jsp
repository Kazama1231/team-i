<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<c:import url="../base.jsp">
<c:param name="title">
        成績一覧(科目)
</c:param>
<c:param name="scripts"></c:param>
<c:param name="body">
<section class="me-4">
<h1 class="title">成績一覧(科目)</h1>
<h2 class="h3 mb-3 fw-normal bg-secondary bg-opacity-10 py-2 px-4">科目情報</h2>
<form method="get">
<div class="row border mx-3 mb-3 py-2 align-items-center rounded" id="filter">
<div class="col-4" style="background:#ffffff; padding:15px; border:1px solid #dcdcdc; border-radius:4px; word-break:break-all;">
<label class="form-th" for="student-f1-select">入学年度</label>
<select class="form-select" id="student-f1-select" name="f1">
<option value="0">------</option>
<c:forEach var="year" items="${ent_year_set}">
<option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
</c:forEach>
</select>

<label class="form-th" for="student-f2-select">クラス</label>
<select class="form-select" id="student-f2-select" name="f2">
<option value="0">------</option>
<c:forEach var="num" items="${class_num_set}">
<option value="${num}" <c:if test="${num==f2}">selected</c:if>>${num}</option>
</c:forEach>
</select>

<label class="form-th" for="student-f3-select">科目</label>
<select class="form-select" id="student-f3-select" name="f3">
<option value="0">------</option>
<c:forEach var="subject.cd" items="${subject_set}">
<option value="${subject.cd}" <c:if test="${subject.cd==f3}">selected</c:if>>${subject.cd}</option>
</c:forEach>
</select>
<div class="col-2 text-center">
<button class="btn btn-secondary" id="filter-button">検索</button>
</div>
</div>
</form>
<div class="section">
<h2>学生情報</h2>
<form action="searchStudent" method="post" class="vertical-form">
<div class="form-row" style="background:#ffffff; padding:15px; border:1px solid #dcdcdc; border-radius:4px; word-break:break-all;">
<label for="studentId">学生番号</label>
<input type="text" id="studentId" name="studentId">
<div class="col-2 text-center">
<button class="btn btn-secondary" id="filter-button">検索</button>
</div>
</div>

</form>
<c:choose>
<c:when test="${subject.cd > 0}">
<table class="table table-hover">
<tr>
<th>入学年度</th>
<th>クラス</th>
<th>学生番号</th>
<th>科目</th>
</tr>
<c:forEach var="student" items="${students}">
<tr>
<td>${student.entYear}</td>
<td>${student.classNum}</td>
<td>${student.no}</td>
<td>${student.name}</td>
<td><input type="text" name="point_${student.no}"></td>
</tr>
</c:forEach>
</table>
</c:when>
</c:choose>
</div>
</section>
</c:param>
</c:import>