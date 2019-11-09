<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的个人信息</title>
<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 88);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 55%;
	height: 55%;
	padding: 20px;
	border: 10px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}
</style>
<!--图标样式-->
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/userInfo/css/style.css">


</head>

<body>

	<h2>我的信息</h2>
	<div class="container" id="container">
		<div class="form-container sign-up-container">
			<form action="#">
				<h1>编辑 | 修改</h1>
				<div class="social-container">
					<img src="${pageContext.request.contextPath }/img/head.jpg"
						style="width: 100px; height: 100px">
				</div>
				<input type="text" value="${userinfo.userName }" />
				<button onclick="gaiPwd()">修改密码</button>
				<br>
				<div style="display: none" id="pwd">
					<input type="email" value="旧密码 " /> <input type="text" value="新密码" />
					<input type="email" value="重复新密码" />
				</div>
				<button>确认修改</button>
			</form>
		</div>
		<div class="form-container sign-in-container">
			<form action="#">
				<h1>我的信息</h1>
				<div class="social-container">
					<img src="${pageContext.request.contextPath }/img/head.jpg"
						style="width: 100px; height: 100px">
				</div>
				<span style="font-size: 16px">${userinfo.userName }</span> <br>
				<span style="font-size: 13px">微信余额: &ensp;
					${userinfo.userWallet }元 &ensp;|| &ensp;支付宝余额:
					&ensp;${userinfo.userPayTreasureWallet }元</span> <br> <input
					type="text" value="${userinfo.userAccount }" readonly="readonly" />
				<input type="text" value="${userinfo.userPhone }"
					readonly="readonly" />
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>查看我的信息！</h1>
					<p>欢迎回来</p>
					<button class="ghost" id="signIn">查看</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>编辑我的个人信息</h1>
					<p>。。。。</p>
					<button class="ghost" id="signUp">编辑</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ---------------- -->
	<!-- ---------------- -->
	<script src="${pageContext.request.contextPath }/userInfo/js/index.js"></script>
	<script
		src="${pageContext.request.contextPath }/userInfo/js/jquery-2.1.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/userInfo/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('#exampleModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
		})
	</script>
	<script type="text/javascript">
		$(function() {
		})
		function openDialog() {
			document.getElementById('light').style.display = 'block';
			document.getElementById('fade').style.display = 'block'
		}
		function closeDialog() {
			document.getElementById('light').style.display = 'none';
			document.getElementById('fade').style.display = 'none'
		}
		function gaiPwd(){
			document.getElementById('pwd').style.display = 'block';
		}
	</script>
</body>
</html>
