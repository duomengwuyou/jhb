<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../include/style.jsp"%>
    <style>
    /*搜索栏css*/
    .search .control-label{
        margin-left: 10px;
        padding-top: 0;
    }
    .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
        width: 82px;
    }
    </style>
</head>
<body>
    <%@include file="../include/nav.jsp"%>
    <div id="container">
        <!-- 筛选条件 -->
        <form class="form-horizontal form-inline well search" role="form" action="/user/list">
            <div class="form-group">
                <label class="control-label">用户名</label>
                <input type="text" class="form-control" name="user" value="" placeholder="optional，enter user name">
                <label class="control-label">密钥</label>
                <input type="text" class="form-control" name="secret" placeholder="optional，enter user secret">
                <label class="control-label">DOMAIN</label>
                <input type="text" class="form-control" name="domain" placeholder="optional, enter user domain">
                
                <button class="form-control btn btn-info" type="submit">Search</button>
           </div>
        </form>
        <table id="resultList" data-toggle="table" data-url="/user/list" data-query-params="formatterRequest" data-response-handler="formatterData" data-sort-name="ctime" data-sort-order="desc" data-striped="true" data-side-pagination="server" data-pagination="true" data-show-columns="true" data-show-toggle="true">
            <thead>
                <tr>
                    <th data-field="user" data-valign="middle" data-align="center">用户名</th>
                    <th data-field="secret" data-valign="middle" data-align="center">密钥</th>
                    <th data-field="domain"  data-valign="middle" data-align="center">域名</th>
                    <th data-field="ctime" data-valign="middle" data-align="center" data-formatter="formatterTime">创建时间</th>
                </tr>
            </thead>
        </table>
    </div>
    <div id="footer"></div>
    <%@include file="../include/script.jsp"%>
    <script src="/js/js.js"></script>
    <script type="text/javascript">
    function formatterRequest(params){
        params.user = $(".search input[name='user']").val();
        params.secret = $(".search input[name='secret']").val();
        params.domain = $(".search input[name='domain']").val();
        console.log(params);
        return params;
    }
    function formatterData(res){
        if (res.status == 1) {
            return res;
        }else{
            swal("Fail", res.message, "error");
            return [];
        }
    }
    function formatterTime(value, row, index){
        if (value) {
            return formatDate(value, true);
        }
    }
    </script>
    <script type="text/javascript">
    $(".search").submit(function(){
        $('#resultList').bootstrapTable('selectPage', 1);
       return false;
    });
    </script>
</body>
</html>