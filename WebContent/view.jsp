<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询结果</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String path = request.getParameter("path");
		if(path == null){
			path = "C:/";
		}
		File dir = new File(path);
		File file[] = dir.listFiles();
	%>
	<p><th>当前路径下的目录有：</th><br>
	<%
		for(int i = 0;i<file.length;i++){
			if(file[i].isDirectory()){
				out.print("<br>"+file[i].toString());
			}
		}
	%>
	</p>
	<p><th>当前路径下的文件有：</th><br>
	<%
		for(int i = 0;i<file.length;i++){
			if(file[i].isFile()){
				out.print("<br>"+file[i].toString());
			}
		}
	%>
</body>
</html>