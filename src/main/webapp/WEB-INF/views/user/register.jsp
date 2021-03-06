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
        <p class="login-box-msg">P!ck Me의 회원이 되세요!</p>

        <form id="userCreate" action="${path}/user/register" method="post">
            <div class="form-group has-feedback">
                <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="이메일 (아이디)">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" id="userName" name="userName" placeholder="이름 (닉네임)">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="비밀번호 (특수/문자/숫자 포함 8~15자리)">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" id="userPasswordCheck" placeholder="비밀번호 확인">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="form-group">
                <span id="invalidText" style="color: red"></span>
            </div>
            <div class="row">
                <div class="col-xs-7">

                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" id="userTerms"> <a data-toggle="modal" data-target="#terms">이용약관에 대한 동의</a>
                        </label>
                    </div>

                    <!-- 이용약관 Modal -->
                    <div class="modal fade" id="terms" tabindex="-1" role="dialog" aria-labelledby="myInfoModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myInfoModalLabel">개인정보 수집 및 이용에 관한 약관</h4>
                                </div>
                                <div class="modal-body">
                                    개인정보 수집 및 이용에 관한 약관 내용.........
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.이용약관 Modal -->

                </div>
                <!-- /.col -->
                <div class="col-xs-5">
                    <button type="button" class="btn btn-primary btn-block btn-flat" id="regBtn">이메일로 가입</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <div class="social-auth-links text-center">
            <p>- 또는 -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> 페이스북으로 가입</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> 구글계정으로 가입</a>
        </div>

        <a href="${path}/user/login" class="text-center">이미 회원이신가요?</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->
<%@ include file="../include/footer.jsp"%>
    <script>
        $(function () {
            // 이메일 주소 중복검사
            $("#userEmail").blur(function () {
                var userEmail = $("#userEmail").serialize();
                $.ajax({
                    type: "post",
                    url: "${path}/user/duplicated/email",
                    dataType: "text",
                    data: userEmail,
                    success: function (data) {
                        if (data == 1) {
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
            $("#userName").blur(function () {
                var userName = $("#userName").serialize();
                $.ajax({
                    type: "post",
                    url: "${path}/user/duplicated/name",
                    dataType: "text",
                    data: userName,
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
            // 회원가입 버튼 클릭시 유효성검사
            $("#regBtn").on("click", function () {
                var userEmail = $("#userEmail");
                var userName = $("#userName");
                var userPassword = $("#userPassword");
                var userPasswordCheck = $("#userPasswordCheck");
                var userTerms = $("#userTerms");
                var invalidText = $("#invalidText");
                var emailRegx = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                var pwRegx = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

                if ( userEmail.val() === "" || !emailRegx.test(userEmail.val()) ) {
                    invalidText.text("이메일주소를 확인해주세요!");
                    userEmail.focus();
                } else if (userName.val() === "") {
                    invalidText.text("이름을 확인해주세요!");
                    userName.focus();
                } else if ( userPassword.val() === "" || !pwRegx.test(userPassword.val()) ) {
                    invalidText.text("특수문자/문자/숫자 포함 8~15자리의 비밀번호!!!");
                    userPassword.focus();
                } else if ( userPasswordCheck === "" ) {
                    invalidText.text("비밀번호를 확인해주세요!");
                    userPasswordCheck.focus();
                } else if ( userPassword.val() !== userPasswordCheck.val() ) {
                    invalidText.text("비밀번호가 일치하지 않습니다!");
                    userPasswordCheck.focus();
                } else if ( !userTerms.is(":checked") ) {
                    invalidText.text("약관에 동의해주세요!");
                } else {
                    $("#userCreate").submit();
                }

            });
        })
    </script>
</body>
</html>

