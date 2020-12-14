<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
	<head>
	<meta charset="utf-8">
	<title>首页登陆</title>
	<style>
		ul{
			list-style-type: none;
		}

		.container{
			width: 300px;
			background-color: #5598B7;
			text-align: center;
			margin: 20px auto;
			padding: 30px;
			height: 500px;
			border-radius: 8px;

		}
		.text{

			font-size: 30px;
			color: #f2f2f2;
			line-height: 50px;
		}
		.layui-form{
			margin-top: 50px;
		}
		.layui-form-item{
			margin-left: -50px;
		}
		.layui-btn-primary{
			margin-left: -40px;
		}
		.title{
			width: 400px;
			margin: 0 auto;
			margin-top: 20px;
		}
		body{
				background-color: #fafafa;
		}

	</style>
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
	</head>
		<body>
<div class="circle">
	<div class="title">
		<label style="font-size: 50px;">员工管理系统登录</label>
	</div>
		<div class="container">
		<s:form action="admin_login" method="post" namespace="/" >
			<div class="layui-form">	
				<label class="text">欢迎登录</label>
					<div class="layui-form-item">
							<label class="layui-form-label">用户名</label>
								<div class="layui-input-block">
									<input name="username" type="text" class="layui-input">
								</div>
					</div>
					<div class="layui-form-item">
							<label class="layui-form-label">密码</label>
								<div class="layui-input-block">
									<input name="password" type="password" class="layui-input" placeholder="请输入密码">
								</div>
					</div>
					  <div class="layui-form-item">
			    			<div class="layui-input-block">
							<input type="submit" class="layui-btn layui-btn-primary" value="现在登录">
							<a href="register.jsp" class="layui-btn layui-btn-danger">马上注册</a>
							
						</div>
					</div>
				</div>
			<h3><s:actionerror/></h3>
				<!-- 显示错误信息 -->
			</div>
		</s:form>
	
	</div>
</div>
	</body>
</html>