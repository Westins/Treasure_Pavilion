<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<title>申请商店</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/shops/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/shops/css/home.css">

</head>
<body>
	<section class="aui-content">
		<form
			action="${pageContext.request.contextPath }/Main/InsertShops.do?userId=${userinfo.userId }"
			name="form1" method="post" enctype="multipart/form-data">
			<div style="height: 20px;"></div>
			<div class="aui-content-up">
				<div class="aui-content-up-form">
					<h2>申请店铺</h2>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商店名称 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two" name="shopsName"
							onBlur="checkna()" required id="1"> <span class="tips"
							id="divname"></span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商店LoGo <em>*</em> <span>一张即可</span>
					</label>
					<div class="aui-form-input">

						<input type="file" name="ShopsLogo" />

					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商店视频介绍 <em>*</em> <span>上传视频</span>
					</label>
					<div class="aui-form-input">
						<input type="file" name="ShopsVideoIntroduce" />
					</div>
				</div>
				<div class="aui-form-group-text">
					<h3>显示</h3>
					<p>在主页面显示您的商店视频</p>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商店描述 </label>
					<div class="aui-form-input">
						<textarea class="aui-form-control" name="shopsTextIntroduce"
							id="4" minlength="5">为您的商店进行描述</textarea>
					</div>
				</div>
			</div>
			<div class="aui-btn-default">
				<input class="aui-btn aui-btn-account" type="submit" value="保存并提交审核" onclick="add()"> 
			</div>
		</form>
	</section>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/shops/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/shops/js/up.js"></script>
	<script type="text/javascript">
		function add(){
			alert("申请成功！等待官方审核");
		}
	</script>
</body>
</html>
