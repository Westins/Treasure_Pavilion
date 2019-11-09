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

<title>上架商品</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/shops/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/shops/css/home.css">

</head>
<body>
	<section class="aui-content">
		<form
			action="${pageContext.request.contextPath }/Main/InsertAddGood.do?shopsId=${shops.shopsId}"
			name="form1" method="post" enctype="multipart/form-data">
			<div style="height: 20px;"></div>
			<div class="aui-content-up">
				<div class="aui-content-up-form">
					<h2>上架商品</h2>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品名称 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two" name="goodsName"
							onBlur="checkna()" required id="1"> <span class="tips"
							id="divname"></span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品图片 <em>*</em> <span>一张即可</span>
					</label>
					<div class="aui-form-input">

						<input type="file" name="goodsImg"/>

					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品详情图 <em>*</em> <span>上传多张</span>
					</label>
					<input type="file" name="file1"/>
					<input type="file" name="file2"/>					
				</div>
				<div class="aui-form-group-text">
					<h3>显示</h3>
					<p>在主页面显示您的商品图片</p>
				</div>

				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品类型 <em>*</em>
					</label>
					<div class="aui-form-input">
						<select name="goodsTypeId">
							<c:forEach items="${GoodsTypesList }" var="gtyli">
								<option value="${gtyli.goodstypesId }">${gtyli.goodstypesName }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品价格 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two"
							name="goodsOriginalPrice" id="3" placeholder="请输入商品价格"
							onBlur="checkpsd2()" required /> <span class="tips" id="zizhi">商品价格要符合商品的价值</span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品折扣 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two"
							name="goodsDiscount" id="3" placeholder="请输入商品折扣"
							onBlur="checkpsd2()" required /> <span class="tips" id="zizhi">输入0-1之间的数</span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品型号 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two" name="goodsModel"
							id="3" placeholder="请输入商品型号" onBlur="checkpsd2()" required /> <span
							class="tips" id="zizhi">输入商品型号，其中以逗号分隔开</span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品颜色 <em>*</em>
					</label>
					<div class="aui-form-input">
						<input type="text" class="aui-form-control-two" name="goodsColor"
							id="3" placeholder="请输入商品颜色" onBlur="checkpsd2()" required /> <span
							class="tips" id="zizhi">输入商品颜色，其中以逗号分隔开</span>
					</div>
				</div>
				<div class="aui-form-group clear">
					<label class="aui-label-control"> 商品描述 </label>
					<div class="aui-form-input">
						<textarea class="aui-form-control" name="goodsTestIntroduce"
							id="4" minlength="5">为您的商品进行描述</textarea>
					</div>
				</div>
			</div>
			<div class="aui-btn-default">
				<input class="aui-btn aui-btn-account" type="submit" value="保存并提交审核">
			</div>
		</form>
	</section>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/shops/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/shops/js/up.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>
