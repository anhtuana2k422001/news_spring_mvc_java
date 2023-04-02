<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách từ khóa</title>
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
                    <div class="breadcrumb-title pe-3">Danh mục từ khóa</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Danh mục</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->

                <div class="card">
                    <div class="card-body">
                        <div class="d-lg-flex align-items-center mb-4 gap-3">
                            <div class="position-relative">
                                <input type="text" class="form-control ps-5 radius-30" placeholder="Tìm kiếm từ khóa"> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                            </div>
                            <div class="ms-auto"><a href="{{ route('admin.posts.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0"><i class="bx bxs-plus-square"></i>Thêm bài viết mới</a></div>
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Mã bài viết</th>
                                        <th>Tên bài viết</th>
                                        <th>Mô tả</th>
                                        <th>Danh mục</th>
                                        <th>Ngày tạo</th>
                                        <th>Trạng thái</th>
                                        <th>Lượt xem</th>
                                        <th>Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <div>
                                                    <input class="form-check-input me-3" type="checkbox" value="" aria-label="...">
                                                </div>
                                                <div class="ms-2">
                                                    <h6 class="mb-0 font-14"><?php echo $post["id"] ?></h6>
                                                </div>
                                            </div>
                                        </td>
                                        <td><?php echo $post["title"] ?></td>


                                        <td><?php echo $post["excerpt"] ?></td>
                                        <td><?php $category = Category::GetCategory($post["category_id"]);

                                            echo $category["name"] ?></td>
                                        <td><?php echo $post["created_at"] ?></td>
                                        <td>
                                            <div class="badge rounded-pill <?php echo $post["approved"] == 1 ? 'text-success bg-light-success' : 'text-danger bg-light-danger' ?>p-2 text-uppercase px-3">
                                                <i class='bx bxs-circle me-1'></i><?php echo $post["approved"] == 1 ? "Đã phê duyệt" : "Chưa phê duyệt" ?>
                                            </div>
                                        </td>
                                        <td><?php echo $post["views"] ?></td>

                                        <td>
                                            <div class="d-flex order-actions">
                                                <a href="/admin/post/editpost.php?id=<?php echo $post["id"] ?>" class=""><i class='bx bxs-edit'></i></a>
                                                <a href="#" onclick="event.preventDefault(); document.querySelector('#delete_form_{{ $post->id }}').submit();" class="ms-3"><i class='bx bxs-trash'></i></a>

                                                <form method="post" action="{{ route('admin.posts.destroy', $post) }}" id="delete_form_{{ $post->id }}">
                                                </form>

                                            </div>
                                        </td>
                                    </tr>


                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>


            </div>
        </div>
       
    </div>
</body>
</html>