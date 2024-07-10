<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:import url="/menu.jsp"/>
${ param.body }
</body>
</html>