<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:param name="title">
       得点管理システム
    </c:param>
    <c:param name="scripts"></c:param>

    <c:param name="content">
        <section class="me-4">
            <h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4">成績管理</h2>
            <from method="get">
            <div class="row border mx-3 mb-3 py-2 align-items-center rounded" id="filter"></div>
                <div class="col-4">
                    <th class="form-th" for="student-f1-select">入学年度</th>
                    <select class="form-select" id="student-f1-select" name="f1">
                        <option value="0">------</option>
                        <c:forEach var="year" items="${ent_year_set}">
                            <option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
                        </c:forEach>
                   </select>
               </div>
               <div class="col-4">
                    <th class="form-th" for="student-f2-select">クラス</th>
                    <select class="form-select" id="student-f2-select" name="f2">
                        <option value="0">------</option>
                        <c:forEach var="num" items="${class_num_set}">
                            <option value="${num}" <c:if test="${num==f2}">selected</c:if>>${num}</option>
                        </c:forEach>
                   </select>
               </div>
               <div class="col-4">
                    <th class="form-th" for="student-f3-select">科目</th>
                    <select class="form-select" id="student-f3-select" name="f3">
                        <option value="0">------</option>
                        <c:forEach var="subject.cd" items="${subject_set}">
                            <option value="${subject.cd}" <c:if test="${subject.cd==f3}">selected</c:if>>${subject.cd}</option>
                        </c:forEach>
                   </select>
               </div>
               <div class="col-4">
                    <th class="form-th" for="student-f4-select">回目</th>
                    <select class="form-select" id="student-f4-select" name="f4">
                        <option value="0">------</option>
                        <c:forEach var="num" items="${num_set}">
                            <option value="${num}" <c:if test="${num==f4}">selected</c:if>>${num}</option>
                        </c:forEach>
                   </select>
               </div>
               <div class="col-2 text-center">
               <button class="btn btn-secondary" id="filter-button">検索</button>
               </div>
              </from>
         </section>
     </c:param>





