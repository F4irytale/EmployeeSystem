<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎注册</title>
    <style>
        ul{
            list-style-type: none;
        }

        .container{
            width: 300px;
            background-color: #90a4ae;
            text-align: center;
            margin: 50px auto;
            padding: 30px;
            height: 500px;
            border-radius: 8px;

        }
        .text{

            font-size: 30px;

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
        }
        body{
            background-color: #fafafa;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
</head>
<body>
<div>

    <div class="container">
        <s:form action="admin_register" method="post" namespace="/" >
        <div class="layui-form">
            <label class="text">欢迎注册</label>
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
                    <input type="submit" class="layui-btn layui-btn-primary" value="注册">
                    <a href="index.jsp" class="layui-btn layui-btn-warm">返回</a>
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