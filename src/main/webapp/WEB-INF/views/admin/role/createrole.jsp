<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách bài viết</title>
</head>
<style>
.table-responsive {
  overflow-x: auto;
} 
</style>
<body>
	<!--wrapper-->
	<!--wrapper-->
	<div class="wrapper">
		 <div class="page-wrapper">
         
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">Phân Quyền</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="<?php   ?>"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Thêm mới quyền</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!--end breadcrumb-->

            <div class="card">
                <div class="card-body p-4">
                    <h5 class="card-title">Thêm quyền mới</h5>
                    <hr />
                    <form   method="POST" modelAttribute="role">
                        <div class="form-body mt-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="border border-3 p-4 rounded">
                                        <div class="mb-3">
                                            <label for="inputProductTitle" class="form-label">Tên quyền</label>
                                            <input type="text"   name="name" required class="form-control" id="inputProductTitle" placeholder="Nhập tên quyền muốn tạo">
                                        </div>
                                        <button class="btn btn-primary" type="submit">Thêm quyền</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
         
    </div>
		<!--end page wrapper -->
 
</body>
</html>