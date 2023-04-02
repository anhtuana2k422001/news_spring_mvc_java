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
                                <input type="text" class="form-control ps-5 radius-30" placeholder="Tìm kiếm tù khóa"> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Mã từ khóa</th>
                                        <th>Tên từ khóa</th>
                                        <th>Xem chi tiết</th>
                                        <th>Ngày tạo</th>
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
                                            <td>
                                                <a class="btn btn-primary btn-sm" href="<c:url value='/admin/editpost/${tag.id}' />">Chi tiết bài viết</a>
                                            </td>
                                            <td>${tag.created_at}</td>

                                            <td>
                                                <div class="d-flex order-actions">
                                                    <a href="#" onclick="event.preventDefault(); document.querySelector('#delete_form_{{ $tag->id }}').submit();" class="ms-3"><i class='bx bxs-trash'></i></a>

                                                    <form method="post" action="{{ route('admin.tags.destroy', $tag) }}" id="delete_form_{{ $tag->id }}">
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
         
    </div>
    <!--end wrapper-->
</body>
</html>