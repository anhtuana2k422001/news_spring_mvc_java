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
		<!--start page Content Page -->
		 <div class="page-wrapper">
         
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">Bài viết</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Thêm mới bài viết</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!--end breadcrumb-->

            <div class="card">
                <div class="card-body p-4">
                    <h5 class="card-title">Thêm bài viết mới</h5>
                    <hr />
                    <form method="POST" modelAttribute="post"  >
                        <div class="form-body mt-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="border border-3 p-4 rounded">
                                        <div class="mb-3">
                                            <label for="inputProductTitle" class="form-label">Tiêu đề bài viết</label>
                                            <input type="text" name="title" class="inputPostTitle form-control" id="inputProductTitle" placeholder="Nhập tiêu đề bài viết">



                                        </div>

                                        <div class="mb-3">
                                            <label for="inputProductTitle" class="form-label">Slug - liên kết</label>
                                            <input type="text" name="slug" class="slugPost form-control" id="inputProductTitle" placeholder="Nhập slug">



                                        </div>

                                        <div class="mb-3">
                                            <label for="inputProductDescription" class="form-label">Mô tả</label>
                                            <textarea name="excerpt" class="form-control" id="inputProductDescription" rows="3"></textarea>


                                            <!-- Hiển thị thông báo lỗi -->

                                        </div>

                                        <div class="mb-3">
                                            <label for="inputProductTitle" class="form-label">Danh mục bài viết</label>
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="p-3 rounded">
                                                        <div class="mb-3">
                                                            <select name="category_id" class="single-select">
                                                                <option value=" ">Chọn danh mục bài viết</option>
                                                                <?php
                                                                $cates = Category::ListCategorie();
                                                                foreach ($cates as $item) {
                                                                    echo "<option value=" . $item["id"] . ">" . $item["name"] . "</option>";
                                                                }
                                                                ?>
                                                            </select>
                                                            <!-- Hiển thị thông báo lỗi -->

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Từ khóa</label>
                                            <input type="text" class="form-control" name="tags" data-role="tagsinput">
                                        </div>

                                         
                                        <div class="mb-3">
                                            <label for="inputProductDescription" class="form-label">Hình ảnh bài viết</label>
                                            <input id="thumbnail" name="thumbnailimg" type="file" id="file" onchange="previewImage()">
                                            <img id="preview_image" src="" alt="" width="200">
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


                                        </div>

                                        <div class="mb-3">
                                            <label for="inputProductDescription" class="form-label">Nội dung bài viết</label>
                                            <textarea name="body" class="form-control" id="inputProductDescription" rows="3"></textarea>


                                            <!-- Hiển thị thông báo lỗi -->


                                        </div>

                                        <button class="btn btn-primary" type="submit" name="btnsubmit">Thêm bài viết</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
		<!--end page wrapper -->
		<!--end page wrapper -->


		<!--end wrapper-->
</body>
</html>