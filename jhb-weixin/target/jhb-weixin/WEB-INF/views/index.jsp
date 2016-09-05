<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../include/style.jsp"%>
    <style type="text/css">
    h1{
        text-align: center;
        padding: 20px 0;
    }
    #container a{
        color: #333;
    }
    #container a:hover{
        text-decoration: none;
        color: #333;
    }
    #container ul li{
        margin: 15px 0;
        text-align: left;
    }
    </style>
</head>
<body>
    <%@include file="../include/nav.jsp"%>
    <div id="container">
        <h1>数据管理平台<small>导航地图</small></h1>
        <div style="text-align: center;">
          <ul class="list-unstyled" style="display: inline-block;">
            <li>
              <div class="btn-group">
                <button type="button" class="btn btn-info">数据导入</button>
                <a type="button" class="btn btn-default" href="/import/page">电子表格导入</a>
              </div>
            </li>
            
          </ul>
        </div>
    </p>
    </div>
    <%@include file="../include/script.jsp"%>
</body>
</html>