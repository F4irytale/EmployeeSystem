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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
	<style type="text/css">

	</style>
</head>

<body>
	<table border="0" width="600px" style="margin: 0 auto;">
		<tr>
			<td align="center" style="font-size: 24px; color: #666">员工添加</td>
		</tr>
		<tr>
			<td align="right">
			    <a href="javascript:document.getElementById('saveForm').submit()" class="layui-btn"><i class="layui-icon">&#xe605;</i></a>
				&nbsp;&nbsp; 
				<a href="javascript:history.go(-1)"class="layui-btn"><i class="layui-icon">&#xe65c;</i> </a>
		   </td>
		</tr>
	</table>
	<br/>
	<br/>
	<!-- action对应一个action标签，id对应提交时的对应关系 -->
	<s:form id="saveForm" action="employee_save" method="post" namespace="/" theme="simple" >
		<table style="font-size:16px;margin: 0 auto;">
			<tr>
				<td align="right" >员工姓名：</td>
				<td ><s:textfield name="ename" class="layui-input" autocomplete="off"/></td>
				<td style="padding-left:100px;" align="right" >性别：</td>
				<td style="width:250px;">
					<div class="layui-form" style=" ">
						<div class="layui-form-item">
							<div class="layui-input-block" style="text-align: center;">
								<s:radio  list="{'男','女'}" name="sex" style=""/>
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td align="right">出生日期：</td>
				<td >
					<s:textfield name="birthday" id="test1" class="layui-input"  autocomplete="off"/>
				</td>
				<td align="right">入职日期：</td>
				<td><s:textfield name="joinDate" id="test2" class="layui-input" autocomplete="off"/></td>
			</tr>
			<tr>
				<td align="right">编号：</td>
				<td><s:textfield name="eno" class="layui-input" autocomplete="off"/></td>
				<td align="right" >部门：</td>
				<td>
					<div class="layui-form" >
						<div class="layui-form-item" style="margin-top:10px">
							<div class="layui-input-block">
								<s:select name="department.did" list="list" listKey="did" listValue="dname" headerKey="0" headerValue="--请选择--" />
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</s:form>
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script>
		layui.use('laydate', function(){
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem: '#test1' //指定元素
			});
			laydate.render({
				elem: '#test2' //指定元素
			});
		});
		layui.use('form',function(){
				const form = layui.form;
				form.render();
			});
	</script>
</body>
</html> 