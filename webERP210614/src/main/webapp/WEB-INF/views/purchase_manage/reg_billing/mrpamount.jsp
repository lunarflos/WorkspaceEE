<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
a {
	text-decoration: none;
}

#wrap {
	width: 1400px;
	height: 450px;
	border: 1px solid black;
}

#searchBox {
	width: 100%;
	height: 23%;
	border: 1px solid black;
}

#button {
	margin-top: 3%;
	margin-right: 3%;
	text-align: right;
}

#search {
	margin-left: 30px;
}

#view {
	width: 1400px;
	height: 800px;
	/* overflow: scroll; */
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="searchBox">
			<table id="search">
				<tr>
					<td>소요예정일</td>
					<td colspan="2" style="width: 80px;"><input type="date"
						id="reqInput" style="width: 100%;" /></td>
					<td>~</td>
					<td><input type="date" id="reqInput" style="width: 100%;" /></td>
					<td></td>
				</tr>
			</table>
			<div id="button">
				<button>조회</button>
				<button>선택적용</button>
				<button>취소</button>
			</div>
		</div>
		<div id="view">
			<table style="width: 100%;">
				<thead align="center" style="background-color: gray">
					<td><input type="checkbox" name="content" /></td>
					<td>소요일자</td>
					<td>발주예정일</td>
					<td>품번</td>
					<td>품명</td>
					<td>규격</td>
					<td>단위</td>
					<td>소요수량</td>
				</thead>
				<c:forEach var="mrp" items="${mrpamount}">
					<tr align="center">
						<td><input type="checkbox" name="content" /></td>
						<td><a href="#">${mrp.need_date}</a></td>
						<td><a href="#">${mrp.expected_order}</a></td>
						<td><a href="#">${mrp.item_Code}</a></td>
						<td><a href="#">${mrp.item_Name}</a></td>
						<td><a href="#">${mrp.standard}</a></td>
						<td><a href="#">${mrp.unit}</a></td>
						<td><a href="#">${mrp.expected_quantity}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>