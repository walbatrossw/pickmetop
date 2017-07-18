<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../include/header.jsp" %>
</head>
<body class="fixed skin-blue-light sidebar-mini">
<div class="wrapper">

    <%@ include file="../../include/main_header.jsp" %>

    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../../include/main_sidebar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                기업정보
                <small>등록페이지</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 기업정보</a></li>
                <li class="active"> 등록</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">기업 등록</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form id="companyCreate" action="${path}/company/info/create" method="post">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="companyName">기업명</label>
                                            <input type="text" class="form-control" id="companyName" name="companyName" placeholder="예) 삼성전자">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="industryIdx1">업종 대분류</label>
                                            <select class="form-control" id="industryIdx1">
                                                <option value="">:::선택:::</option>
                                                <c:forEach var="i" items="${industryIdx1}">
                                                    <option value="${i.id}">${i.industryIdx1Name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="industryIdx2">업종 소분류</label>
                                            <select class="form-control" id="industryIdx2" name="industryIdx2Id">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="companyType">기업규모</label>
                                            <select class="form-control" id="companyType" name="companyType">
                                                <option value="">:::선택:::</option>
                                                <option value="대기업">대기업</option>
                                                <option value="중소기업">중소기업</option>
                                                <option value="외국계">외국계</option>
                                                <option value="스타트업">스타트업</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="birthDate">설립일자</label>
                                            <input type="date" class="form-control" id="birthDate" name="birthDate">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="ceo">대표이사</label>
                                            <input type="text" class="form-control" id="ceo" name="ceo" placeholder="예) 홍길동">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="homePage">공식홈페이지</label>
                                            <input type="text" class="form-control" id="homePage" name="homePage" placeholder="예) http://www.abc.com">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="phone">대표번호</label>
                                            <input type="text" class="form-control" id="phone" name="phone" placeholder="예) 02-1234-5678">
                                        </div>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="form-group">
                                            <label for="address">본사주소</label>
                                            <input type="text" class="form-control" id="address" name="address" placeholder="예) 서울시 강남구 XXX번지 ">
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="totalSales">매출액 (단위: 백만원)</label>
                                            <input type="number" class="form-control" id="totalSales" name="totalSales" min="1">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->

                            <div class="box-footer">
                                <div class="pull-left" id="invalidText" style="color: red"></div>
                                <button type="reset" class="btn btn-default pull-right">초기화</button>
                                <button type="button" class="btn btn-primary pull-right" id="companyRegBtn">등록</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.box -->
                </div>
                <!--/.col (left) -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <%@ include file="../../include/main_footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../../include/control_sidebar.jsp" %>
    <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->
<%@ include file="../../include/footer.jsp" %>
<!-- InputMask -->
<script>
    $(function () {
        // 기업 업종 combo select box
        $("#industryIdx1").change(function () {
            var idx1Id = $("#industryIdx1 option:selected").val();
            $("#industryIdx2 option").remove();
            $.ajax({
                type: "get",
                url: "${path}/company/info/industry/index2/" + idx1Id,
                success: function (data) {
                    for (var i in data) {
                        $("#industryIdx2").append("<option value='" + data[i].id + "'>" + data[i].industryIdx2Name + "</option>")
                    }
                }
            });
        });

        // 유효성 검사
        $("#companyRegBtn").on("click", function () {
            // 기업등록 버튼 클릭시 유효성검사
            var companyName = $("#companyName");
            var industryIdx1 = $("#industryIdx1");
            var companyType = $("#companyType");
            var birthDate = $("#birthDate");
            var ceo = $("#ceo");
            var homePage = $("#homePage");
            var phone = $("#phone");
            var address = $("#address");
            var totalSales = $("#totalSales");
            var invalidText = $("#invalidText");

            if (companyName.val() === "") {
                invalidText.text("기업명을 기재해주세요.");
                companyName.focus();
            } else if ( industryIdx1.val() === "" ) {
                invalidText.text("업종을 선택해주세요.");
                industryIdx1.focus();
            } else if ( companyType.val() === "" ) {
                invalidText.text("기업 규모를 선택해주세요.");
                companyType.focus();
            } else if ( birthDate.val() === "" ) {
                invalidText.text("설립입을 기재해주세요.");
                birthDate.focus();
            } else if ( ceo.val() === "" ) {
                invalidText.text("대표이사를 기재해주세요.");
                ceo.focus();
            } else if ( homePage.val() === "" ) {
                invalidText.text("기업홈페이지를 기재해주세요.");
                homePage.focus();
            } else if ( phone.val() === "" ) {
                invalidText.text("기업 대표번호를 기재해주세요.");
                phone.focus();
            } else if ( address.val() === "" ) {
                invalidText.text("기업 본사주소를 기재해주세요.");
                address.focus();
            } else if ( totalSales.val() === "" || isNaN(totalSales.val()) ) {
                invalidText.text("매출액을 숫자로 기재해주세요.");
                totalSales.focus();
            } else {
                $("#companyCreate").submit();
            }
        });
    })
</script>
</body>
</html>
