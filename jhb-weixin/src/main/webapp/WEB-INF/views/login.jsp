<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../include/style.jsp"%>
    <style type="text/css">
    #loginForm{
        margin: 50px auto;
        width: 40%;
    }
    .title_login{
        margin: -60px -10px 0 -10px;
        font-size: 36px;
        font-weight: 600;
        font-family: -webkit-pictograph;
        text-align: center;
        padding: 20px;
    }
    </style>
</head>
<body>
    <div id="container">
        <div class="bg-info title_login">数据管理平台</div>
        <form id="loginForm" class="form-horizontal" role="form" method="post" action="/sysuser/loginPost">
            <div class="form-group">
              <label class="col-sm-2 control-label">用户名</label>
              <div class="col-sm-10">
                 <input type="text" class="form-control" name="account" placeholder="Please enter username">
              </div>
           </div>
           <div class="form-group">
              <label class="col-sm-2 control-label">密码</label>
              <div class="col-sm-10">
                 <input type="password" class="form-control" name="password" placeholder="Please enter password">
              </div>
           </div>
           <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                 <button type="submit" class="btn btn-default">登录</button>
              </div>
           </div>
        </form>
    </div>
    <%@include file="../include/script.jsp"%>
    <script type="text/javascript">
    $("form#loginForm").validate({
      errorElement: "p",
      rules: {
        account: {
          required: true
        },
        password: {
          required: true
        }
      },
      messages: {
        account: {
          required: "Username cannot be blank"
        },
        password: {
          required: "Password cannot be blank"
        }
      },
      submitHandler: function(form) {
        $(form).ajaxSubmit({
          success: function(msg){
            if (msg.status) {
              /*swal({ 
                  title: "Success", 
                  text: "Log in succeeded", 
                  type: "success", 
                  showCancelButton: false, 
                  confirmButtonText: "OK",
                  closeOnConfirm: false
              }, function(){
                  location.href = "/";
              });*/
              location.href = "/";
            }else{
              swal("Fail", msg.message, "error");
            }
          }
        });
      }
    });
    </script>
</body>
</html>