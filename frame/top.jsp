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

</head>

<body>
	<div style="display: flex; flex-direction: row; margin-left: 50px;
  justify-content: space-between;">
<%--		<div>--%>
<%--			<img src="../img/logo.jpg" alt="logo" style="width: 350px;height: 90px;">--%>
<%--		</div>--%>
		<div>
			<label style="font-size: 30px; line-height: 80px; font-weight: bold;margin-right: 200px;">欢迎您：<s:property value="#session.username" /></label>
		</div>
	</div>
</body>
</html>
