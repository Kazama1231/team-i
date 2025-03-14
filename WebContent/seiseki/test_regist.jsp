<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<c:import url="../base.jsp">
    <c:param name="title">
       成績管理一覧
    </c:param>
    <c:param name="scripts"></c:param>

    <c:param name="body">
        <section class="me-4" style="margin: 0px 15; npadding: 20px; width: 1000px; height: 200px;">
            <h2 class="h3 mb-3 fw-norma bg-secondary bg-opacity-10 py-2 px-4"style="padding-right:10px; margin-bottom: 10px; background-color: #dcdcdc; color: #111111;">成績管理</h2>
            <from method="get">
            <div class="row border mx-3 mb-3 py-2 align-items-center rounded" id="filter"></div>
                <div class="col-4" style="background:#ffffff; padding:15px; border:1px solid #dcdcdc; border-radius:4px; word-break:break-all;">
                    <th class="form-th" for="student-f1-select" >入学年度</th>
                    <select class="form-select" id="student-f1-select" name="f1" style="border:1px solid #dcdcdc; border-radius:3px; padding:4px; margin: 0px 3;">
                        <option value="0">---------</option>
                        <c:forEach var="year" items="${ent_year_set}">
                            <option value="${year}" <c:if test="${year==f1}">selected</c:if>>${year}</option>
                        </c:forEach>
                   </select>

                    <th class="form-th" for="student-f2-select">クラス</th>
                    <select class="form-select" id="student-f2-select" name="f2" style="border:1px solid #dcdcdc; border-radius:3px; padding:4px; margin: 0px 3;">
                        <option value="0">--------</option>
                        <c:forEach var="num" items="${class_num_set}">
                            <option value="${num}" <c:if test="${num==f2}">selected</c:if>>${num}</option>
                        </c:forEach>
                   </select>

                    <th class="form-th" for="student-f3-select">科目</th>
                    <select class="form-select" id="student-f3-select" name="f3" style="border:1px solid #dcdcdc; border-radius:3px; padding:4px; margin: 0px 3;">
                        <option value="0">--------</option>
                        <c:forEach var="subject.cd" items="${subject_set}">
                            <option value="${subject.cd}" <c:if test="${subject.cd==f3}">selected</c:if>>${subject.cd}</option>
                        </c:forEach>
                   </select>

                    <th class="form-th" for="student-f4-select">回数</th>
                    <select class="form-select" id="student-f4-select" name="f4" style="border:1px solid #dcdcdc; border-radius:3px; padding:4px; margin: 0px 3;">
                        <option value="0">--------</option>
                        <c:forEach var="num" items="${num_set}">
                            <option value="${num}" <c:if test="${num==f4}">selected</c:if>>${num}</option>
                        </c:forEach>
                   </select>

               <button class="btn btn-secondary" id="filter-button" style="background-color: #555555; color:#ffffff; border-radius:4px">検索</button>
               </div>
              </from>

              <c:choose>
                  <c:when test="${subject.cd()>0}">
                      <h2>科目:${subject.cd()}回目</h2>
                      <table class="table table-hover">
                           <tr>
                               <th>入学年度</th>
                               <th>クラス</th>
                               <th>学生番号</th>
                               <th>氏名</th>
                               <th>点数</th>
                           </tr>
                           <c:forEach var="student" items="${students}">
                               <tr>
                                   <td>${student.entYear}</td>
                                   <td>${student.classNum}</td>
                                   <td>${student.no}</td>
                                   <td>${student.name}</td>
                                   <td><input type="text" name="point_${学生番号}"></td>
                                   <button><input type="button" value="登録して終了"></button>

                           </c:forEach>
                        </table>
                    </c:when>
               </c:choose>

         </section>
     </c:param>

</c:import>







