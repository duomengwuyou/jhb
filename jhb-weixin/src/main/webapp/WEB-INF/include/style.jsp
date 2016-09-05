<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,user-scalable=no">
<title>Management System--<c:out value="${requestScope.title}"></c:out></title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="/css/sweetalert.css">
<style>
/*nav*/
body {
    padding: 60px 10px 0 10px;
}
.headroom {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    transition: all .2s ease-in-out;
}
.headroom--unpinned {
    top: -100px;
}
.headroom--pinned {
    top: 0;
    z-index: 9999;
}
#navbar-fixed-top{
    z-index: 999;
}
#navbar-fixed-top.nav>li.active {
    /*background-color: hsl(0, 0%, 86%);*/
    background-color: #337AB7;
}
#navbar-fixed-top.nav>li.active>a{
    color: #FFF;
}
#navbar-fixed-top.nav>li.active>a:hover{
    color: #337AB7;
}
/*注销*/
.userTab{
    position: absolute;
    top: 15px;
    right: 20px;
    color: #FFF;
}
/*去除table的footer位置*/
.fixed-table-body{
    padding-bottom: 0;
}
/*去除table下边框重复bug*/
.bootstrap-table .table{
    border-bottom: 0 none;
}
/*表单填写错误提示信息样式*/
p.error{
    margin: 0;
    color: #F00;
}
/*省略号*/
.fold{
    cursor: pointer;
    color: #337ab7;
}
.sweet-alert{
    max-height: 80%;
    overflow: auto;
}
/*.showSweetAlert .sweetalert-container{
    max-height: 50%;
    overflow: auto;
}*/
</style>