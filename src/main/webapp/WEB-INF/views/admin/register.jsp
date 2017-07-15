<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/header.jsp"%>
</head>
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <a href="/"><b>P!ck</b>ME</a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">P!ck ME 관리자 가입 페이지</p>

        <form action="${path}/admin/register" method="post" id="adminCreate">
            <div class="form-group has-feedback">
                <input type="email" class="form-control" id="email" name="email" placeholder="이메일(아이디)">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" id="name" name="name" placeholder="이름(닉네임)">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" id="passwordCheck" placeholder="비밀번호 확인">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="form-group">
                <span id="invalidText" style="color: red"></span>
            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4 pull-right">
                    <button type="button" class="btn btn-primary btn-block btn-flat" id="regBtn">가입</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <a href="${path}/admin/login" class="text-center">관리자 로그인페이지</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->
<%@ include file="../include/footer.jsp"%>
<script>
    $(function () {
        // 이메일 주소 중복검사
        $("#email").blur(function () {
            var email = $("#email").serialize();
            $.ajax({
                type: "post",
                url: "/admin/duplicated/email",
                dataType: "text",
                data: email,
                success: function (data) {
                    if (data == 1) {
                        console.log(data);
                        $("#invalidText").text("중복된 이메일 주소입니다.");
                        $("input[type=text]").attr("disabled", "");
                        $("input[type=password]").attr("disabled", "");
                    } else {
                        $("#invalidText").text("");
                        $("input[type=text]").removeAttr("disabled");
                        $("input[type=password]").removeAttr("disabled");
                    }
                }
            });
        });
        // 이름, 닉네임 중복검사
        $("#name").blur(function () {
            var name = $("#name").serialize();
            $.ajax({
                type: "post",
                url: "/admin/duplicated/name",
                dataType: "text",
                data: name,
                success: function (data) {
                    if (data == 1) {
                        $("#invalidText").text("중복된 이름입니다.");
                        $("input[type=email]").attr("disabled", "");
                        $("input[type=password]").attr("disabled", "");
                    } else {
                        $("#invalidText").text("");
                        $("input[type=email]").removeAttr("disabled");
                        $("input[type=password]").removeAttr("disabled");
                    }
                }
            });
        });
        // 관리자 가입버튼 클릭시 유효성 검사
        $("#regBtn").on("click", function () {
            var email = $("#email");
            var emailValue = email.val();
            var name = $("#name");
            var password = $("#password");
            var passwordValue = password.val();
            var passwordCheck = $("#passwordCheck");
            var passwordCheckValue = $("#passwordCheck").val();
            var invalidText = $("#invalidText");
            var emailRegx = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            var passwordRegx = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

            if ( emailValue === "" || !emailRegx.test(emailValue) ) {
                invalidText.text("이메일주소를 확인해주세요!");
                email.focus();
            } else if (name.val() === "") {
                invalidText.text("이름을 확인해주세요!");
                name.focus();
            } else if ( passwordValue === "" || !passwordRegx.test(passwordValue) ) {
                invalidText.text("특수문자/문자/숫자 포함 8~15자리의 비밀번호!!!");
                password.focus();
            } else if ( passwordCheck === "" ) {
                invalidText.text("비밀번호를 확인해주세요!");
                passwordCheck.focus();
            } else if ( passwordValue !== passwordCheckValue ) {
                invalidText.text("비밀번호가 일치하지 않습니다!");
                passwordCheck.focus();
            } else {
                $("#adminCreate").submit();
            }

        });
    })
</script>
</body>
</html>

