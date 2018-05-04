<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Web文件管理器</title>
<style type="text/css">
	h1{
		text-align: center;
	}
	tr{
		margin-bottom: 10px;
	}
</style>
</head>
<body>
	<form action="view.jsp" method="post">
		<table align="center" cellspacing="0" cellpadding="0" border="0" width="800">
			<tr>
				<td colspan="4"><h1>文件管理器</h1></td>
			</tr>
			<tr>
				<td>文件/目录浏览</td>
				<td>请输入查询路径:</td>
				<td><input type="text" name="path" id="path" value="C:/" /></td>
				<td><input type="submit" name="input" id="input" value="提交" /></td>
			</tr>
		</table>
	</form>
	
	<form action="manager.jsp" method="post">
		<table border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td>输入路径:</td>
				<td><input type="text" name="path" id="path" value="C:/" /></td>
			</tr>
			<tr>
				<td>输入目录/文件名:</td>
				<td><input type="text" name="pathname" id="pathname" value="" /></td>
			</tr>
			<tr>
				<td>创建/删除:</td>
				<td>
					<select name="createDel">
						<option value="create">创建</option>
						<option value="del">删除</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>目录/文件:</td>
				<td>
					<select name="dirFile">
						<option value="dir">目录</option>
						<option value="file">文件</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="input" id="input" value="提交" /></td>
				<td><input type="reset" name="rest" id="rest" value="重置" /></td>
			</tr>
		</table>
		
	</form>
</body>
</html>