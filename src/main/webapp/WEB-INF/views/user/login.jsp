<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/header.jsp" %>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="/"><b>P!ck</b>Me</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">P1ck ME와 함께 취업 성공해봐요!</p>
        <form action="${path}/user/login" method="post">
            <div class="form-group" align="center">
                <c:if test="${msg == 'welcome'}">
                        <span style="color: red">
                            환영합니다!!! 회원가입이 완료되었습니다. 로그인해주세요.
                        </span>
                </c:if>
                <c:if test="${msg == 'failure'}">
                        <span style="color: red">
                            아이디 또는 비밀번호가 일치하지 않습니다.
                        </span>
                </c:if>
                <c:if test="${param.msg == 'nologin'}">
                        <span style="color: red">
                            로그인 유저만 사용이 가능합니다. 로그인해주세요
                        </span>
                </c:if>
                <c:if test="${msg == 'logout'}">
                        <span style="color: red">
                            로그아웃되었습니다.
                        </span>
                </c:if>
            </div>
            <div class="form-group has-feedback">
                <input type="email" class="form-control" name="email" placeholder="이메일">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" name="password" placeholder="비밀번호">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> 비밀번호 기억하기
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <div class="social-auth-links text-center">
            <p>- 또는 -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> 페이스북으로
                Login</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i>구글계정으로
                Login</a>
        </div>
        <!-- /.social-auth-links -->

        <a href="#">비밀번호 찾기</a><br>
        <a href="${path}/user/register" class="text-center">회원가입 하기</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<%@ include file="../include/footer.jsp" %>
<script>
    $(function () {

    })
</script>
</body>
</html>
