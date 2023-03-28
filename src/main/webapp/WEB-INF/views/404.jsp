<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404</title>
    </head>
    <body>
        <div class="wrapper">
            <!-- Main Content Section Start -->
            <div class="main-content--section pbottom--30">
                <div class="container">
                    <div class="row">
                        <div class="cold-md-8 offset-md-2 text-center">
                            <h1 style="font-size: 162px; color: #179ea8; font-weight: bold;">404</h1>
                            <h2 class="h2">Không tìm thấy đường dẫn này</h2>
                            <p>Chúng tôi xin lỗi, trang bạn yêu cầu có thể được tìm thấy. Vui lòng quay lại trang chủ.</p>
                            <a href="<c:url value='/trang-chu' />" class="btn btn-primary">Quay lại trang chủ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>