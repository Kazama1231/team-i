<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${ param.title }</title>
<style>
	#container{
		width: 100%;
		height: 600px;
		display: flex;
		flex-direction: row;
	}
	#sidebar{
  		box-sizing: border-box;
		width: 15%;
		padding-left: 1rem;
		border-right: solid 1px black;
	}
	#content{
  		box-sizing: border-box;
		width: 85%;
		padding-top: 1rem;
		padding-left: 2rem;
	}
</style>
</head>
<body>

	<div id="container">
		<div id="sidebar">
			<a href="menu">メニュー</a><br>
			<a href="all">学生管理</a><br>
			<label>成績管理</label>
			<ul>
				<li><a href="all">成績登録</a></li>
				<li><a href="insert">成績参照</a></li>
			</ul>
			<a href="all">科目管理</a>
		</div>
		<div id="body">${ param.body }</div>
	</div>

</body>
</html>