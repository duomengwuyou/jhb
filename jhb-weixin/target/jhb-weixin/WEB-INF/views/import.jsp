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
        <form class="form-horizontal form-inline well search" role="form" method="post" enctype="multipart/form-data" action="/import/importFile">
            <div class="form-group">
            	<label class="control-label">上传内容</label>
            	<select name="uploadType">
            		<option value="aggp">A股股票</option>
            		<option value="bi_gdqybl">股东权益比率</option>

            		<option value="bi_jlrl">净利润率</option>
            		<option value="bi_jzcsyl">净资产收益率 </option>
            		<option value="bi_mgjzc">每股净资产</option>
            		<option value="bi_mgsy">每股收益</option>
            		<option value="bi_mgsyzzl">每股收益增长率</option>
            		
            		<option value="bi_mgxjll">每股现金流量</option>
            		<option value="bi_mgzbgj">每股资本公积</option>
            		<option value="bi_syl">市盈率</option>
            		<option value="bi_xjzzcbl">现金总资产比率</option>
            		<option value="bi_yysr">营业收入</option>
            		<option value="bi_zylrzzl">主营利润增长率</option>
            		<option value="bi_zcfzl">资产负债率</option>
            		<option value="bi_zyxjl">自由现金流</option>
            		<option value="bi_zzcbcl">总资产报酬率</option>
            		<option value="bi_zzczzl">总资产周转率</option>
            		
                  <option value="bi_zsz">总市值</option>
                  <option value="bi_ltsz">流通市值</option>
                  <option value="bi_spj">收盘价</option>
                  <option value="bi_ypjjyl">月平均交易量</option>
                  <option value="bi_zf">振幅</option>
                  <option value="bi_hjcgbh">户均持股变化</option>
                  <option value="bi_hsl">换手率</option>
                  <option value="bi_macdytpj">MACD异同平均</option>
                  <option value="bi_expmazspj">EXPMA指数平均</option>
                  <option value="bi_vosccjlzd">VOSC成交量震荡</option>
                  <option value="bi_bollblj">BOLL布林带</option>
                  <option value="bi_mfi">MFI</option>
                  <option value="bi_kdj">KDJ</option>
                  <option value="bi_rsi">RSI</option>
                  <option value="bi_mgfhsz">每股分红送转</option>
                  <option value="bi_zfse">增发数额</option>
                  <option value="bi_mgpgs">每股配股数</option>
            	</select>
            	
            	<br/>
                <label class="control-label">上传文件</label>
            	<input type="file" name="uploadFile">
                
                <button class="form-control btn btn-info" type="submit">数据导入</button>
           </div>
        </form>
        
    </div>
    <div id="footer"></div>
    <%@include file="../include/script.jsp"%>
    <script src="/js/js.js"></script>
    
</body>
</html>