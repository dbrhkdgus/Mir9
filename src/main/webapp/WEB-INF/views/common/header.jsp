<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | ${param.title}</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/76afde4c0b.js"
	crossorigin="anonymous"></script>
<!-- Ionicons -->
<script src="https://unpkg.com/ionicons@4.4.1/dist/ionicons.js"></script>
<!-- jvectormap -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.vector-map.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/_all-skins.min.css">
<link href="${pageContext.request.contextPath }/resources/css/admin.css" rel="stylesheet" type="text/css" />

<!-- fullcalendar -->
<link href="//mir9.co.kr/resource/css/bootstrap-colorselector.css"
	rel="stylesheet" />
<link
	href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.print.css"
	rel="stylesheet" type="text/css" media='print' />
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
<body class="hold-transition skin-red sidebar-mini">
	<iframe name="iframe_process" width="0" height="0" frameborder="0"
		style="display: none;"></iframe>

	<div class="wrapper">

		<!-- header -->
		<header class="main-header">
			<a href="/admin" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>MIR9 SHOP Admin</b></span>
			</a>

			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/img/avatar5.png"
								class="user-image" alt="User Image" /> <span class="hidden-xs">길동이</span>
						</a>
							<ul class="dropdown-menu">
								<li class="user-header"><img
									src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/img/avatar5.png"
									class="img-circle" alt="User Image" />
									<p>
										길동이 - Web Administrator <small>MIR9 SHOP 관리자</small>
									</p></li>
								<li class="user-footer">
									<div class="pull-right">
										<a href="?tpf=member/logout" class="btn btn-danger btn-flat">Sign
											out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- /.header -->
		<!-- sidebar -->
		<aside class="main-sidebar">
			<section class="sidebar">
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li><a href="?tpf=admin/dashboard/list"> <i
							class="fa fa-dashboard"></i> <span>Dashboard</span>
					</a></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-shopping-cart"></i> <span>주문 관리</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="/order/list"><i
									class="fa fa-circle-o"></i> 주문 리스트</a></li>
							<li><a href="https://iniweb.inicis.com/security/login.do"
								target="_new"><i class="fa fa-circle-o"></i> 이니시스 상점관리자</a></li>
							<li><a href="/order/log_list"><i
									class="fa fa-circle-o"></i>카드결제로그 리스트</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-file-text-o"></i> <span>메뉴 관리</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a
								href="?tpf=admin/menu/list&menu=manager"><i
									class="fa fa-circle-o"></i> 메뉴 관리</a></li>
							<li><a href="?tpf=admin/menu/head"><i
									class="fa fa-circle-o"></i> 헤더 관리</a></li>
							<li><a href="?tpf=admin/menu/bottom"><i
									class="fa fa-circle-o"></i> 하단 관리</a></li>
							<li><a href="?tpf=admin/menu/meta"><i
									class="fa fa-circle-o"></i> 메타 관리</a></li>
						</ul></li>

					<li class="treeview"><a href="#"> <i
							class="fa fa-list-alt"></i> <span>게시판 관리</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="index.php?tpf=admin/board/manage"><i
									class="fa fa-circle-o"></i> 리스트</a></li>
							<li><a href="index.php?tpf=admin/board/list&board_code=1"><i
									class="fa fa-circle-o"></i> 공지사항</a></li>
							<li><a href="index.php?tpf=admin/board/list&board_code=2"><i
									class="fa fa-circle-o"></i> 자주하는 질문</a></li>
							<li><a href="index.php?tpf=admin/board/list&board_code=3"><i
									class="fa fa-circle-o"></i> 1:1 문의</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-gift"></i>
							<span>제품</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="?tpf=admin/product/list"><i
									class="fa fa-circle-o"></i> 리스트 </a></li>
							<li><a href="?tpf=admin/product/category"><i
									class="fa fa-circle-o"></i> 카테고리 </a></li>
							<li><a href="?tpf=admin/product/option_bank"><i
									class="fa fa-circle-o"></i> 자주쓰는 옵션 관리 </a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-user"></i>
							<span>회원 관리</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li class="active"><a href="?tpf=admin/member/list"><i
									class="fa fa-circle-o"></i> 회원 리스트</a></li>
							<li><a href="?tpf=admin/member/withdraw_list"><i
									class="fa fa-circle-o"></i> 탈퇴회원 리스트</a></li>
							<li><a href="?tpf=admin/member/log"><i
									class="fa fa-circle-o"></i> 회원 접속이력 관리</a></li>
							<li><a href="?tpf=admin/member/level"><i
									class="fa fa-circle-o"></i> 등급 관리</a></li>
							<li><a href="?tpf=admin/member/point"><i
									class="fa fa-circle-o"></i> 회원 적립금 관리</a></li>
						</ul></li>
					<li class=""><a href="?tpf=admin/schedule/list"> <i
							class="fa fa-calendar"></i> <span>일정 관리</span>
					</a></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-check-square-o"></i> <span>폼메일 관리</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="index.php?tpf=admin/form/manage"><i
									class="fa fa-circle-o"></i> 리스트</a></li>
							<li><a href="index.php?tpf=admin/form/list&form_code=1"><i
									class="fa fa-circle-o"></i> 문의사항</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-shopping-cart"></i> <span>통계</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="?tpf=admin/statistics/sales_day"><i
									class="fa fa-circle-o"></i>기간별 매출 통계 </a></li>
							<li><a href="?tpf=admin/statistics/sales_product"><i
									class="fa fa-circle-o"></i>제품별 매출 통계 </a></li>
							<li><a href="?tpf=admin/statistics/sales_member"><i
									class="fa fa-circle-o"></i>회원별 매출 통계 </a></li>
							<li><a href="?tpf=admin/statistics/sales_address_day"><i
									class="fa fa-circle-o"></i>지역별 매출 통계 </a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-commenting"></i> <span>커뮤니티 관리</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="?tpf=admin/community/email"><i
									class="fa fa-circle-o"></i>메일 설정</a></li>
							<li><a href="?tpf=admin/community/email_list"><i
									class="fa fa-circle-o"></i>메일 발송 내역</a></li>
							<li><a href="?tpf=admin/community/sms"><i
									class="fa fa-circle-o"></i>SMS 설정</a></li>
							<li><a href="?tpf=admin/community/sms_list"><i
									class="fa fa-circle-o"></i>SMS 발송 내역</a></li>
							<li><a href="?tpf=admin/community/review"><i
									class="fa fa-circle-o"></i>주문후기 리스트</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i class="fa fa-gear"></i>
							<span>설정</span> <i class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="?tpf=admin/setting/point"><i
									class="fa fa-circle-o"></i> 적립금 관리</a></li>
							<li><a href="?tpf=admin/setting/coupon"><i
									class="fa fa-circle-o"></i> 쿠폰 관리</a></li>
							<li><a href="?tpf=admin/setting/popup"><i
									class="fa fa-circle-o"></i> 팝업 관리</a></li>
							<li><a href="?tpf=admin/setting/map"><i
									class="fa fa-circle-o"></i> 약도 관리</a></li>
							<li><a href="?tpf=admin/setting/staff"><i
									class="fa fa-circle-o"></i> 임원 관리</a></li>
							<li><a href="?tpf=admin/setting/history"><i
									class="fa fa-circle-o"></i> 연혁 관리</a></li>
							<li><a href="?tpf=admin/setting/banner"><i
									class="fa fa-circle-o"></i> 배너 관리</a></li>
							<li><a href="?tpf=admin/setting/contract"><i
									class="fa fa-circle-o"></i> 약관 관리</a></li>
							<li><a href="?tpf=admin/setting/delivery_setting"><i
									class="fa fa-circle-o"></i> 배송 설정</a></li>
							<li><a href="?tpf=admin/setting/delivery_company"><i
									class="fa fa-circle-o"></i> 택배사 관리</a></li>
							<li><a href="?tpf=admin/setting/info"><i
									class="fa fa-circle-o"></i> 기본 설정</a></li>
							<li><a href="?tpf=admin/setting/seo"><i
									class="fa fa-circle-o"></i> SEO 설정</a></li>
							<li><a href="?tpf=admin/setting/paymentpg"><i
									class="fa fa-circle-o"></i> 결제PG 설정</a></li>
							<li><a href="?tpf=admin/setting/snslogin"><i
									class="fa fa-circle-o"></i> SNS 연동 설정</a></li>
							<li><a href="?tpf=admin/setting/locale"><i
									class="fa fa-circle-o"></i> 다국어 번역</a></li>
						</ul></li>
					<li><a href="?tpf=admin/setting/version"> <i
							class="fa fa-exclamation-circle"></i> <span>Version</span> <small
							class="label pull-right bg-green">2.8.1</small>
					</a></li>
				</ul>
			</section>
		</aside>
		<!-- /.sidebar -->