<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- 导航栏 -->
<ul id="navbar-fixed-top" class="nav navbar-nav navbar-inverse">
    <c:choose>
        <c:when test="${requestScope.nowPage == 'index' || requestScope.nowPage == '/'}">
            <li class="active"><a href="/">首页</a></li>
        </c:when>
        <c:otherwise>
            <li><a href="/">首页</a></li>
        </c:otherwise>
    </c:choose>
    
    <c:choose>
        <c:when test="${requestScope.nowPage == 'import'}">
            <li class="active"><a href="/import/page">数据导入</a></li>
        </c:when>
        <c:otherwise>
            <li><a href="/import/page">数据导入</a></li>
        </c:otherwise>
    </c:choose>
    
    <c:choose>
        <c:when test="${requestScope.nowPage == 'datadeal'}">
            <li class="active"><a href="/datadeal/page">数据汇总</a></li>
        </c:when>
        <c:otherwise>
            <li><a href="/datadeal/page">数据汇总</a></li>
        </c:otherwise>
    </c:choose>
    
    <span class="userTab">欢迎，<c:out value="${sessionScope.userName}"></c:out>&nbsp;&nbsp;<a type="button" class="btn btn-default btn-xs" href="/sysuser/logout">退出</a></span>
</ul>