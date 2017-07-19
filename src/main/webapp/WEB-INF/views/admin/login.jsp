<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/header.jsp"%>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="/"><b>P!ck</b>Me</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">P!ck ME 관리자 로그인페이지</p>
        <form action="${path}/admin/login" method="post">
            <div class="form-group" align="center">
                <c:if test="${msg == 'welcome'}">
                    <div style="color: red">
                        관리자 회원가입이 완료되었습니다.<br/>
                        로그인해주세요.
                    </div>
                </c:if>
                <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
                <c:if test="${param.msg == 'nologin'}">
                    <div style="color: red">
                        로그인 후 사용이 가능합니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
            </div>
            <div class="form-group has-feedback">
                <input type="email" class="form-control" name="adminEmail" placeholder="이메일" value="walbatrossw@gmail.com">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" name="adminPassword" placeholder="비밀번호" value="qazwsx12!">
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
                <div class="col-xs-8">

                </div>
                <!-- /.col -->
            </div>
        </form>

        <a href="#">비밀번호 찾기</a><br>
        <a href="${path}/admin/register" class="text-center">관리자 가입 페이지</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<%@ include file="../include/footer.jsp"%>

</body>
</html>
