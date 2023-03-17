<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Website Tin Tức</title>

<!-- Import CSS  -->
<%@ include file="/common/web/css.jsp"%>

</head>

<body class="boxed"
	data-bg-img="template/web/public/kcnew/frontend/img/bg_website.PNG">

	<!-- Import header  -->
	<%@ include file="/common/web/header.jsp"%>
        <h1>Số lượng user: ${listUsers.size()}</h1>
         <h1>Số lượng danh mục:  ${listCates.size()}</h1>
   
	<dec:body />

	<!-- Import header  -->
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Import JS  -->
	<%@ include file="/common/web/js.jsp"%>

</body>

</html>