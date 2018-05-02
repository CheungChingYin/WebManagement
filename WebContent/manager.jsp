<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String path  = request.getParameter("path");
		String pathname = request.getParameter("pathname");
		String createDel = request.getParameter("createDel");
		String dirFile = request.getParameter("dirFile");
		File file = new File(path,pathname);
		
		if(createDel.equals("create") && dirFile.equals("dir")){
			out.print(pathname+"目录是否创建成功:"+file.mkdir());
			
		}else if(createDel.equals("create") && dirFile.equals("file")){
			if(!file.exists()){
				file.createNewFile();
				out.print(pathname+"文件是否创建成功:True");
			}else{
				out.print(pathname+"文件是否创建成功:False");
			}
			
		}else if(createDel.equals("del") && dirFile.equals("dir")){
			boolean b1=file.delete();
			out.print(pathname+"目录是否删除成功:"+b1);
		}else if(createDel.equals("del") && dirFile.equals("file")){
			boolean b1=file.delete();
			out.print(pathname+"文件是否删除成功:"+b1);
		}
	%>

</body>
</html>