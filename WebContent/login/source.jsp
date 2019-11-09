<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="shortcut icon" href="" type="image/x-icon">
<link rel="stylesheet" charset="UTF-8"
	href="${pageContext.request.contextPath }/login/css/reset.css">
<link rel="stylesheet" charset="utf-8"
	href="${pageContext.request.contextPath }/login/css/web_pop.css">
<link rel="stylesheet" charset="UTF-8"
	href="${pageContext.request.contextPath }/login/css/login.css">
</head>
<body>
	<c:if test="${source=='ophfalse' }">
		<script type="text/javascript">
			alert("改手机已被注册或该账号已经存在");
		</script>
	</c:if>
	<c:if test="${source=='yzm' }">
		<script type="text/javascript">
			alert("验证码错误");
		</script>
	</c:if>
	<div class="register_header">
		<div class="header_center clearfix">
			<div class="myfl">
				<a href="index.jsp"><img style="width: 60px;height: 60px"
					src="${pageContext.request.contextPath }/login/img/logo.jpg" /></a> <span>用户注册</span>
			</div>
			<div class="myfr">
				<a href="index.jsp">返回首页</a> <span></span> <a href="javascript:;">收藏网站</a>
				<span></span> <a href="javacript:;">注册商家账号</a> <span></span> <a
					href="demo.jsp">已有账户，直接<em>登录</em></a>
			</div>
		</div>
	</div>
	<div class="register_content clearfix"
		style="background: url('img/user_register_bag.png') no-repeat 0 138px;">
		<input type="hidden" value="" id="iserror">
		<form action="${pageContext.request.contextPath }/Main/Source.do"
			id="my_from" method="post">
			<div class="register_box myfr" style="width: 360px">
				<div class="title clearfix">
					<span class="myfl"></span>
					<h1 class="myfl">宝阁新用户注册</h1>
					<input type="hidden" value="1" name="memberType"
						id="registeruser_type"> <span class="myfr"></span>
				</div>
				<input type="text" placeholder="请输入您的昵称" name="username"
					class="username" value="" maxlength="20" />
				<p class="username_error"></p>
				<input type="text" placeholder="请输入您的账号" name="userAccount"
					class="userAccount" id="userAccount" value="" maxlength="20" />
				<p class="username_error"></p>
				<input type="password" style="color: #666;" placeholder="请输入您的密码"
					name="password" class="password" maxlength="16" value="" />
				<p class="password_error"></p>
				<input type="password" style="color: #666;" placeholder="请重复您的密码"
					name="password1" class="password_again" maxlength="16" />
				<p class="password_again_error"></p>
				<input type="text" placeholder="请输入您的邮箱" name="email" class="email"
					value="" maxlength="20" />
				<p class="username_error"></p>
				<input type="text" placeholder="请输入手机号" name="phone" maxlength="11"
					class="phone_num" value="" />
				<p class="phone_num_error"></p>
				<div class="clearfix message_code_box">
					<input type="text" class="message_code myfl" name="validCode"
						maxlength="6" placeholder="请输入短信验证码" value="" />
					<input type="button" onclick="return on()" style="display: block;width: 80px;height: 45px;padding-right: 100px;margin-left: -12px" value="获取验证码" class="message_code_btn myfr" id="send">
				</div>
				<p class="message_code_error"></p>
				<div class="my_agreement">
					<input type="checkbox" name="agreement" value="1" checked>我已仔细阅读并同意接受
					<a href="#" target="_blank">《用户使用协议》</a>
				</div>
				<p class="source_error">8</p>
				<input type="submit" class="submit_btn" value="注册">
				<!--短信的token-->
				<input type="hidden" name="token"
					value="47016a045c820bc2857e84547b11a380" id="tonkenNum">
			</div>
		</form>
	</div>
	<!--错误提示-->
	<div class="normal_pop pop_password" id="pop_load">
		<h3>提示</h3>
		<p class="error"
			style="font-size: 20px; line-height: 24px; margin: 40px 0 36px; color: #666;">注册失败，请稍后再试</p>
		<i id="true_btn" class="layui-layer-close">确定</i>
	</div>
	<div class="register_bottom">Copright &nbsp;&nbsp;2019宝阁购物商城
		&nbsp;&nbsp;湖南生机卡布奇诺组 &nbsp;&nbsp;版权所有</div>
	<script type="text/javascript">
		var wait = 60;
		function time(o) {
			if (wait == 0) {
				o.removeAttribute("disabled");
				o.value = "获取验证码";
				wait = 60;
			} else {
				o.setAttribute("disabled", true);
				o.value = "重新发送(" + wait + ")";
				wait--;
				setTimeout(function() {
					time(o)
				}, 1000)
			}
		}
		function on() {
			if (/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/== false) {
				alert("请输入有效的电话号码！");
				return false;
			}
			var phoneNum = $(".phone_num").val();
			$.ajax({
				type : "post",
				url : "../UserInfo/YZM.do?phone=" + phoneNum,
				success : function(data) {
					if (data) {
						time(document.getElementById("send"));
					} else {
						alert("验证码发送失败或用户号码错误，请重试！");
					}
				}
			})
		}
	</script>
</body>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/jquery.min.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="${pageContext.request.contextPath }/login/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/layer.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/login/js/web_method/method.js~v=2"></script>
<script type="text/javascript" charset="UTF-8"
	src="${pageContext.request.contextPath }/login/js/login_register/user_register.js~v=10"></script>
</html>

















