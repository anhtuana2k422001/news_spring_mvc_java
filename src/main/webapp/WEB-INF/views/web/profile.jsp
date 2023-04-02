<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài viết</title>
    </head>
     <style>
        .form-control {
            display: block;
            width: 100%;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;   
        }
    </style>
    <body>
        <div class="wrapper">
            <div class="container">
                <div class="main--breadcrumb">
                    <div class="container">
                        <ul class="breadcrumb">
                            <li><a href="" class="btn-link"><i class="fa fm fa-home"></i>Trang chủ</a></li>
                            <li class="active"><span>Tài khoản</span></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Main Content Section Start -->
            <div class="main-content--section pbottom--30">
                <div class="container">
                    <h3 class="page-header">Thông tin cá nhân</h3>
                     <c:if test="${not empty imageUser}">
                         <h3 class="page-header">Image: ${imageUser}</h3>
                     </c:if>
                    <div class="row">
                         <c:if test="${not empty UserLogin}">
                            <form method="POST" action="<c:url value='/tai-khoan-cua-toi'/>">
                                <!-- left column -->
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="text-center">
                                        <img  id="preview_image" style="    border: 4px solid #979993; border-radius: 50%; margin: auto; background-size: cover ;  width: 180px; height: 180px;   background-image: url(<c:url value='${imageService.getConfigPathImgUser(UserLogin.id)}'/>)" alt="">
                                        <div class="mb-3">
                                            <label for="input_image" class="form-label">Ảnh đai diện</label>
                                            <input onchange="previewImage()" style="background-color: #ffffff; color: black;" name="image" type="file" class="form-control text-center center-block well well-sm" id="thumbnail">
                                             <script>
                                                function previewImage() {
                                                    var preview = document.querySelector('#preview_image');
                                                    var file = document.querySelector('#thumbnail').files[0];
                                                    var reader = new FileReader();

                                                    reader.addEventListener("load", function() {
                                                        preview.src = reader.result;
                                                    }, false);

                                                    if (file) {
                                                        reader.readAsDataURL(file);
                                                    }
                                                }
                                            </script>
                                            <!-- <p class="text-danger">{{ $message }}</p> -->
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-8 col-sm-6 col-xs-12">
                                    <div class="form-body mt-4">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="border border-3 p-4 rounded">

                                                    <div style="margin-bottom: 30px;" class="mb-3">
                                                        <label for="input_name" class="form-label">Họ Tên</label>
                                                        <input name="name" type="text" class="form-control" id="input_name" value="${UserLogin.name}">
                                                        <!-- <p class="text-danger">{{ $message }}</p> -->
                                                    </div>

                                                    <div style="margin-bottom: 30px;" class="mb-3">
                                                        <label for="input_email" class="form-label">Email</label>
                                                        <input name="email" type="email" class="form-control" id="input_email" value='${UserLogin.email}'>
                                                        <!-- <p class="text-danger">{{ $message }}</p> -->
                                                    </div>

                                                    <button class="btn btn-primary" type="submit">Cập nhật</button>

                                                    <a class="btn btn-danger" href=" <c:url value="/trang-chu" />">Quay lại</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>   
    </body>
</html>