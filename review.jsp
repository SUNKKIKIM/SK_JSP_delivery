<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<script type="text/javascript">
	function review()
	{
		alert("주문메뉴 : " + document.gradeForm.menu.value + "\n" + "평점 : " + document.gradeForm.grade.value + "\n" 
				+ "리뷰내용 : " + document.gradeForm.Review.value);
	}
</script>
</head>
<body>
	Home > 리뷰 작성
	<hr>
	<form name = "gradeForm">
		주문 메뉴 : <br>
		<input type = "text" name = "menu" size = "30"><br><br>
		평점 : <hr>
		<input type = "radio" name = "grade" value = "★★★★★"> ★★★★★ <br>
		<input type = "radio" name = "grade" value = "★★★★☆"> ★★★★☆ <br>
		<input type = "radio" name = "grade" value = "★★★☆☆"> ★★★☆☆ <br>
		<input type = "radio" name = "grade" value = "★★☆☆☆"> ★★☆☆☆ <br>
		<input type = "radio" name = "grade" value = "★☆☆☆☆"> ★☆☆☆☆ <br>
		<hr>
		리뷰 작성 : <br>
		<textarea name = "Review" cols="50" rows="3">
		</textarea>
		<hr>&nbsp;&nbsp;
		<input type = "submit" value = "리뷰달기" onclick = "review()">&nbsp;
		<input type = "reset" value = "다시작성">
	</form>
</body>
</html>