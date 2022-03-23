<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Log In</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/resources/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/resources/css/AdminLTE.min.css">
<link href="/resources/css/admin.css" rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition login-page">
	<!-- content-wrapper -->
	<iframe name="iframe_process" width="0" height="0" frameborder="0"></iframe>
	<div align="center">
		<br> <br> <br> <br> <br> <br> <br>

		<div style="width: 400px;">
			<div class="box box-primary">
				<div class="box-body box-profile">
					<img src="http://demoshop.mir9.kr/user/banner/8"
						style="height: 50px; margin: 20px;">

					<h3 class="profile-username text-center">웹사이트 운영을 위한 관리자
						모드입니다.</h3>
					<p class="text-muted text-center" style="padding: 10px;">아이디와
						비밀번호 입력후 로그인해 주시기 바랍니다.</p>

					<form name="form" action="${pageContext.request.contextPath }/test" method="post"
						style="padding: 20px;">
						<input type="hidden" name="return_url"
							value="%2Findex.php%3Ftpf%3Dadmin%2Fdashboard%2Flist"> <input
							type="hidden" name="is_admin" value="y">
						<div class="form-group has-feedback">
							<input type="text" name="id" class="form-control"
								placeholder="ID" /> <span
								class="glyphicon glyphicon-pencil form-control-feedback"></span>
						</div>

						<div class="form-group has-feedback">
							<input type="password" name="password"
								onkeyup="if(event.keyCode == 13) register()"
								class="form-control" placeholder="PASSWORD" /> <span
								class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<a href="#none" onclick="register();"
							class="btn btn-primary btn-block"><b>로그인</b></a>
					</form>
				</div>

				<p class="text-muted text-center" style="padding: 10px;">Copyright
					2018©MIR9 SHOP. All Rights Reserved.</p>
			</div>
		</div>
	</div>
	<!-- jQuery 3 -->
	<script
		src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="/resources/js/common.js" type="text/javascript" charset="utf-8"></script>

	<script>
		function register() {
			if (form.id.value == '') {
				alert('아이디가 입력되지 않았습니다.');
				form.id.focus();
				return false;
			}
			if (form.password.value == '') {
				alert('패스워드가 입력되지 않았습니다.');
				form.password.focus();
				return false;
			}
			form.target = 'iframe_process';
			form.submit();
		}
		function onLoad() {
			form.id.focus();
		}
		onload = onLoad;
	</script>
</body>
</html>