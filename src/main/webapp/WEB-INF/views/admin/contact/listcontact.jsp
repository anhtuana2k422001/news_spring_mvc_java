<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách phân quyền</title>
</head>
<body>
	 <!--start page Content Page -->
        <div class="page-wrapper">
            <div class="page-content">
                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                    <div class="breadcrumb-title pe-3">Liên hệ</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Tất cả liên hệ</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->

                <div class="card">
                    <div class="card-body">
                        <div class="d-lg-flex align-items-center mb-4 gap-3">
                            <div class="position-relative">
                                <input type="text" class="form-control ps-5 radius-30" placeholder="Tìm kiếm liên hệ"> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                            </div>
                           
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0">

                                <thead class="table-light">
                                    <tr>
                                        <th>Mã liên hệ</th>
                                        <th>Tên người liên hệ</th>
                                        <th>Họ người liên hệ</th>
                                        <th>Email</th>
                                        <th>Tiêu đề</th>
                                        <th>Nội dung</th>
                                        <th>Ngày gửi</th>
                                        <th>Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listContactAdmin}" var="contact">
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div>
                                                        <input class="form-check-input me-3" type="checkbox" value="" aria-label="...">
                                                    </div>
                                                    <div class="ms-2">
                                                        <h6 class="mb-0 font-14">${contact.id}</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>${contact.first_name}</td>
                                            <td>${contact.first_name}</td>
                                            <td>${contact.email}</td>
                                            <td>${contact.subject}</td>
                                            <td>${contact.subject}</td>
                                             
                                            <td>${contact.created_at}</td> 
                                            <td>
                                                <div class="d-flex order-actions">
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
                           
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <!--end page wrapper -->
       
</body>
</html>