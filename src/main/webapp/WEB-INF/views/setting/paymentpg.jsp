<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="결제 PG 설정" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    결제PG 설정
    <small>Billing PG</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">결제PG 설정</li>
    </ol>
</section>

<section class="content">
<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-body">
                <form name="form_register" method="post" action="/index.php?tpf=admin/setting/process">
                <input type="hidden" name="mode" value="updatePaymentPG">

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 기본 설정</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">국내/해외 여부</td>
                    <td align="left">
                    <input type="checkbox" name="chk_gubun1" value='y' onchange="checkGubun(this.value);" checked=checked>국내&nbsp;&nbsp;
                    <input type="checkbox" name="chk_gubun2" value='y' onchange="checkGubun(this.value);" checked=checked>해외
                    </td>
                </tr>
                <tr id="display_pg" style="display:none;">
                    <td class="menu">국내 카드PG사</td>
                    <td align="left">
                    <input type="radio" name="card_pg" value="ini" onchange="checkCardPGType(this.value);" checked=checked>KG 이니시스&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="card_pg" value="xpay" onchange="checkCardPGType(this.value);">LG 유플러스&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="card_pg" value="kcp" onchange="checkCardPGType(this.value);">NHN KCP
                    </td>
                </tr>
				<tr id="display_ease_pg" style="display:none;">
                    <td class="menu">국내 간편결제</td>
                    <td align="left">
                    <input type="checkbox" name="naverpay_use" id="naverpay_use" value='y' onchange="checkEasyPGNaver(this.checked);" checked=checked> <label for="naverpay_use">네이버페이</label> &nbsp;&nbsp;
					<!-- <input type="checkbox" name="kakaopay_use" id="kakaopay_use" value='y' onchange="checkEasyPGKakao(this.checked);"> <label for="kakaopay_use">카카오페이</label> &nbsp;&nbsp; -->
                    </td>
                </tr>
                </tbody>
                </table>
                <br>
                <span id="display_ini_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> KG 이니시스 일반결제 설정</p></h4></span>
                <table class="table table-bordered" id="display_ini" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="checkbox" name="chk_use_ini" value='y' checked=checked>사용함
                    </td>
                </tr>
                <tr>
                    <td class="menu">PG사 모듈 버전</td>
                    <td align="left">INIpay Standard 웹표준 결제 (V 1.2.2 - 20160421) / INIpay Mobile WEB (V 4.08 - 20160322)</td>
                </tr>
                <tr>
                    <td class="menu">결제수단 설정</td>
                    <td align="left">
                    <input type="checkbox" name="chk_ini1" value='y' checked=checked>신용카드&nbsp;&nbsp;
                    <input type="checkbox" name="chk_ini2" value='y'>계좌이체&nbsp;&nbsp;
                    <input type="checkbox" name="chk_ini3" value='y'>가상계좌
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">
                        <input type="radio" name="pg_mode" value="ini_dev"  checked=checked>TEST 모드&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pg_mode" value="ini_real" >REAL 모드
                    </td>
                </tr>
                <tr>
                    <td class="menu">상점 ID</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_id_ini" value="INIpayTest" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">Sign Key</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_key_ini" value="SU5JTElURV9UUklQTEVERVNfS0VZU1RS" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">Upload Key File</td>
                    <td align="left">
                        <span style="float:left;"> <input type="file" name="file1" class="form-control input-sm" style="width:100%; display:inline;"></span>
                        <span style="line-height:2.0;"><small class="text-black"> &nbsp;&nbsp;압축파일 형식(zip)의 Key File을 업로드해 주세요. </small></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <span id="display_xpay_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> LG 유플러스 일반결제 설정</p></h4></span>
                <table class="table table-bordered" id="display_xpay" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="checkbox" name="chk_use_xpay" value='y' checked=checked>사용함
                    </td>
                </tr>
                <tr>
                    <td class="menu">PG사 모듈 버전</td>
                    <td align="left">XPay Crossplatform (V 1.0 - 20150826) / Smart XPay (V 1.2 - 20140730)</td>
                </tr>
                <tr>
                    <td class="menu">결제수단 설정</td>
                    <td align="left">
                    <input type="checkbox" name="chk_xpay1" value='y' checked=checked>신용카드&nbsp;&nbsp;
                    <input type="checkbox" name="chk_xpay2" value='y'>계좌이체&nbsp;&nbsp;
                    <input type="checkbox" name="chk_xpay3" value='y'>가상계좌
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">

                        <input type="radio" name="pg_mode" value="xpay_test" >TEST 모드&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pg_mode" value="xpay_service" >REAL 모드
                    </td>
                </tr>
                <tr>
                    <td class="menu">LG 유플러스 상점 ID</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_id_xpay" value="INIpayTest" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">LG 유플러스 mertkey</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_key_xpay" value="SU5JTElURV9UUklQTEVERVNfS0VZU1RS" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <span id="display_kcp_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> NHN KCP 일반결제 설정</p></h4></span>
                <table class="table table-bordered" id="display_kcp" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="checkbox" name="chk_use_kcp" value='y' checked=checked>사용함
                    </td>
                </tr>
                <tr>
                    <td class="menu">PG사 모듈 버전</td>
                    <td align="left">NHN KCP WEB 표준결제창 (V.3.0.0 - 20151125) / NHN KCP SmartPhone WEB 결제창 (V.3.0.0 - 20151125)</td>
                </tr>
                <tr>
                    <td class="menu">결제수단 설정</td>
                    <td align="left">
                    <input type="checkbox" name="chk_kcp1" value='y' checked=checked>신용카드&nbsp;&nbsp;
                    <input type="checkbox" name="chk_kcp2" value='y'>계좌이체&nbsp;&nbsp;
                    <input type="checkbox" name="chk_kcp3" value='y'>가상계좌
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">
                        <input type="radio" name="pg_mode" value="kcp_dev" >TEST 모드&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="pg_mode" value="kcp_real" >REAL 모드
                    </td>
                </tr>
                <tr>
                    <td class="menu">사이트코드(site_cd)</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_id_kcp" value="INIpayTest" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">사이트키(site_key)</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_key_kcp" value="SU5JTElURV9UUklQTEVERVNfS0VZU1RS" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

				<span id="display_naverpay_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 네이버페이 설정</p></h4></span>
                <table class="table table-bordered" id="display_naverpay" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">가맹점 ID</td>
                    <td align="left">
                        <input type="text" name="naverpay_shopid" value="yellowandsky" class="form-control input-sm" style="width:300px;" />
						<a href="https://admin.pay.naver.com/" target="_blank">네이버페이 센터 바로가기 &gt;</a>
                    </td>
                </tr>
                <tr>
                    <td class="menu">가맹점 인증키</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="naverpay_certi_key" value="D2B73AA4-5FCE-4DA8-A7F1-1E7E37379B30" class="form-control input-sm" style="width:300px;" /></span>
                    </td>
                </tr>
				<tr>
                    <td class="menu">버튼 인증키</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="naverpay_button_key" value="2DB98C5D-6939-49C9-B9FD-715537119256" class="form-control input-sm" style="width:300px;" /></span>
                    </td>
                </tr>
				<tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">
                        <input type="radio" name="naverpay_mode" id="naverpay_mode1" value="t"  checked=checked> <label for="naverpay_mode1">TEST 모드</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="naverpay_mode" id="naverpay_mode2" value="s" > <label for="naverpay_mode2">REAL 모드</label>
                    </td>
                </tr>
				</tbody>
                </table>

				<span id="display_kakaopay_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 카카오페이 설정</p></h4></span>
                <table class="table table-bordered" id="display_kakaopay" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">가맹점 ID</td>
                    <td align="left">
                        <input type="text" name="kakaopay_cid" value="" class="form-control input-sm" style="width:300px;" />
						<a href="https://with.kakao.com/kakaopay/index" target="_blank">카카오페이 제휴신청 바로가기 &gt;</a><br />
						<a href="https://pg.kakao.com/" target="_blank">카카오페이 파트너 어드민 바로가기 &gt;</a>
                    </td>
                </tr>
                <tr>
                    <td class="menu">가맹점 인증키</td>
                    <td align="left">
                        <input type="text" name="kakaopay_apikey" value="" class="form-control input-sm" style="width:300px;" />

                    </td>
                </tr>
				<tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">
                        <input type="radio" name="kakaopay_mode" id="kakaopay_mode1" value="t"  checked=checked> <label for="kakaopay_mode1">TEST 모드</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="kakaopay_mode" id="kakaopay_mode2" value="s" > <label for="kakaopay_mode2">REAL 모드</label>
                    </td>
                </tr>
				</tbody>
                </table>

                <span id="display_exim_title" style="display:none;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> EXIMBAY 설정(해외결제)</p></h4></span>
                <table class="table table-bordered" id="display_exim" style="display:none;">
                <tbody>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="checkbox" name="chk_use_eximbay" value='y' checked=checked>사용함
                    </td>
                </tr>
                <tr>
                    <td class="menu">PG사 모듈 버전</td>
                    <td align="left">2.1</td>
                </tr>
                <tr>
                    <td class="menu">결제수단 설정</td>
                    <td align="left">
                    <input type="checkbox" name="chk_eximbay1" value='card'>CreditCard&nbsp;&nbsp;
                    <input type="checkbox" name="chk_eximbay2" value='paypal'>Paypal&nbsp;&nbsp;
                    <input type="checkbox" name="chk_eximbay3" value='unionpay'>UnionPay&nbsp;&nbsp;
                    <input type="checkbox" name="chk_eximbay4" value='alipay'>Alipay
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 모드</td>
                    <td align="left">
                        <input type="radio" name="overseas_mode" value="eximbay_dev"  checked=checked>TEST 모드&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="overseas_mode" value="eximbay_real" >REAL 모드
                    </td>
                </tr>
                <tr>
                    <td class="menu">mid</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_id_eximbay" value="1849705C64" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">Secret Key</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="shop_key_eximbay" value="289F40E6640124B2628640168C3C5464" class="form-control input-sm" style="width:300px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 네이버 쇼핑 연동</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">tsv파일 실행주소</td>
                    <td align="left">
                    http://demoshop.mir9.kr/index.php?tpf=shop/navershop/navershop_db
                    </td>
                </tr>
                <tr>
                    <td class="menu">상품 DB URL</td>
                    <td align="left">
                     http://demoshop.mir9.kr/shop/navershop/navershopping.tsv
                    </td>
                </tr>
                <tr>
                    <td class="menu">네이버 쇼핑파트너존</td>
                    <td align="left">
                    1. 입점 신청 : <a href="https://join.shopping.naver.com" target="_blank">입점신청 바로가기</a><br>
                    2. 위 실행주소를 복사후에 <a href="https://adcenter.shopping.naver.com/member/login/form.nhn?targetUrl=%2Fmain.nhn" target="_blank">[상품 DB URL 등록하기]</a>에서 등록하세요.<br>
                    </td>
                </tr>
                </tbody>
                </table>

                <div style="text-align:center; padding:20px 0px 0 0px"><button type="button" onclick="register()" class="btn btn-primary">확인</button></div>
                </form>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>
</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>