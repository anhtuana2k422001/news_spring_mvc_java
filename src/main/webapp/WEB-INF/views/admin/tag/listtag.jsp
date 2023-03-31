<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách từ khóa</title>
</head>
<body>
	<!--wrapper-->
	<div class="wrapper"> 
		<!--start page Content Page -->
        <div class="page-wrapper">
            <div class="page-content">
                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                    <div class="breadcrumb-title pe-3">Từ khóa</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Tất cả từ khóa</li>
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
                            <div class="ms-auto"><a href="createpost.php" class="btn btn-primary radius-30 mt-2 mt-lg-0"><i class="bx bxs-plus-square"></i>Thêm từ khóa mới</a></div>
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0">

                                <thead class="table-light">
                                    <tr>
                                        <th>Mã từ khóa</th>
                                        <th>Tên từ khóa</th>  
                                        <th>Ngày tạo</th> 
                                        <th>Ngày cập nhật</th> 
                                        <th>Chức năng</th> 
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listTagAdmin}" var="tag">
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div>
                                                        <input class="form-check-input me-3" type="checkbox" value="" aria-label="...">
                                                    </div>
                                                    <div class="ms-2">
                                                        <h6 class="mb-0 font-14">${tag.id}</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>${tag.name}</td>    
                                            <td>${tag.created_at}</td>
                                            <td>${tag.updated_at}</td> 
                                            <td>
                                                <div class="d-flex order-actions">
                                                    <a href="<c:url value='/admin/editrole/${post.id}' />" class=""><i class='bx bxs-edit'></i></a>
                                                    <a href="#" onclick="event.preventDefault(); document.querySelector('#delete_form_{{ $post->id }}').submit();" class="ms-3"><i class='bx bxs-trash'></i></a>

                                                    <form method="post" action="{{ route('admin.posts.destroy', $post) }}" id="delete_form_{{ $post->id }}">
                                                         
                                                    </form>

                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>

                                    </table>

                         </div>
                                
                        <div>
                            <?php
                            if ($page > 1) {
                                echo  "<button class='btn btn-secondary me-4  mt-2 mt-lg-0' onclick=\"location.href='?page=" . ($page - 1) . "'\">Trang trước</button>";
                            }
                            if ($page < $pages) {
                                echo "<button class='btn btn-secondary mt-2 mt-lg-0' onclick=\"location.href='?page=" . ($page + 1) . "'\">Trang sau</button>";
                            }
                            ?>
                        </div>

                    </div>
                </div>

            </div>
        </div>
	<!--end wrapper-->
</body>
</html>