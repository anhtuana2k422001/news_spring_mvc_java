<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Quản Trị</title>
       <!--Import Css -->
    <%@include file = "/common/admin/css.jsp" %>
</head>
<body>
    
    <!--Import Header-->
    <%@include file = "/common/admin/header.jsp" %>
    
    <!--Import Sidebar-->
    <%@include file = "/common/admin/sidebar.jsp" %>
    
    <!-- Lấy nội dung file JSP từ home.jsp từ views thong qua decorator-->
    <dec:body />
    
    <!--Import Footer--> 
    <%@include file = "/common/admin/footer.jsp" %>
    
    <!--Import switcher--> 
    <%@include file = "/common/admin/switcher.jsp"%>
  
    <%@include file="/common/admin/js.jsp"%>
</body>
</html>