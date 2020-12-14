<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link rel="stylesheet" href="../layui/css/layui.css">

</head>

<bod leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
	<table width="90%" border="0" cellspacing="1" cellpadding="2" align="center">

				<div class="layui-input-block">
					<a href="action/department_findAll.action" target="right" class="layui-btn layui-btn-normal">部门管理</a>
					<a href="action/employee_findAll.action" target="right" class="layui-btn layui-btn-normal" style="margin-left: 50px;">员工管理</a>
					<a href="${pageContext.request.contextPath }/jump.jsp" target="right" class="layui-btn layui-btn-normal" style="margin-left: 50px;">退出登录</a>
				</div>

	</table>
</bod>
</html>
