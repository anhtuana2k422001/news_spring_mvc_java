<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách danh mục</title>
<style>
.imageuploadify {
	margin: 0;
	max-width: 100%;
}
</style>
<script
	src="https://cdn.tiny.cloud/1/ay1wga320sbuvneqpq9at398v0s3xkpr02tl89arjb1ncbtb/tinymce/6/tinymce.min.js"
	referrerpolicy="origin"></script>
</head>
<body>
	<!--wrapper-->
	 <div class="wrapper">
         

        <!--start page Content Page -->
        <div class="page-wrapper">
            <div class="page-content">
                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                    <div class="breadcrumb-title pe-3">Danh mục bài viết</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Sửa danh mục</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->

                <div class="card">
                    <div class="card-body p-4">
                        <h5 class="card-title">Sửa danh mục : ${categoryDetail.name}</h5>
                        <hr />
                        <form  method="POST">
                            <div class="form-body mt-4">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="border border-3 p-4 rounded">
                                            <div class="mb-3">
                                                <label for="inputProductTitle" class="form-label">Tên danh mục</label>
                                                <input type="text" value='${categoryDetail.name}' name="name" required class="form-control" id="inputProductTitle" placeholder="Nhập tiêu đề bài viết">
                                            </div>

                                            <div class="mb-3">
                                                <label for="inputProductTitle" class="form-label">Slug - danh mục</label>
                                                <input type="text" value='${categoryDetail.slug}' name="slug" required class="form-control" id="inputProductTitle" placeholder="Nhập slug">
                                            </div>

                                            <button class="btn btn-primary" type="submit">Sửa danh mục</button>

                                            <a class="btn btn-danger" onclick="event.preventDefault(); document.getElementById('delete_category_{{ $category->id }}').submit();" href="#">Xóa danh mục</a>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>

                        <form id="delete_category_{{ $category->id }}" action="{{ route('admin.categories.destroy', $category) }}" method="post">
                        </form>
                    </div>
                </div>
            </div>
        </div>
         
    </div>
		<!--end page wrapper -->
</body>
</html>