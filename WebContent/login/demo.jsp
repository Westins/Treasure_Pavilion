<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="shortcut icon" href=""
	type="${pageContext.request.contextPath }/login/image/x-icon">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/login/css/reset.css">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/login/css/reg.css">
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/jquery-2.1.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/login/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/login/js/bootstrap.min.js"></script>
</head>
<body>
	<c:if test="${login=='uidFlase' }">
		<script type="text/javascript">
			alert("该账号已被封禁，请联系官方进行解封");
		</script>
	</c:if>
	<c:if test="${login=='pwdFlase' }">
		<script type="text/javascript">
			alert("账号和密码错误");
		</script>
	</c:if>
	<div class="login_header">
		<div class="header_center clearfix">
			<div class="myfl">
				<a href="index.html"><img
					src="${pageContext.request.contextPath }/login/img/logo.png"  style="width: 60px;height: 60px"/></a> <span>欢迎登录</span>
			</div>
			<div class="myfr">
				<a href="index.html">返回首页</a><span></span><a href="#"
					class="collection_web">收藏网站</a>
			</div>
		</div>
	</div>
	<div class="login_content clearfix">
		<form action="${pageContext.request.contextPath }/Main/Login.do?"
			method="post">
			<input type="hidden" name="memberType" id="parameter" value="1" />
			<div class="login_box myfr">
				<p class="tabchange clearfix" style="background: #d3d3d3">
					<span class="myfl sign_select"
						style="color: black; font-weight: bold;" id="usertype">用户登录</span>
				</p>
				<p class="system_error"></p>
				<input type="text" name="userAccount" value="" class="required"
					placeholder="手机号/用户名" id="userAccount" />
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp; <span id="spanuid"></span>
				</p>
				<input type="password" class="required" placeholder="登录密码"
					id="userPwd" name="userPwd" maxlength="21" value="" />
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp; <span id="result_pwd"></span>
				</p>
				<p class="forget_password clearfix">
					<a href="#" class="myfr">忘记密码？</a>
				</p>
				<input type="submit" id="submit" onclick="return checkForm()"
					value="立即登录" class="submit_btn">
				<p class="entry_mode clearfix">
					<span class="myfl"> 还没有账号？ </span> <a href="source.jsp"
						class="myfr"><em></em> <i>快速注册</i>
					</a>
				</p>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$(function() {
			$("input[name='userAccount']").focus(function() {
				$('#spanuid').hide();
			});
			$("input[ name='userPwd']").focus(function() {
				$('#result_pwd').hide();
			});
		});
		function checkForm() {
			var uid = $(" input[ name='userAccount']").val();
			var pwd = $(" input[ name='userPwd' ]").val();
			if (uid.length <= 0) {
				$("#spanuid").html("<font color='red'>用户名为空</font>");
			}
			if (pwd.length <= 0) {
				$("#result_pwd").html("<font color='red'>密码不能为空</font>");
				return false;
			}
			return true;
		}
	</script>
	<div class="register_bottom">Copright &nbsp;&nbsp;2017宝阁购物商城
		&nbsp;&nbsp;湖南生机卡布奇诺组 &nbsp;&nbsp;版权所有</div>
</body>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/web_method/method.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/login_register/login.js~v=1"></script>
</html>



















