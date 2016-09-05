<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript" src="/js/spin.min.js"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="/js/jquery.form.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/headroom.min.js"></script>
<script type="text/javascript" src="/js/jQuery.headroom.js"></script>
<script type="text/javascript" src="/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="/js/sweetalert.min.js"></script>
<script type="text/javascript" src="/js/bootstrap-maxlength.js"></script>
<script type="text/javascript">
var spinnerOption = {
    lines: 12, // 花瓣数目
    length: 20, // 花瓣长度
    width: 10, // 花瓣宽度
    radius: 25, // 花瓣距中心半径
    corners: 1, // 花瓣圆滑度 (0-1)
    rotate: 0, // 花瓣旋转角度
    direction: 1, // 花瓣旋转方向 1: 顺时针, -1: 逆时针
    color: '#555', // 花瓣颜色
    speed: 1, // 花瓣旋转速度
    trail: 60, // 花瓣旋转时的拖影(百分比)
    shadow: false, // 花瓣是否显示阴影
    hwaccel: false, //spinner 是否启用硬件加速及高速旋转            
    className: 'spinner', // spinner css 样式名称
    zIndex: 2e9, // spinner的z轴 (默认是2000000000)
    top: '50%', // spinner 相对父容器Top定位 单位 px
    left: '50%', // spinner 相对父容器Left定位 单位 px
    scale: 1.0, // 尺度旋转器的总体规模
    opacity: 0.25, // 线条透明度
    fps: 20, // Frames per second when using setTimeout() as a fallback for CSS
    position: 'absolute' // Element positioning
};
var spinner = new Spinner(spinnerOption);
var body = $("body")[0];
$(document).ajaxStart(function(){
    spinner.spin(body);
}).ajaxStop(function(){
    spinner.spin();
});
//初始化nav
$("#navbar-fixed-top").headroom();
//点击省略号
$("body").delegate('.fold', 'click', function() {
    $(this).replaceWith($(this).attr("data-string"));
});
//字数限制
$('textarea[maxlength],input[maxlength]').maxlength();
</script>