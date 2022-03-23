<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="메일 설정" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<style>
textarea {
    width:180px;
    height:100px;
}
</style>

<section class="content-header">
    <h1>
    메일 설정
    <small>sms setting</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>커뮤니티 관리</li>
        <li class="active">메일 설정</li>
    </ol>
</section>

<section class="content">
<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-body">

                <form name="form_register" method="post" action="/index.php?tpf=admin/community/email_process">
                <input type="hidden" name="mode" value="updateEmail">
                <input type="hidden" name="locale" value="ko">

				<h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 메일 발송 문구 설정 </p></h4>
                <div style="text-align:right;">
<button type="button" id="locale_ko" onclick="parent.location.href='?tpf=admin/community/email&locale=ko'" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button><button type="button" id="locale_en" onclick="parent.location.href='?tpf=admin/community/email&locale=en'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button><button type="button" id="locale_zh" onclick="parent.location.href='?tpf=admin/community/email&locale=zh'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button><button type="button" id="locale_vn" onclick="parent.location.href='?tpf=admin/community/email&locale=vn'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div></br>

				<table class="table table-bordered table-hover">
				<thead>
                    <tr>
                        <td rowspan="3" class="menu" style="width:350px;">발송항목</td>
						<td colspan="4">발송대상 및 메일 문구설정</td>
						<td rowspan="3" class="menu" style="width:350px;">치환문구 설명</td>
                    </tr>
					<tr>
                        <td colspan="2">회원</td>
						<td colspan="2">관리자</td>
                    </tr>
                    <tr>
                        <td>자동발송</td>
						<td>문구</td>
                        <td>자동발송</td>
						<td>문구</td>
                    </tr>
                </thead>
                <tbody>
      <tr>
                    <input type="hidden" name="msg[join][code]" value="10" />
					<td class="content">회원가입</td>
                    <td class="content"><input type="checkbox" name="msg[join][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('10','join');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[join][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('10','join','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{user_name}} : 회원명</li>		    <li>{{user_id}} : 회원 아이디</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[findid][code]" value="47" />
					<td class="content">아이디 찾기<br>[아이디 찾기시]</td>
                    <td class="content"><input type="checkbox" name="msg[findid][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('47','findid');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[findid][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('47','findid','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{user_name}} : 회원명</li>		    <li>{{user_id}} : 회원 아이디</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[findpw][code]" value="43" />
					<td class="content">임시비밀번호 발급알림<br>[비밀번호 찾기시]</td>
                    <td class="content"><input type="checkbox" name="msg[findpw][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('43','findpw');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[findpw][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('43','findpw','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{user_id}} : 회원 아이디</li>		    <li>{{tmp_password}} : 임시비밀번호</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[order][code]" value="11" />
					<td class="content">주문접수<br>[무통장/카드 결제시]</td>
                    <td class="content"><input type="checkbox" name="msg[order][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('11','order');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[order][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('11','order','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[pay_done][code]" value="12" />
					<td class="content">입금확인<br>[무통장 입금 완료시]</td>
                    <td class="content"><input type="checkbox" name="msg[pay_done][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('12','pay_done');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[pay_done][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('12','pay_done','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[delivery_ready][code]" value="49" />
					<td class="content">상품 배송 준비중<br>[주문상태 배송준비중으로 변경시]</td>
                    <td class="content"><input type="checkbox" name="msg[delivery_ready][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('49','delivery_ready');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[delivery_ready][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('49','delivery_ready','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[delivery_ing][code]" value="13" />
					<td class="content">상품 배송중<br>[주문상태 배송중으로 변경시]</td>
                    <td class="content"><input type="checkbox" name="msg[delivery_ing][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('13','delivery_ing');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[delivery_ing][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('13','delivery_ing','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[delivery_done][code]" value="50" />
					<td class="content">상품 배송 완료<br>[주문상태 배송완료로 변경시]</td>
                    <td class="content"><input type="checkbox" name="msg[delivery_done][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('50','delivery_done');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[delivery_done][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('50','delivery_done','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[order_cancel][code]" value="14" />
					<td class="content">주문취소<br>[주문 취소시]</td>
                    <td class="content"><input type="checkbox" name="msg[order_cancel][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('14','order_cancel');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[order_cancel][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('14','order_cancel','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[refund][code]" value="15" />
					<td class="content">환불완료<br>[주문상태 환불완료로 변경시]</td>
                    <td class="content"><input type="checkbox" name="msg[refund][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('15','refund');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[refund][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('15','refund','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{payment_status}} : 결제 상태</li>		    <li>{{order_number}} : 주문번호</li>		    <li>{{order_date}} : 주문 일자</li>		    <li>{{order_first_name}} : 주문자 성</li>		    <li>{{order_name}} : 주문자명</li>		    <li>{{order_email}} : 주문자 이메일</li>		    <li>{{order_mobile}} : 주문자 휴대폰 번호</li>		    <li>{{order_list}} : 주문 내역</li>		    <li>{{receiver_first_name}} : 수신자 성</li>		    <li>{{receiver_name}} : 수신자 이름</li>		    <li>{{receiver_email}} : 수신자 이메일</li>		    <li>{{receiver_mobile}} : 수신자 휴대폰 번호</li>		    <li>{{receiver_addr}} : 수신자 주소</li>		    <li>{{request_message}} : 요청 메세지</li>		    <li>{{payment_info}} : 결제 정보</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[point][code]" value="16" />
					<td class="content">적립금 적립<br>[개별 적립금 적립시]</td>
                    <td class="content"><input type="checkbox" name="msg[point][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('16','point');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[point][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('16','point','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{point}} : 포인트</li>		    <li>{{point_type}} : 포인트 구분</li>			    </ul>
					</td>
                </tr>      <tr>
                    <input type="hidden" name="msg[coupon][code]" value="18" />
					<td class="content">쿠폰 지급<br>[개별 쿠폰 지급시]</td>
                    <td class="content"><input type="checkbox" name="msg[coupon][is_send]" value="y" checked/></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('18','coupon');" class="btn btn-primary btn-xs">편집</button></td>
                    <td class="content"><input type="checkbox" name="msg[coupon][is_send_admin]" value="y" /></td>
                    <td class="content">
                    <button type="button" onclick="onclickUpdate('18','coupon','admin');" class="btn btn-primary btn-xs">편집</button>
                    </td>
                    <td align="left">
						<ul>		    <li>{{shop_name}} : 사이트명</li>		    <li>{{coupon_name}} : 쿠폰명</li>		    <li>{{date}} : 유효기간</li>			    </ul>
					</td>
                </tr>				</tbody>
                </table>
                <br>

				</form>

                <div style="text-align:center;"><button type="button" onclick="register()" class="btn btn-primary">확인</button></div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:1000px;">
        <div class="modal-content">
            <form name="formContent" method="post" action="?tpf=admin/community/email_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="update">
            <input type="hidden" name="code" id="code">
            <input type="hidden" name="action" id="action">
            <input type="hidden" name="is_admin" id="is_admin">
            <input type="hidden" name="locale" id="locale" value="ko">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">메일 문구설정 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 메일 문구설정</h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">제목</td>
                <td align="left">
                <span style="float:left;width:80%;"><input type="text" name="title" id="title" class="form-control input-sm"></span>
                </td>
            </tr>
            <tr>
                <td class="menu">내용</td>
                <td align="left"><textarea name="content" id="content" rows="10" cols="80"></textarea></td>
            </tr>
            </table>
            </div>
            <div class="modal-footer">
            <button type="button" onclick="registerContent()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            <button type="button" onclick="getDefaultTemplate();" class="btn btn-warning">기본문구 가져오기</button>
            </div>
            </form>
        </div>
    </div>
</div>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>