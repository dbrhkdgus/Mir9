<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="다국어 번역" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    다국어 번역
    <small>locale</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">다국어 번역</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                <div class="btn-group">
                    <a href="#none" onclick="makeScript()" class="btn btn-warning"><i class="fa fa-refresh" aria-hidden="true"></i> 언어 스크립트 만들기</a>
                </div>

                <div class="btn-group pull-right">
  <a href="?tpf=admin/setting/locale&locale=en" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> ENG</a>  <a href="?tpf=admin/setting/locale&locale=zh" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</a>  <a href="?tpf=admin/setting/locale&locale=vn" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</a>                </div>
                <br>
                <br>

                <table class="table table-bordered">
                <form name="form_register" method="post" action="?tpf=admin/setting/process">
                <input type="hidden" name="mode" value="locale">
                <input type="hidden" name="locale" value="en">
                <tr>
                    <td class="menu" style="width:46%">국문</td>
                    <td class="menu" style="width:46%">ENG</td>
                    <td class="menu" style="width:8%;">명령</td>
                </tr>
  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용가능 적립금</textarea></td>
                    <td><textarea name="sentence739" rows="3" style="width:100%;">Available reserve</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/point_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용 적립금</textarea></td>
                    <td><textarea name="sentence738" rows="3" style="width:100%;">Use reserve</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/point_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>누적 적립금</textarea></td>
                    <td><textarea name="sentence737" rows="3" style="width:100%;">Cumulative reserve</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/point_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰 할인은 적립금 할인전에 사용하시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence736" rows="3" style="width:100%;">Coupon discounts should be used before savings.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>추가 배송비가 변경되어 결제금액이 변경되었습니다.</textarea></td>
                    <td><textarea name="sentence735" rows="3" style="width:100%;">Additional shipping costs have changed and your payment has changed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총 결제 금액은 0 보다 적을수 없습니다.</textarea></td>
                    <td><textarea name="sentence734" rows="3" style="width:100%;">The total payment amount cannot be less than zero.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용가능 적립금을 초과 하였습니다.</textarea></td>
                    <td><textarea name="sentence733" rows="3" style="width:100%;">You have exceeded your available reserve.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>본 결제금액이상 일때만 적립금 사용을 할수 있습니다.</textarea></td>
                    <td><textarea name="sentence732" rows="3" style="width:100%;">You can only use your reserve when this amount is over this amount.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금은 본 금액 이상일때 사용가능 합니다.</textarea></td>
                    <td><textarea name="sentence731" rows="3" style="width:100%;">Reward points can be used more than this amount.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금은 본 단위로만 사용가능합니다.</textarea></td>
                    <td><textarea name="sentence730" rows="3" style="width:100%;">Reserves are available in this unit only.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>본 쿠폰은 최대 결제금액 이하일때만 사용 가능합니다.</textarea></td>
                    <td><textarea name="sentence729" rows="3" style="width:100%;">This coupon can be used only when it is less than or equal to the maximum payment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>본 쿠폰은 최소 결제금액 이상일때만 사용 가능합니다.</textarea></td>
                    <td><textarea name="sentence728" rows="3" style="width:100%;">This coupon can only be used when it is over the minimum payment amount.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/discount_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제한 없음</textarea></td>
                    <td><textarea name="sentence727" rows="3" style="width:100%;">No limit</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/member/list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>선택하세요</textarea></td>
                    <td><textarea name="sentence726" rows="3" style="width:100%;">Choose</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>자주 쓰는 주소록</textarea></td>
                    <td><textarea name="sentence725" rows="3" style="width:100%;">Favorite Address Book</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_mypage_tabs" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>자주 쓰는 주소록이 없습니다.</textarea></td>
                    <td><textarea name="sentence724" rows="3" style="width:100%;">You don't have a favorite address book.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송시 요청사항</textarea></td>
                    <td><textarea name="sentence723" rows="3" style="width:100%;">Delivery request</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 성명</textarea></td>
                    <td><textarea name="sentence722" rows="3" style="width:100%;">Recipient's Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주소록 추가</textarea></td>
                    <td><textarea name="sentence721" rows="3" style="width:100%;">Add contact</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보기</textarea></td>
                    <td><textarea name="sentence720" rows="3" style="width:100%;">Example</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 할인액</textarea></td>
                    <td><textarea name="sentence719" rows="3" style="width:100%;">Member discount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>차감</textarea></td>
                    <td><textarea name="sentence718" rows="3" style="width:100%;">Deduction</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/member/process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립</textarea></td>
                    <td><textarea name="sentence717" rows="3" style="width:100%;">accumulate</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/member/process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매</textarea></td>
                    <td><textarea name="sentence716" rows="3" style="width:100%;">purchase</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>자주 쓰는 주소록이 정상적으로 삭제되었습니다.</textarea></td>
                    <td><textarea name="sentence715" rows="3" style="width:100%;">Frequently used contacts have been deleted successfully.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>자주 쓰는 주소록이 정상적으로 수정되었습니다.</textarea></td>
                    <td><textarea name="sentence714" rows="3" style="width:100%;">Frequently used contacts have been modified.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입력하신 주소가 자주 쓰는 주소록에 정상적으로 등록되었습니다.</textarea></td>
                    <td><textarea name="sentence713" rows="3" style="width:100%;">The address you entered has been successfully registered in your favorite address book.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/addr_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>검색기간을 확인해주세요.</textarea></td>
                    <td><textarea name="sentence712" rows="3" style="width:100%;">Please check the search period.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구입</textarea></td>
                    <td><textarea name="sentence711" rows="3" style="width:100%;"> purchase</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=lib/class/class.BizPoint" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 가입</textarea></td>
                    <td><textarea name="sentence710" rows="3" style="width:100%;">Sign Up</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰을 다운로드 받았습니다.</textarea></td>
                    <td><textarea name="sentence709" rows="3" style="width:100%;">This coupon has been received</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 쿠폰을 다운 받으시겠습니까?</textarea></td>
                    <td><textarea name="sentence708" rows="3" style="width:100%;">Would you like to receive this coupon?</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호는 8~20자 영문,특수문자를 포함해서 입력해 주십시오.</textarea></td>
                    <td><textarea name="sentence707" rows="3" style="width:100%;">Password should be 8 ~ 20 letters long and contain both letters and numbers without spaces.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/board/view" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보유 적립금</textarea></td>
                    <td><textarea name="sentence706" rows="3" style="width:100%;">Reserve</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰 선택</textarea></td>
                    <td><textarea name="sentence705" rows="3" style="width:100%;">Select coupon</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총 상품 금액</textarea></td>
                    <td><textarea name="sentence704" rows="3" style="width:100%;">Total product amount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Twitter 로그인</textarea></td>
                    <td><textarea name="sentence703" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Google 로그인</textarea></td>
                    <td><textarea name="sentence702" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Naver 로그인</textarea></td>
                    <td><textarea name="sentence701" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Kakao 로그인</textarea></td>
                    <td><textarea name="sentence700" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자성명</textarea></td>
                    <td><textarea name="sentence699" rows="3" style="width:100%;">Order Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비회원 로그인</textarea></td>
                    <td><textarea name="sentence698" rows="3" style="width:100%;">Nonmember Login</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 로그인</textarea></td>
                    <td><textarea name="sentence697" rows="3" style="width:100%;">Member Login</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비회원 포함</textarea></td>
                    <td><textarea name="sentence696" rows="3" style="width:100%;">Non-member included</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>추가배송비</textarea></td>
                    <td><textarea name="sentence695" rows="3" style="width:100%;">Additional shipping</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사진첨부</textarea></td>
                    <td><textarea name="sentence694" rows="3" style="width:100%;">Attach pictures</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/review/write" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매후기</textarea></td>
                    <td><textarea name="sentence693" rows="3" style="width:100%;">Reviews</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/review/write" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>한줄후기</textarea></td>
                    <td><textarea name="sentence692" rows="3" style="width:100%;">One line</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/review/write" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>별점</textarea></td>
                    <td><textarea name="sentence691" rows="3" style="width:100%;">scope</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/review/write" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>네이버페이 버튼 인증키를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence690" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>네이버페이 가맹점 인증키를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence689" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>네이버페이 가맹점 ID를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence688" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문된 제품구매 정보를 알려드립니다.</textarea></td>
                    <td><textarea name="sentence687" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy_mobile_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자성명이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence686" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/login" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록되었습니다.</textarea></td>
                    <td><textarea name="sentence685" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/form/process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용모드를 체크하세요.</textarea></td>
                    <td><textarea name="sentence684" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제수단을 선택하세요.</textarea></td>
                    <td><textarea name="sentence683" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용여부를 선택하세요.</textarea></td>
                    <td><textarea name="sentence682" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>국내 카드PG사를 체크하세요.</textarea></td>
                    <td><textarea name="sentence681" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=admin/setting/paymentpg" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금 내역</textarea></td>
                    <td><textarea name="sentence680" rows="3" style="width:100%;">Reserve History</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_mypage_tabs" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰</textarea></td>
                    <td><textarea name="sentence679" rows="3" style="width:100%;">Coupon</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_mypage_tabs" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>로그아웃</textarea></td>
                    <td><textarea name="sentence678" rows="3" style="width:100%;">Log out</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>마이페이지</textarea></td>
                    <td><textarea name="sentence677" rows="3" style="width:100%;">Mypage</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>문의하기</textarea></td>
                    <td><textarea name="sentence676" rows="3" style="width:100%;">Contact us</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>BST, WE LOVE YOU</textarea></td>
                    <td><textarea name="sentence675" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_skin/mdp/layout/inc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 성이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence674" rows="3" style="width:100%;">Recipient last name not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 휴대전화가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence673" rows="3" style="width:100%;">The orderer phone is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>국제번호가 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence672" rows="3" style="width:100%;">No international code is selected.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 이메일이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence671" rows="3" style="width:100%;">The orderer email has not been entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 성이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence670" rows="3" style="width:100%;">The orderer last name is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 이름이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence669" rows="3" style="width:100%;">The orderer name is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>옵션이 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence668" rows="3" style="width:100%;">The option is not selected.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>색상이 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence667" rows="3" style="width:100%;">No color is selected.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>무료배송</textarea></td>
                    <td><textarea name="sentence666" rows="3" style="width:100%;">FREE Shipping</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>소비자가</textarea></td>
                    <td><textarea name="sentence665" rows="3" style="width:100%;">retail price</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금 할인</textarea></td>
                    <td><textarea name="sentence664" rows="3" style="width:100%;">Reserve discount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰 할인</textarea></td>
                    <td><textarea name="sentence663" rows="3" style="width:100%;">Coupon discount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>할인 정보</textarea></td>
                    <td><textarea name="sentence662" rows="3" style="width:100%;">Discount information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=shop/buy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰내역이 없습니다.</textarea></td>
                    <td><textarea name="sentence661" rows="3" style="width:100%;">There is no coupon history.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>유효기간</textarea></td>
                    <td><textarea name="sentence660" rows="3" style="width:100%;">Validity</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>최소 결제금액</textarea></td>
                    <td><textarea name="sentence659" rows="3" style="width:100%;">Minimum payment amount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>혜택</textarea></td>
                    <td><textarea name="sentence658" rows="3" style="width:100%;">Benefits</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰명</textarea></td>
                    <td><textarea name="sentence657" rows="3" style="width:100%;">Coupon Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/coupon" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금 내역이 없습니다.</textarea></td>
                    <td><textarea name="sentence656" rows="3" style="width:100%;">There is no reserve.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/point_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금</textarea></td>
                    <td><textarea name="sentence655" rows="3" style="width:100%;">savings</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/point_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총 결제 금액</textarea></td>
                    <td><textarea name="sentence654" rows="3" style="width:100%;">Total payment amount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>적립금 할인액</textarea></td>
                    <td><textarea name="sentence653" rows="3" style="width:100%;">Reserve discount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>쿠폰 할인액</textarea></td>
                    <td><textarea name="sentence652" rows="3" style="width:100%;">Coupon Discount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=mypage/order_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주소입력</textarea></td>
                    <td><textarea name="sentence651" rows="3" style="width:100%;">address</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=member/form" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총</textarea></td>
                    <td><textarea name="sentence650" rows="3" style="width:100%;">total</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/board/brochure" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일 무단수집 거부</textarea></td>
                    <td><textarea name="sentence644" rows="3" style="width:100%;">Unauthorized collection of e-mail</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=_module/company/contract" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원탈퇴</textarea></td>
                    <td><textarea name="sentence643" rows="3" style="width:100%;">Withdrawal</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>탈퇴사유가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence642" rows="3" style="width:100%;">No withdrawal reason was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberwithdrawal" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원탈퇴 처리 되었습니다.</textarea></td>
                    <td><textarea name="sentence641" rows="3" style="width:100%;">Member withdrawal has been processed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 정보를 알려드립니다.</textarea></td>
                    <td><textarea name="sentence640" rows="3" style="width:100%;">We will inform you of your membership information.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원가입을 축하드립니다.</textarea></td>
                    <td><textarea name="sentence639" rows="3" style="width:100%;">Congratulations on your membership.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원탈퇴 하시면 기존 회원관련 정보가 모두 삭제됩니다.</textarea></td>
                    <td><textarea name="sentence638" rows="3" style="width:100%;">When you unsubscribe, all existing membership information will be deleted.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberwithdrawal" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>탈퇴 사유</textarea></td>
                    <td><textarea name="sentence637" rows="3" style="width:100%;">Reason for withdrawal</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberwithdrawal" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 탈퇴</textarea></td>
                    <td><textarea name="sentence636" rows="3" style="width:100%;">Withdrawal</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberwithdrawal" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>E-MAIL. reel-tech@hanmail.net</textarea></td>
                    <td><textarea name="sentence635" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin
eeltechlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>FAX. 061-723-4440</textarea></td>
                    <td><textarea name="sentence634" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin
eeltechlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>TEL. 061-723-1113</textarea></td>
                    <td><textarea name="sentence633" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin
eeltechlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Order</textarea></td>
                    <td><textarea name="sentence631" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinograelayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Logout</textarea></td>
                    <td><textarea name="sentence630" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinograelayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Account</textarea></td>
                    <td><textarea name="sentence629" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinograelayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Sign Up</textarea></td>
                    <td><textarea name="sentence628" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinograelayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Login</textarea></td>
                    <td><textarea name="sentence627" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinograelayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>오늘하루열지않음</textarea></td>
                    <td><textarea name="sentence626" rows="3" style="width:100%;">Do not open today</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_mainpage" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상호입니다</textarea></td>
                    <td><textarea name="sentence625" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>임시 비밀번호</textarea></td>
                    <td><textarea name="sentence624" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>본 메일은 발신전용이므로 회신이 되지 않습니다.</textarea></td>
                    <td><textarea name="sentence623" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원명</textarea></td>
                    <td><textarea name="sentence622" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디, 비밀번호는 노출되지 않도록 안전하게 관리하시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence621" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>경기도 광주시 도척면 도척로 431-14 (우편번호 : 464-883)</textarea></td>
                    <td><textarea name="sentence620" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사업자 등록번호</textarea></td>
                    <td><textarea name="sentence618" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>김은희</textarea></td>
                    <td><textarea name="sentence617" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>대표자</textarea></td>
                    <td><textarea name="sentence616" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상호</textarea></td>
                    <td><textarea name="sentence614" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinseillayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>대전광역시 유성구 가정로 218, ETRI 융합기술연구생산센터 113-3호</textarea></td>
                    <td><textarea name="sentence613" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skingnxlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>㈜그리닉스</textarea></td>
                    <td><textarea name="sentence612" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skingnxlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Wish list</textarea></td>
                    <td><textarea name="sentence611" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Cart</textarea></td>
                    <td><textarea name="sentence610" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보안을 위해 비밀번호는 정기적으로 변경해 주시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence609" rows="3" style="width:100%;">Please change your password regularly for security.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmember
esult" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>지금부터 본 사이트에서 제공하는 서비스를 이용하실 수 있습니다.</textarea></td>
                    <td><textarea name="sentence608" rows="3" style="width:100%;">From now on, you can use the services provided by this site.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmember
esult" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원가입이 성공적으로 되었습니다!</textarea></td>
                    <td><textarea name="sentence607" rows="3" style="width:100%;">Your membership has been successful!</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmember
esult" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원가입확인</textarea></td>
                    <td><textarea name="sentence606" rows="3" style="width:100%;">Membership confirmation</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일 수신에 동의하시면 여러가지 혜택과 이벤트 정보를 받아 보실 수 있습니다.</textarea></td>
                    <td><textarea name="sentence605" rows="3" style="width:100%;">If you agree to receive emails, you will receive various benefits and events.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>E-mail 수신동의</textarea></td>
                    <td><textarea name="sentence604" rows="3" style="width:100%;">E-mail Receive Agreement</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호 확인을 위해 한번 더 입력하세요.</textarea></td>
                    <td><textarea name="sentence603" rows="3" style="width:100%;">Please enter it again to confirm your password.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호 확인</textarea></td>
                    <td><textarea name="sentence602" rows="3" style="width:100%;">Confirm Password</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>영문소문자와 숫자 포함 8~15자로 입력하세요.</textarea></td>
                    <td><textarea name="sentence601" rows="3" style="width:100%;">Enter between 8 and 15 characters including lowercase letters and numbers.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>중복확인</textarea></td>
                    <td><textarea name="sentence600" rows="3" style="width:100%;">double check</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>영문과 숫자 4~15자로 입력하세요.</textarea></td>
                    <td><textarea name="sentence599" rows="3" style="width:100%;">Please enter between 4 and 15 alphanumeric characters.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호는 4~25자이어야 합니다.</textarea></td>
                    <td><textarea name="sentence598" rows="3" style="width:100%;">Password must be 4-25 characters.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleoardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원수정</textarea></td>
                    <td><textarea name="sentence597" rows="3" style="width:100%;">Modify</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원</textarea></td>
                    <td><textarea name="sentence596" rows="3" style="width:100%;">Member</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입력하신 정보와 일치하는 회원이 없습니다.</textarea></td>
                    <td><textarea name="sentence595" rows="3" style="width:100%;">No members matched the information you entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krlibclassclass.Member" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>기존 비밀번호가 일치하지 않습니다.</textarea></td>
                    <td><textarea name="sentence594" rows="3" style="width:100%;">Existing passwords do not match.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krlibclassclass.Member" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호가 일치하지 않습니다.</textarea></td>
                    <td><textarea name="sentence593" rows="3" style="width:100%;">Passwords do not match.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krlibclassclass.Board" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>판매자에게 메시지를 남길 수 있습니다.<br>최대 500 문자 또는 아라비아 숫자 만 가능합니다. HTML 코드 불가</textarea></td>
                    <td><textarea name="sentence592" rows="3" style="width:100%;">You can leave a message to the seller. <br> Up to 500 characters or Arabic numerals only. No HTML code</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>국가 선택하기</textarea></td>
                    <td><textarea name="sentence591" rows="3" style="width:100%;">Choose your country</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>성</textarea></td>
                    <td><textarea name="sentence590" rows="3" style="width:100%;">last name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly> 이름</textarea></td>
                    <td><textarea name="sentence589" rows="3" style="width:100%;">first name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>우편번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence588" rows="3" style="width:100%;">The postal code is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>State/Province/Region가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence587" rows="3" style="width:100%;">State / Province / Region is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>City가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence586" rows="3" style="width:100%;">City is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Country/Region이 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence585" rows="3" style="width:100%;">Country / Region is not selected.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호는 8 ~ 20 글자 이내로 공백 없이 영문자, 숫자, 특수문자를 혼합하여 입력해주세요.</textarea></td>
                    <td><textarea name="sentence584" rows="3" style="width:100%;">Password must be 8 ~ 20 characters without any spaces, mixed alphabet, numbers and special characters.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>국내 대표 신용카드</textarea></td>
                    <td><textarea name="sentence583" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용가능 카드</textarea></td>
                    <td><textarea name="sentence582" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상세주소</textarea></td>
                    <td><textarea name="sentence581" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>기본주소</textarea></td>
                    <td><textarea name="sentence580" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록된 자료가 없습니다.</textarea></td>
                    <td><textarea name="sentence579" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>희망 목록에서 삭제</textarea></td>
                    <td><textarea name="sentence578" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제조사</textarea></td>
                    <td><textarea name="sentence577" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>다음</textarea></td>
                    <td><textarea name="sentence576" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보 수집 및 이용에 동의합니다.</textarea></td>
                    <td><textarea name="sentence575" rows="3" style="width:100%;">I agree to the collection and use of personal information.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보 수집 및 이용에 대한 안내</textarea></td>
                    <td><textarea name="sentence574" rows="3" style="width:100%;">Information on Collection and Use of Personal Information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>필수</textarea></td>
                    <td><textarea name="sentence573" rows="3" style="width:100%;">necessary</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이용약관에 동의합니다.</textarea></td>
                    <td><textarea name="sentence572" rows="3" style="width:100%;">I accept the Terms and Conditions.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원가입</textarea></td>
                    <td><textarea name="sentence571" rows="3" style="width:100%;">Sign Up</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Facebook 로그인</textarea></td>
                    <td><textarea name="sentence570" rows="3" style="width:100%;">Facebook Login</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디저장</textarea></td>
                    <td><textarea name="sentence569" rows="3" style="width:100%;">save ID</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>로그인</textarea></td>
                    <td><textarea name="sentence568" rows="3" style="width:100%;">Login</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디</textarea></td>
                    <td><textarea name="sentence567" rows="3" style="width:100%;">ID</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원정보에 입력하신 이메일 주소로 새롭게 변경된 비밀번호를 보내드립니다.</textarea></td>
                    <td><textarea name="sentence566" rows="3" style="width:100%;">We will send a new password to the e-mail address you provided in your membership information.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호 찾기</textarea></td>
                    <td><textarea name="sentence565" rows="3" style="width:100%;">Forgot your password</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디 찾기</textarea></td>
                    <td><textarea name="sentence564" rows="3" style="width:100%;">find ID</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일 주소</textarea></td>
                    <td><textarea name="sentence563" rows="3" style="width:100%;">Email Address</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원정보에 입력하신 성함과 이메일 주소를 입력해 주세요.</textarea></td>
                    <td><textarea name="sentence562" rows="3" style="width:100%;">Please enter your name and e-mail address.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디찾기</textarea></td>
                    <td><textarea name="sentence561" rows="3" style="width:100%;">find ID</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디/비밀번호 찾기</textarea></td>
                    <td><textarea name="sentence560" rows="3" style="width:100%;">Find ID / Password</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>위의 개인정보 수집·이용에 동의합니다.</textarea></td>
                    <td><textarea name="sentence559" rows="3" style="width:100%;">I agree to the collection and use of personal information above.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보 수집·이용에 동의하셔야 글쓰기가 가능합니다.</textarea></td>
                    <td><textarea name="sentence558" rows="3" style="width:100%;">You must agree to collect and use your personal information.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>숫자만 입력 가능합니다.</textarea></td>
                    <td><textarea name="sentence557" rows="3" style="width:100%;">Only numbers can be entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>형식이 올바르지 않습니다.\n[-]를 포함해서 정확하게 입력하세요</textarea></td>
                    <td><textarea name="sentence556" rows="3" style="width:100%;">The format is incorrect. \ NPlease enter it correctly, including [-]</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>형식이 올바르지 않습니다.</textarea></td>
                    <td><textarea name="sentence555" rows="3" style="width:100%;">The format is not valid.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>중 1개 이상을 선택 하세요.</textarea></td>
                    <td><textarea name="sentence554" rows="3" style="width:100%;">Please select at least one of them.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence553" rows="3" style="width:100%;">Not selected</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence552" rows="3" style="width:100%;">Not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kr\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>로그인이 필요한 서비스입니다.
로그인 페이지로 이동합니다.</textarea></td>
                    <td><textarea name="sentence551" rows="3" style="width:100%;">This service requires login.
Go to the login page.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopproduct_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>위시리스트에 담았습니다.</textarea></td>
                    <td><textarea name="sentence550" rows="3" style="width:100%;">It is included in the wish list.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshoplatest" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>먼저 로그인을 하세요.</textarea></td>
                    <td><textarea name="sentence549" rows="3" style="width:100%;">Sign in first.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매수량이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence548" rows="3" style="width:100%;">Purchase quantity not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제를 취소 하셨습니다.</textarea></td>
                    <td><textarea name="sentence547" rows="3" style="width:100%;">You canceled your payment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy_mobile_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제 금액이 맞지 않아 결제가 자동 취소처리 되었습니다.</textarea></td>
                    <td><textarea name="sentence546" rows="3" style="width:100%;">Your payment was automatically canceled because your payment was not right.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy_mobile_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금자명이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence545" rows="3" style="width:100%;">The banker name was not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 상세 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence544" rows="3" style="width:100%;">Recipient address is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence543" rows="3" style="width:100%;">The recipient address is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 휴대전화가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence542" rows="3" style="width:100%;">Recipient Your phone is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 email이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence541" rows="3" style="width:100%;">Recipient email is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 이름이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence540" rows="3" style="width:100%;">The recipient name was not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>장바구니가 비어 있습니다.</textarea></td>
                    <td><textarea name="sentence539" rows="3" style="width:100%;">Your shopping cart is empty.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 상품이 삭제 되었습니다.</textarea></td>
                    <td><textarea name="sentence538" rows="3" style="width:100%;">This item has been removed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagewish_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 상품을 장바구니에 담았습니다.</textarea></td>
                    <td><textarea name="sentence537" rows="3" style="width:100%;">Add to Cart</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagewish_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>항목이 없습니다.</textarea></td>
                    <td><textarea name="sentence536" rows="3" style="width:100%;">No items found.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>항목을 선택하여야 합니다.</textarea></td>
                    <td><textarea name="sentence535" rows="3" style="width:100%;">You must select an item.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품 후기가 등록 되었습니다</textarea></td>
                    <td><textarea name="sentence534" rows="3" style="width:100%;">Product Reviews</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypage
eview_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 전화번호가 빠졌습니다. 필수항목입니다.</textarea></td>
                    <td><textarea name="sentence533" rows="3" style="width:100%;">Buyer phone number is missing Required.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 이메일주소가 빠졌습니다. 필수항목입니다.</textarea></td>
                    <td><textarea name="sentence532" rows="3" style="width:100%;">Buyer email address is missing Required.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자명이 빠졌습니다. 필수항목입니다.</textarea></td>
                    <td><textarea name="sentence531" rows="3" style="width:100%;">Buyer name is missing. Required.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품명이 빠졌습니다. 필수항목입니다.</textarea></td>
                    <td><textarea name="sentence530" rows="3" style="width:100%;">Product name is missing. Required.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품주문</textarea></td>
                    <td><textarea name="sentence529" rows="3" style="width:100%;">Order your products.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제방법이 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence528" rows="3" style="width:100%;">No payment method selected</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사업자 등록번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence527" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주민등록번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence526" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>현금영수증 발행 방법이 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence525" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>종목이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence524" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>업태가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence523" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사업자등록번호가 유효하지 않았습니다.</textarea></td>
                    <td><textarea name="sentence522" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence521" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>대표자명이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence520" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence519" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>지출증빙 종류가 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence518" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 전화번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence517" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 상세 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence516" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence515" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 email이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence514" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수취자 상호/이름이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence513" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 전화번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence512" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 상세 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence511" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence510" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 email이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence509" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구매자 상호/이름이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence508" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제금액이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence507" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_payment" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제정보 삭제 되었습니다.</textarea></td>
                    <td><textarea name="sentence506" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품 후기가 등록 되었습니다.</textarea></td>
                    <td><textarea name="sentence505" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문취소 되었습니다.</textarea></td>
                    <td><textarea name="sentence504" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품 수령이 확인 되었습니다.</textarea></td>
                    <td><textarea name="sentence503" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_list_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>내용을 입력하세요</textarea></td>
                    <td><textarea name="sentence502" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>귀하는 본 주문건에 대한 조회 권한이 없습니다.</textarea></td>
                    <td><textarea name="sentence501" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>본 주문에 대한 상품을 수령하셨습니까?</textarea></td>
                    <td><textarea name="sentence500" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 주문건을 정말 취소하시겠습니까?</textarea></td>
                    <td><textarea name="sentence499" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문상태가 유효하지 않습니다.</textarea></td>
                    <td><textarea name="sentence498" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>정말 삭제하시겠습니까?</textarea></td>
                    <td><textarea name="sentence497" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecounseling_view" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>분류가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence496" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>분류가 선택되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence495" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 상품이 삭제되었습니다.</textarea></td>
                    <td><textarea name="sentence494" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecart_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>잘못된 경로로 들어왔습니다.</textarea></td>
                    <td><textarea name="sentence493" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecart_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>정말 삭제 하시겠습니까?</textarea></td>
                    <td><textarea name="sentence492" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수량은 1 이상 입력해야 합니다.</textarea></td>
                    <td><textarea name="sentence491" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>3F, Chung Song Bldg, 605, Samseong-ro, Gangnam-gu, Seoul , Korea)</textarea></td>
                    <td><textarea name="sentence490" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinstemlayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>뷰티 헬스 케어 LU, Lovely You</textarea></td>
                    <td><textarea name="sentence489" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>카트</textarea></td>
                    <td><textarea name="sentence488" rows="3" style="width:100%;">Cart</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_mypage_tabs" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>위시 리스트</textarea></td>
                    <td><textarea name="sentence487" rows="3" style="width:100%;">Wish List</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_mypage_tabs" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>Copyright ⓒ (주)엠디피(MDP Co.,Ltd.) All RIGHT RESERVED.</textarea></td>
                    <td><textarea name="sentence486" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>휴일 : 토요일, 일요일, 공휴일</textarea></td>
                    <td><textarea name="sentence485" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>평일 : 10:00 ~ 17:00 (점심 12:00 ~13:00)</textarea></td>
                    <td><textarea name="sentence484" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객센터</textarea></td>
                    <td><textarea name="sentence482" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객센터 : 02-6419-7007     이메일주소 : ykh@bravomdp.com</textarea></td>
                    <td><textarea name="sentence481" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>서울주소 : 서울시 금천구 가산디지털1로 88 IT프리미어타워 19층</textarea></td>
                    <td><textarea name="sentence480" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>경기주소 : 경기도 고양시 덕양구 삼송로 12, 8층 011호</textarea></td>
                    <td><textarea name="sentence479" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사업자등록번호 : 128-86-64039     통신판매업신고 제 2012-경기고양-253호</textarea></td>
                    <td><textarea name="sentence478" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상호 : (주)엠디피       대표자 : 서우경     개인정보책임자 : 서우경</textarea></td>
                    <td><textarea name="sentence477" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보취급방침</textarea></td>
                    <td><textarea name="sentence476" rows="3" style="width:100%;">Privacy Statement</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이용약관</textarea></td>
                    <td><textarea name="sentence475" rows="3" style="width:100%;">Terms of service</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinmdplayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>팩스</textarea></td>
                    <td><textarea name="sentence474" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객센터 대표전화</textarea></td>
                    <td><textarea name="sentence473" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>경기도 안산시 단원구 엠티브이 20로 12번길 40</textarea></td>
                    <td><textarea name="sentence472" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>전체상품보기</textarea></td>
                    <td><textarea name="sentence471" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshoplist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총금액</textarea></td>
                    <td><textarea name="sentence470" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>젠더옵션</textarea></td>
                    <td><textarea name="sentence469" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제품 주요 성분</textarea></td>
                    <td><textarea name="sentence468" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>스마트폰</textarea></td>
                    <td><textarea name="sentence467" rows="3" style="width:100%;">Smartphone</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>색상</textarea></td>
                    <td><textarea name="sentence466" rows="3" style="width:100%;">color</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>원</textarea></td>
                    <td><textarea name="sentence465" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail@180425_bak" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>교환/반품/배송안내</textarea></td>
                    <td><textarea name="sentence464" rows="3" style="width:100%;">Exchange/Return/Shipping</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품문의</textarea></td>
                    <td><textarea name="sentence463" rows="3" style="width:100%;">Product inquiry</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품후기</textarea></td>
                    <td><textarea name="sentence462" rows="3" style="width:100%;">Product Reviews</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상품상세 설명</textarea></td>
                    <td><textarea name="sentence461" rows="3" style="width:100%;">Product details explanation</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상세설명</textarea></td>
                    <td><textarea name="sentence460" rows="3" style="width:100%;">detailed description</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>바로 구매하기</textarea></td>
                    <td><textarea name="sentence459" rows="3" style="width:100%;">Buy Now</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총 상품금액</textarea></td>
                    <td><textarea name="sentence458" rows="3" style="width:100%;">Total</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>선택하기</textarea></td>
                    <td><textarea name="sentence457" rows="3" style="width:100%;">Choose</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>옵션</textarea></td>
                    <td><textarea name="sentence456" rows="3" style="width:100%;">option</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송</textarea></td>
                    <td><textarea name="sentence454" rows="3" style="width:100%;">delivery</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>용량</textarea></td>
                    <td><textarea name="sentence453" rows="3" style="width:100%;">Volume</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>판매가</textarea></td>
                    <td><textarea name="sentence452" rows="3" style="width:100%;">price</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>모델명</textarea></td>
                    <td><textarea name="sentence451" rows="3" style="width:100%;">model name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>선택옵션</textarea></td>
                    <td><textarea name="sentence450" rows="3" style="width:100%;">Option</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopdetail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>메인으로</textarea></td>
                    <td><textarea name="sentence449" rows="3" style="width:100%;">To main</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제실패</textarea></td>
                    <td><textarea name="sentence448" rows="3" style="width:100%;">Payment failure</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제성공</textarea></td>
                    <td><textarea name="sentence447" rows="3" style="width:100%;">Payment success</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제결과</textarea></td>
                    <td><textarea name="sentence446" rows="3" style="width:100%;">Payment result</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문이 실패 되었습니다.</textarea></td>
                    <td><textarea name="sentence445" rows="3" style="width:100%;">Your order has failed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문이 정상적으로 처리 되었습니다!</textarea></td>
                    <td><textarea name="sentence444" rows="3" style="width:100%;">Your order has been processed normally!</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문완료</textarea></td>
                    <td><textarea name="sentence443" rows="3" style="width:100%;">Order complete</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_result" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문내용 확인</textarea></td>
                    <td><textarea name="sentence442" rows="3" style="width:100%;">Confirm Order Details</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy_confirm" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>무통장 입금 시 금액은 결제 금액과 일치해야만 입금완료 처리되므로 입금금액을 꼭 확인하여 주시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence441" rows="3" style="width:100%;">When depositing the passbook, the amount will be processed only when it matches the payment amount, so please check the amount.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금시간까지 미입금 시 자동 취소 처리 됩니다.</textarea></td>
                    <td><textarea name="sentence440" rows="3" style="width:100%;">If you do not receive your payment by the deposit time, it will be automatically canceled.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금시간 안내</textarea></td>
                    <td><textarea name="sentence439" rows="3" style="width:100%;">Deposit time guide</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>예금주</textarea></td>
                    <td><textarea name="sentence438" rows="3" style="width:100%;">Account Holder</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금계좌</textarea></td>
                    <td><textarea name="sentence437" rows="3" style="width:100%;">Deposit Account</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제방법 선택</textarea></td>
                    <td><textarea name="sentence436" rows="3" style="width:100%;">Choose payment method</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받으실 분에게 전달할 선물메시지를 입력해주세요 (상품 및 배송 요청사항은 반영되지 않습니다.)</textarea></td>
                    <td><textarea name="sentence435" rows="3" style="width:100%;">Please enter a gift message to be sent to the recipient. (Product and delivery requests will not be reflected.)</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>선물 메시지</textarea></td>
                    <td><textarea name="sentence434" rows="3" style="width:100%;">Gift message</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송 메시지</textarea></td>
                    <td><textarea name="sentence433" rows="3" style="width:100%;">Shipping message</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>우편번호</textarea></td>
                    <td><textarea name="sentence432" rows="3" style="width:100%;">Zip code</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송지 주소</textarea></td>
                    <td><textarea name="sentence431" rows="3" style="width:100%;">Shipping address</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 정보와 동일</textarea></td>
                    <td><textarea name="sentence430" rows="3" style="width:100%;">Same as orderer information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>성명</textarea></td>
                    <td><textarea name="sentence429" rows="3" style="width:100%;">name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kshopuy" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>장바구니 이동</textarea></td>
                    <td><textarea name="sentence428" rows="3" style="width:100%;">Go shopping cart</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>장바구니에 상품이 정상적으로 담겼습니다.</textarea></td>
                    <td><textarea name="sentence427" rows="3" style="width:100%;">Your cart has been successfully loaded.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>장바구니 담기</textarea></td>
                    <td><textarea name="sentence426" rows="3" style="width:100%;">Add to cart</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagewish_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문내역이 없습니다.</textarea></td>
                    <td><textarea name="sentence425" rows="3" style="width:100%;">There is no order history.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>운송장 번호</textarea></td>
                    <td><textarea name="sentence424" rows="3" style="width:100%;">waybill number</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송조회</textarea></td>
                    <td><textarea name="sentence423" rows="3" style="width:100%;">Delivery Tracking</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제품</textarea></td>
                    <td><textarea name="sentence422" rows="3" style="width:100%;">product</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>목록으로</textarea></td>
                    <td><textarea name="sentence421" rows="3" style="width:100%;">To list</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>취소신청</textarea></td>
                    <td><textarea name="sentence420" rows="3" style="width:100%;">Application for cancellation</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금만료일까지 입금을 하셔야 정상 처리됩니다.</textarea></td>
                    <td><textarea name="sentence419" rows="3" style="width:100%;">You must make a deposit by the due date before it will be processed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금만료일</textarea></td>
                    <td><textarea name="sentence418" rows="3" style="width:100%;">Deposit Expiration Date</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금자명</textarea></td>
                    <td><textarea name="sentence417" rows="3" style="width:100%;">Depositor Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>예금주명</textarea></td>
                    <td><textarea name="sentence416" rows="3" style="width:100%;">Account Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금은행명</textarea></td>
                    <td><textarea name="sentence415" rows="3" style="width:100%;">Bank Name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입금계좌번호</textarea></td>
                    <td><textarea name="sentence414" rows="3" style="width:100%;">Deposit Account Number</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>승인시간</textarea></td>
                    <td><textarea name="sentence413" rows="3" style="width:100%;">Approval time</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>카드번호</textarea></td>
                    <td><textarea name="sentence412" rows="3" style="width:100%;">card number</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>카드이름</textarea></td>
                    <td><textarea name="sentence411" rows="3" style="width:100%;">Card name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제방법</textarea></td>
                    <td><textarea name="sentence410" rows="3" style="width:100%;">Payment Method</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제금액</textarea></td>
                    <td><textarea name="sentence409" rows="3" style="width:100%;">Amount of payment</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>결제 정보</textarea></td>
                    <td><textarea name="sentence408" rows="3" style="width:100%;">Billing Information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송메시지</textarea></td>
                    <td><textarea name="sentence407" rows="3" style="width:100%;">Shipping message</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>받는사람 정보</textarea></td>
                    <td><textarea name="sentence406" rows="3" style="width:100%;">Recipient Information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>배송비</textarea></td>
                    <td><textarea name="sentence405" rows="3" style="width:100%;">shipping fee</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>총 구매금액</textarea></td>
                    <td><textarea name="sentence404" rows="3" style="width:100%;">Total purchase amount</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개</textarea></td>
                    <td><textarea name="sentence403" rows="3" style="width:100%;">ea</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문 상품</textarea></td>
                    <td><textarea name="sentence402" rows="3" style="width:100%;">Order goods</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>휴대폰 번호</textarea></td>
                    <td><textarea name="sentence401" rows="3" style="width:100%;">Mobile Phone Number</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문자 정보</textarea></td>
                    <td><textarea name="sentence400" rows="3" style="width:100%;">Orderer Information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문일자</textarea></td>
                    <td><textarea name="sentence399" rows="3" style="width:100%;">Order date</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문번호</textarea></td>
                    <td><textarea name="sentence398" rows="3" style="width:100%;">Order Number</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문 정보</textarea></td>
                    <td><textarea name="sentence397" rows="3" style="width:100%;">Order information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문내역 조회</textarea></td>
                    <td><textarea name="sentence396" rows="3" style="width:100%;">Order History Inquiry</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypageorder_detail" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상담내역이 없습니다.</textarea></td>
                    <td><textarea name="sentence395" rows="3" style="width:100%;">There is no consultation.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>첨부파일</textarea></td>
                    <td><textarea name="sentence394" rows="3" style="width:100%;">Attachments</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>분류 선택</textarea></td>
                    <td><textarea name="sentence393" rows="3" style="width:100%;">Select classification</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>직접입력</textarea></td>
                    <td><textarea name="sentence392" rows="3" style="width:100%;">Direct input</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일 선택</textarea></td>
                    <td><textarea name="sentence391" rows="3" style="width:100%;">Select email</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이름</textarea></td>
                    <td><textarea name="sentence390" rows="3" style="width:100%;">name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>답변완료</textarea></td>
                    <td><textarea name="sentence389" rows="3" style="width:100%;">Answer completed</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>답변대기</textarea></td>
                    <td><textarea name="sentence388" rows="3" style="width:100%;">Waiting</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상태</textarea></td>
                    <td><textarea name="sentence387" rows="3" style="width:100%;">condition</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상담하기</textarea></td>
                    <td><textarea name="sentence386" rows="3" style="width:100%;">Consult</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>나의상담목록</textarea></td>
                    <td><textarea name="sentence385" rows="3" style="width:100%;">My consultation list</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>나의 상담목록</textarea></td>
                    <td><textarea name="sentence384" rows="3" style="width:100%;">나의 상담목록</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문내역조회</textarea></td>
                    <td><textarea name="sentence383" rows="3" style="width:100%;">Order History Inquiry</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원정보수정</textarea></td>
                    <td><textarea name="sentence382" rows="3" style="width:100%;">Edit member info.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecounseling_alter" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>계속 쇼핑하기</textarea></td>
                    <td><textarea name="sentence381" rows="3" style="width:100%;">Keep shopping</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주문하기</textarea></td>
                    <td><textarea name="sentence380" rows="3" style="width:100%;">Place an order</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>로그인이 필요한 서비스입니다.
로그인 페이지로 이동하시겠습니까?</textarea></td>
                    <td><textarea name="sentence379" rows="3" style="width:100%;">This service requires a login.
Do you want to go to the login page?</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>장바구니에 담긴 상품이 없습니다.</textarea></td>
                    <td><textarea name="sentence378" rows="3" style="width:100%;">There are no products contained in the shopping cart.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수량감소</textarea></td>
                    <td><textarea name="sentence377" rows="3" style="width:100%;">Quantity decrease</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수량증가</textarea></td>
                    <td><textarea name="sentence376" rows="3" style="width:100%;">Quantity increase</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>합계</textarea></td>
                    <td><textarea name="sentence375" rows="3" style="width:100%;">Sum</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수량</textarea></td>
                    <td><textarea name="sentence374" rows="3" style="width:100%;">Quantity</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>가격</textarea></td>
                    <td><textarea name="sentence373" rows="3" style="width:100%;">price</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제품명</textarea></td>
                    <td><textarea name="sentence372" rows="3" style="width:100%;">product name</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제품 이미지</textarea></td>
                    <td><textarea name="sentence371" rows="3" style="width:100%;">Product image</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kmypagecart_list" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주소</textarea></td>
                    <td><textarea name="sentence370" rows="3" style="width:100%;">address</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>오시는 길</textarea></td>
                    <td><textarea name="sentence369" rows="3" style="width:100%;">location</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객지원</textarea></td>
                    <td><textarea name="sentence368" rows="3" style="width:100%;">Support</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skinfosteclayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>친환경 전기차로 세계 시장을 향해 뻗어가는 전기차 전문기업 대창모터스</textarea></td>
                    <td><textarea name="sentence367" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutlayout_sub" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사이트맵</textarea></td>
                    <td><textarea name="sentence366" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutinc_navigation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>찾아오시는 길</textarea></td>
                    <td><textarea name="sentence365" rows="3" style="width:100%;">location</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutinc_navigation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보 취급방침</textarea></td>
                    <td><textarea name="sentence364" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutinc_navigation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>대표전화 : 043-535-6336 ㅣ FAX : 043-535-6337</textarea></td>
                    <td><textarea name="sentence363" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>충청북도 진천군 이월면 수평 1길 21(사곡리 67-1)</textarea></td>
                    <td><textarea name="sentence362" rows="3" style="width:100%;"></textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skindacmotorslayoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>월</textarea></td>
                    <td><textarea name="sentence360" rows="3" style="width:100%;">M</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_modulecompanyhistory" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보취급방침에 동의 없이 회원가입을 할수 없습니다</textarea></td>
                    <td><textarea name="sentence358" rows="3" style="width:100%;">you can not sign up without agreeing to my privacy policy</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이용약관에 동의 없이 회원가입을 할수 없습니다</textarea></td>
                    <td><textarea name="sentence357" rows="3" style="width:100%;">You can not register without agreeing to the Terms and Conditions</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberstipulation" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입력하신 휴대폰 번호로 인증번호를 발송하였습니다.</textarea></td>
                    <td><textarea name="sentence356" rows="3" style="width:100%;">We have sent an authorization number to your mobile phone number.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>입력해 주세요.</textarea></td>
                    <td><textarea name="sentence355" rows="3" style="width:100%;">Please enter.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>인증코드</textarea></td>
                    <td><textarea name="sentence354" rows="3" style="width:100%;">Authentication Code</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디와 이름, 이메일로 일치하는 회원이 없습니다.</textarea></td>
                    <td><textarea name="sentence353" rows="3" style="width:100%;">No matching members by name, email, or email.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객님이 가입하신 메일로 임시 비밀번호를 발송하였습니다.</textarea></td>
                    <td><textarea name="sentence352" rows="3" style="width:100%;">We have sent you a temporary password for your subscription.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>임시 비밀번호를 알려드립니다.</textarea></td>
                    <td><textarea name="sentence351" rows="3" style="width:100%;">We will inform you of your temporary password.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이름과 이메일로 일치하는 회원이 없습니다.</textarea></td>
                    <td><textarea name="sentence350" rows="3" style="width:100%;">There are no matching members by name and email.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>고객님이 가입하신 메일로 회원 아이디를 발송하였습니다.</textarea></td>
                    <td><textarea name="sentence349" rows="3" style="width:100%;">We sent you a member ID by e-mail.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 아이디를 알려드립니다.</textarea></td>
                    <td><textarea name="sentence348" rows="3" style="width:100%;">We will inform you of your membership ID.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원수정이 완료되었습니다</textarea></td>
                    <td><textarea name="sentence347" rows="3" style="width:100%;">Member editing is complete</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>오류 발생</textarea></td>
                    <td><textarea name="sentence346" rows="3" style="width:100%;">Error occurred</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이미 사용중인 휴대폰 번호 입니다.\n\n다른 휴대폰 번호를 입력하시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence345" rows="3" style="width:100%;">This number is already in use. \
\
Please enter another mobile number.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이미 사용중인 E-mail 입니다.\n\n다른 E-mail을 사용하시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence344" rows="3" style="width:100%;">This e-mail is already being used.\
\
Please use another e-mail.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용 가능한 E-mail 입니다.</textarea></td>
                    <td><textarea name="sentence343" rows="3" style="width:100%;">E-mail available.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이미 사용중인 아이디 입니다.\n\n다른 아이디를 사용하시기 바랍니다.</textarea></td>
                    <td><textarea name="sentence342" rows="3" style="width:100%;">This is the ID you are already using.\
\
Please use a different ID.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>사용 가능한 아이디 입니다.</textarea></td>
                    <td><textarea name="sentence341" rows="3" style="width:100%;">ID available.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회원 아이디가 없거나 비밀번호가 틀립니다</textarea></td>
                    <td><textarea name="sentence340" rows="3" style="width:100%;">회원 아이디가 없거나 비밀번호가 틀립니다</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberlogin_process" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>패스워드가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence339" rows="3" style="width:100%;">No password was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberlogin" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>가입</textarea></td>
                    <td><textarea name="sentence338" rows="3" style="width:100%;">join</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>상세주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence337" rows="3" style="width:100%;">No street address entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>주소가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence336" rows="3" style="width:100%;">No address entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>휴대폰 번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence335" rows="3" style="width:100%;">Your mobile phone number is not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호와 비밀번호 확인이 일치하지 않습니다.</textarea></td>
                    <td><textarea name="sentence334" rows="3" style="width:100%;">Password and password verification do not match.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호 확인이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence333" rows="3" style="width:100%;">Password confirmation was not entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberform" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>아이디가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence332" rows="3" style="width:100%;">No ID was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence331" rows="3" style="width:100%;">No email was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이름이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence330" rows="3" style="width:100%;">No name entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.krmemberfind" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>개인정보 수집·이용 동의</textarea></td>
                    <td><textarea name="sentence329" rows="3" style="width:100%;">Collection and use of personal information</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_moduleformwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>스팸방지를 위해 위쪽에 보이는 보안코드를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence328" rows="3" style="width:100%;">Please enter the security code shown above to prevent spam.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제품소개</textarea></td>
                    <td><textarea name="sentence325" rows="3" style="width:100%;">Introduction of item</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kproductlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>관련사이트</textarea></td>
                    <td><textarea name="sentence324" rows="3" style="width:100%;">Related site</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin2layoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>꿈과 행복을 만들어가는 기업 MIR9</textarea></td>
                    <td><textarea name="sentence323" rows="3" style="width:100%;">A company that makes dreams and happiness MIR9</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin1layoutinc_top_menu" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>대표전화</textarea></td>
                    <td><textarea name="sentence322" rows="3" style="width:100%;">Main Phone</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin1layoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>서울특별시 금천구 벚꽃로 298, 1101호 (가산동, 대륭포스트타워6차)</textarea></td>
                    <td><textarea name="sentence321" rows="3" style="width:100%;">Cherry Blossom Road, 298, 1101, Geumcheon-gu, Seoul (6th floor, Gasan-dong, Daerung Post Tower)</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin1layoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>카탈로그</textarea></td>
                    <td><textarea name="sentence320" rows="3" style="width:100%;">catalogue</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin1layoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>회사소개</textarea></td>
                    <td><textarea name="sentence319" rows="3" style="width:100%;">About Us</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.k\_skin1layoutinc_bottom" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이메일</textarea></td>
                    <td><textarea name="sentence318" rows="3" style="width:100%;">e-mail</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>휴대전화</textarea></td>
                    <td><textarea name="sentence317" rows="3" style="width:100%;">Cell Phone</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>닫기</textarea></td>
                    <td><textarea name="sentence316" rows="3" style="width:100%;">close</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>먼저 비밀번호를 입력하여 주세요.</textarea></td>
                    <td><textarea name="sentence315" rows="3" style="width:100%;">Please enter your password first.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>존재하지 않는 글입니다.</textarea></td>
                    <td><textarea name="sentence314" rows="3" style="width:100%;">It does not exist.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>댓글이 등록 되었습니다.</textarea></td>
                    <td><textarea name="sentence313" rows="3" style="width:100%;">Comments are registered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>파일첨부</textarea></td>
                    <td><textarea name="sentence312" rows="3" style="width:100%;">Attachments</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:htdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>분류</textarea></td>
                    <td><textarea name="sentence310" rows="3" style="width:100%;">Classification</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호를 입력하여 주세요.</textarea></td>
                    <td><textarea name="sentence309" rows="3" style="width:100%;">Please enter your password.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이글은 비밀글입니다.</textarea></td>
                    <td><textarea name="sentence308" rows="3" style="width:100%;">This is a secret.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보안코드</textarea></td>
                    <td><textarea name="sentence307" rows="3" style="width:100%;">Security code</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록</textarea></td>
                    <td><textarea name="sentence306" rows="3" style="width:100%;">Write</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>구분</textarea></td>
                    <td><textarea name="sentence305" rows="3" style="width:100%;">Division</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmobileoardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>작성완료</textarea></td>
                    <td><textarea name="sentence304" rows="3" style="width:100%;">Completed</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=board/write" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>취소</textarea></td>
                    <td><textarea name="sentence303" rows="3" style="width:100%;">cancel</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>파일추가</textarea></td>
                    <td><textarea name="sentence302" rows="3" style="width:100%;">Add files</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>파일</textarea></td>
                    <td><textarea name="sentence301" rows="3" style="width:100%;">file</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>새로고침</textarea></td>
                    <td><textarea name="sentence299" rows="3" style="width:100%;">Refresh</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀글</textarea></td>
                    <td><textarea name="sentence297" rows="3" style="width:100%;">Reply with quote</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>내용</textarea></td>
                    <td><textarea name="sentence296" rows="3" style="width:100%;">Contents</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>공지사항</textarea></td>
                    <td><textarea name="sentence295" rows="3" style="width:100%;">Notice</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>작성일</textarea></td>
                    <td><textarea name="sentence294" rows="3" style="width:100%;">Date Created</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardwebzine" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>다음글</textarea></td>
                    <td><textarea name="sentence293" rows="3" style="width:100%;">Next</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>이전글</textarea></td>
                    <td><textarea name="sentence292" rows="3" style="width:100%;">Prev</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>목록</textarea></td>
                    <td><textarea name="sentence291" rows="3" style="width:100%;">List</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>삭제</textarea></td>
                    <td><textarea name="sentence290" rows="3" style="width:100%;">Delete</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수정</textarea></td>
                    <td><textarea name="sentence289" rows="3" style="width:100%;">Modify</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>답글</textarea></td>
                    <td><textarea name="sentence288" rows="3" style="width:100%;">Reply</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>댓글등록</textarea></td>
                    <td><textarea name="sentence287" rows="3" style="width:100%;">Add comment</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>스팸방지를 위해 왼쪽에 보이는 보안코드를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence286" rows="3" style="width:100%;">Please enter the security code shown on the left to prevent spam.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록된 댓글이 없습니다.</textarea></td>
                    <td><textarea name="sentence285" rows="3" style="width:100%;">There is no registered comment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>조회</textarea></td>
                    <td><textarea name="sentence284" rows="3" style="width:100%;">search</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>글쓴이</textarea></td>
                    <td><textarea name="sentence283" rows="3" style="width:100%;">Writer</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>다운로드</textarea></td>
                    <td><textarea name="sentence282" rows="3" style="width:100%;">download</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardmanual" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>확인</textarea></td>
                    <td><textarea name="sentence281" rows="3" style="width:100%;">Confirm</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>창닫기</textarea></td>
                    <td><textarea name="sentence280" rows="3" style="width:100%;">Close</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호</textarea></td>
                    <td><textarea name="sentence279" rows="3" style="width:100%;">Password</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>먼저 비밀번호를 입력하여 주세요.</textarea></td>
                    <td><textarea name="sentence278" rows="3" style="width:100%;">Please enter your password first.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>공지</textarea></td>
                    <td><textarea name="sentence277" rows="3" style="width:100%;">Notice</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>조회수</textarea></td>
                    <td><textarea name="sentence276" rows="3" style="width:100%;">Views</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록일</textarea></td>
                    <td><textarea name="sentence275" rows="3" style="width:100%;">Reg_date</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>카테고리</textarea></td>
                    <td><textarea name="sentence274" rows="3" style="width:100%;">Category</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>번호</textarea></td>
                    <td><textarea name="sentence273" rows="3" style="width:100%;">Count</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>게시판 목록</textarea></td>
                    <td><textarea name="sentence272" rows="3" style="width:100%;">Board List</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>검색</textarea></td>
                    <td><textarea name="sentence271" rows="3" style="width:100%;">Search</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>게시물 검색</textarea></td>
                    <td><textarea name="sentence270" rows="3" style="width:100%;">Search posts</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>글쓰기</textarea></td>
                    <td><textarea name="sentence269" rows="3" style="width:100%;">Writing</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록된 게시물이 없습니다.</textarea></td>
                    <td><textarea name="sentence268" rows="3" style="width:100%;">No posts have been submitted.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>완료</textarea></td>
                    <td><textarea name="sentence267" rows="3" style="width:100%;">complete</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>진행중</textarea></td>
                    <td><textarea name="sentence266" rows="3" style="width:100%;">Proceeding</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>페이지</textarea></td>
                    <td><textarea name="sentence265" rows="3" style="width:100%;">page</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>건</textarea></td>
                    <td><textarea name="sentence264" rows="3" style="width:100%;">results</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>전체</textarea></td>
                    <td><textarea name="sentence263" rows="3" style="width:100%;">Total</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.koardevent" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>답변</textarea></td>
                    <td><textarea name="sentence262" rows="3" style="width:100%;">Reply</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제목이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence261" rows="3" style="width:100%;">No title entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>작성자가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence260" rows="3" style="width:100%;">No author was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>원글</textarea></td>
                    <td><textarea name="sentence259" rows="3" style="width:100%;">Original article</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardwrite" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>귀하는 본글에 대한 접근 권한이 없습니다.</textarea></td>
                    <td><textarea name="sentence258" rows="3" style="width:100%;">You do not have access to this blog.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>해당 댓글을 삭제하시려면 비밀번호를 입력해주세요.</textarea></td>
                    <td><textarea name="sentence257" rows="3" style="width:100%;">Please enter your password to remove this comment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>내용이 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence256" rows="3" style="width:100%;">No content was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>글쓴이가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence255" rows="3" style="width:100%;">No author was entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>비밀번호가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence254" rows="3" style="width:100%;">The password has not been entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보안코드가 입력되지 않았습니다.</textarea></td>
                    <td><textarea name="sentence253" rows="3" style="width:100%;">No security code entered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>귀하는 본 댓글에 대한 쓰기 권한이 없습니다.</textarea></td>
                    <td><textarea name="sentence252" rows="3" style="width:100%;">You do not have write access to this comment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>댓글 입력을 위해서 먼저 로그인을 하세요.</textarea></td>
                    <td><textarea name="sentence251" rows="3" style="width:100%;">Log in to comment.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardview" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>댓글이 삭제 되었습니다.</textarea></td>
                    <td><textarea name="sentence250" rows="3" style="width:100%;">Your comment has been deleted.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>댓글이 등록 되었습니다.</textarea></td>
                    <td><textarea name="sentence249" rows="3" style="width:100%;">Comments are registered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>삭제 되었습니다.</textarea></td>
                    <td><textarea name="sentence248" rows="3" style="width:100%;">Removed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>수정 되었습니다.</textarea></td>
                    <td><textarea name="sentence247" rows="3" style="width:100%;">It is changed.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>등록 되었습니다.</textarea></td>
                    <td><textarea name="sentence246" rows="3" style="width:100%;">Registered.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>보안코드가 일치하지 않습니다.</textarea></td>
                    <td><textarea name="sentence245" rows="3" style="width:100%;">The security code does not match.</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardprocess" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>작성자</textarea></td>
                    <td><textarea name="sentence244" rows="3" style="width:100%;">Writer</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>제목</textarea></td>
                    <td><textarea name="sentence243" rows="3" style="width:100%;">Title</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kroardlist" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>  <tr>
                    <td><textarea rows="3" style="width:100%; background-color:#dddddd" readonly>메인페이지</textarea></td>
                    <td><textarea name="sentence242" rows="3" style="width:100%;">Main Page</textarea></td>
                    <td style="padding-top:25px;"><a href="?tpf=D:APMhtdocsapi.mir9.co.kmainindex" target="new"><button type="button" class="btn btn-primary btn-xs">보기</button></a></td>
                </tr>                </form>
                </table>

                <br>
                <div align="center">
                <button type="button" onclick="register();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 확인</button>
                </div>

                <div style="text-align:right;">
                    <ul class="pagination" style="margin:0;">
<li class="active"><a href="?tpf=admin/setting/locale&print_data_count=9999&print_page_count=10&page=1">1</a></li>
</ul>                </div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">언어 스크립트</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 생성 내역</p></h4>
            <table class="table table-bordered">
                <tr>
                    <td class="menu">파일 개수</td>
                    <td align="left"><span id="file_count"></span></td>
                </tr>
                <tr>
                    <td class="menu">문장 개수</td>
                    <td align="left"><span id="sentence_count"></span></td>
                </tr>
                <tr>
                    <td class="menu">중복 문장 개수</td>
                    <td align="left"><span id="sentence_duplicate_count"></span></td>
                </tr>
            </table>

            </div>
            <div class="modal-footer">
                <button type="button" onclick="closeModal();" class="btn btn-primary">닫기</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>