<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="css/index_work.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

	function addstr(){
		$.post('add.do',$("form").serialize(),function(obj){
			if(obj==0){
					alert("请输入字符");
				}
			})
		}

</script>
<body>
	<form action="add.do" method="post">
		<textarea rows="10" cols="10" name="str"></textarea><br>
		<input type="button" value="提交" onclick="addstr()">
	</form>

</body>
</html>