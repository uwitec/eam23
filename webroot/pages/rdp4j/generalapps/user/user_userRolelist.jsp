<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>userlist.html</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/rdp4j/resource/css/maincss.css" type="text/css">
  </head>
  <body class='body1'>
     	<table align="center" cellspacing="1" cellpadding="1" class="tabletitle">
	<tr height="25">
		<td class="formtitle">&nbsp;<img src="../resource/images/dots1.gif">&nbsp;当前位置：&nbsp;用户分配角色</td>
	</tr>
	<tr>
		<td valign="top" align="center">
  <table  class='table1' cellspacing="1" cellpadding="1">
  <tr>
  <th>登录编号</th>
  <th>用户名称</th>
  <th>编辑角色</th>
  </tr>
	<#list userList! as TUserBO>
		<tr>
		<td>${TUserBO.loginId}</td>
			<td>${TUserBO.username}</td>
			<td><a href="userRole_edit.do?tid=#{TUserBO.tid!}&mid=${TUserBO.mid!}">用户角色编辑</a></td>
		</tr>
	</#list>
  </table>
  </td></tr></table>
  </body>
</html>