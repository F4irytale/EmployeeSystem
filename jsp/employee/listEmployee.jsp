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
</head>
<body>
	<table border="0" style="margin: 0 auto; width: 800px;" >
		<tr>
			<td align="center" style="font-size: 24px; color: #666">员工管理</td>
		</tr>
		<tr>
			<td align="right">
				<button type="button" class="layui-btn layui-btn-radius">
					<a href="employee_goAddEmployee.action" class="layui-icon" style="color: white">&#xe608;&nbsp;添加</a>
				</button>
			</td>
		</tr>
	</table>
	<br />
	<table cellspacing="0" border="1" class="layui-table" lay-skin="line" style="margin: 0 auto; width: 1000px;">
		<thead>
			<tr>
				<th width="300" style="text-align: center;">员工编号</th>
				<th width="300" style="text-align: center;">员工姓名</th>
				<th width="100" style="text-align: center;">性别</th>
				<th width="500" style="text-align: center;">出生日期</th>
				<th width="500" style="text-align: center;">入职时间</th>
				<th width="300" style="text-align: center;">所在部门</th>
				<th width="300" style="text-align: center;">修改</th>
				<th width="300" style="text-align: center;">删除</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="e">
				<tr>
					<td align="center"><s:property value="#e.eno" /></td>
					<td align="center"><s:property value="#e.ename" /></td>
					<td align="center"><s:property value="#e.sex" /></td>
					<td align="center"><s:date format="yyyy-MM-dd" name="#e.birthday" /></td>
					<td align="center"><s:date format="yyyy-MM-dd" name="#e.joinDate"/></td>
					<td align="center"><s:property value="#e.department.dname" /></td>
					<td align="center">
					    <a class="layui-btn layui-btn-radius" href="employee_findById.action?eid=<s:property value="#e.eid"/>">
							<i class="layui-icon">&#xe642;</i>
					    </a>
					</td>
					<td align="center">
					    <a class="layui-btn layui-btn-radius layui-btn-danger" href="employee_delete.action?eid=<s:property value="#e.eid"/>">
							<i class="layui-icon">&#xe640;</i>
					    </a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br/>
		<table border="0" cellspacing="0" cellpadding="0" style="margin: 0 auto; width: 800px;">
		<tr>
			<td align="right">
			<span>
			     第<s:property value="currPage" />/<s:property value="totalPage" />页
			</span>
			&nbsp;&nbsp; 
			<span>
			    总记录数：<s:property value="totalCount" />&nbsp;&nbsp;
			    每页显示:<s:property value="pageSize" /></span>&nbsp;&nbsp; 
			<span>
			   <s:if test="currPage != 1">
					<a class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary" href="employee_findAll.action?currPage=1">首页</a>&nbsp;&nbsp;
                    <a class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary" href="employee_findAll.action?currPage=<s:property value="currPage-1"/>">上一页</a>&nbsp;&nbsp;
               </s:if> 
               <s:if test="currPage != totalPage">
					<a class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary" href="employee_findAll.action?currPage=<s:property value="currPage+1"/>">下一页</a>&nbsp;&nbsp;
                    <a class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary" href="employee_findAll.action?currPage=<s:property value="totalPage"/>">尾页&nbsp;<s:property value="totalPage"/></a>&nbsp;&nbsp;
               </s:if> 
            </span>
            </td>
		</tr>
	</table>
</body>
</html>