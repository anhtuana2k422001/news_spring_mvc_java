<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài viết</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="colorlib-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 categories_col">
                            <div class="row">
                                    <c:if test="${listCategory.size() == 0}">
                                            <p class="lead">Không có danh mục tin tức nào.</p>
                                    </c:if>
                                <c:forEach var="category" items="${listCategory}">
                                     <c:if test="${category.name ne 'Chưa phân loại'}">
                                    <div class="col-md-3">
                                        <div class="block-21 d-flex animate-box post">
                                            <div class="text">
                                                <h3 class="heading"><a href="<c:url value='/chuyen-muc/${category.slug}'/>">${category.name}</a></h3>
                                                <div class="meta">
                                                    <div><a class="date" href="#"><span class="icon-calendar"></span>${category.created_at}</a></div>
                                                    <div><a href="#"><span class="icon-user2"></span>${userService.getUserById(category.user_id).name} </a></div>
                                                    <div class="posts-count"><a href="javascipt:;"><span class="icon-tag"></span>${postService.listPostCategory(category.id).size()}</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                     </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
    </body>
</html>