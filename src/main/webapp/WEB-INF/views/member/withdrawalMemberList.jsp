<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="탈퇴회원 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<link href="http://mir9.co.kr/resource/css/s9soft_juso.css" rel="stylesheet">
<style>
.ui-menu {
    z-index: 9999;
    width:400px;
}
</style>

<section class="content-header">
    <h1>
    탈퇴 회원 관리
    <small>member list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>회원 관리</li>
        <li class="active">탈퇴 회원 리스트</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 0 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/member/list">
                        <div class="has-feedback">
                        <span>
                        <input type="text" name="keyword" id="keyword" value="" class="form-control input-sm" placeholder="검색"/>
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </span>
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                        <select name="field" class="form-control input-sm">
      <option value="name">이름</option>      <option value="mobile">휴대폰</option>                        </select>
                        </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/member/process">
		            <input type="hidden" name="mode" id="mode">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:110px;">아이디</td>
                        <td style="width:110px;">이름</td>
                        <td style="width:110px;">휴대폰</td>
                        <td>주소</td>
                        <td style="width:120px;">가입일</td>
                        <td style="width:50px;">상태</td>
                        <td style="width:60px;">명령</td>
                    </tr>
                    </thead>
      <tr><td colspan="10"><br>등록된 자료가 없습니다.<br><br></td></tr>                    </form>
                    </table>
                    <br>
                    <button type="button" onclick="selectDelete('delete','선택된 회원을 삭제하시겠습니까?');" class="btn btn-danger"><i class="fa fa-minus-square"></i> 선택삭제</button>
<!--    // 관리자단에서 회원가입 숨김
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary">등록</button>
                    <button type="button" onclick="onclickSMS();" class="btn btn-danger"><i class="fa fa-bell"></i> SMS발송</button>
-->

                    <div style="text-align:right;">
                        <? echo $data['page'];?>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<form name="formID" method="post" onsubmit="return false;" action="?tpf=admin/member/process">
<input type="hidden" name="mode" value="checkId">
<input type="hidden" name="id">
</form>

<!-- // 회원 등록 폼 -->
<div class="modal fade" id="modalRegister" z-index:10; role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:620px;">
        <div class="modal-content">
            <form name="form" method="post" onsubmit="return false;" action="?tpf=admin/member/process">
            <input type="hidden" name="mode">
            <input type="hidden" name="member_code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">회원 등록</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 회원정보</p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">아이디</td>
                <td align="left"><input type="text" name="id" class="form-control input-sm" style="width:30%; float:left;" />&nbsp;<button type="button" id="btn_check_id" class="btn btn-sm btn-default" onclick="onclickCheckId();">아이디 중복확인</button> 4~12자로 입력하세요.</td>
            </tr>
            <tr>
                <td class="menu">비밀번호</td>
                <td align="left"><input type="password" name="password" placeholder="" class="form-control input-sm" style="width:30%; float:left;" /> 대소문자와 숫자 포함 8~15자로 입력하세요</td>
            </tr>
            <tr>
                <td class="menu">비밀번호 확인</td>
                <td align="left"><input type="password" name="password_confirm" placeholder="" class="form-control input-sm" style="width:30%;" /></td>
            </tr>
            <tr>
                <td class="menu">이름</td>
                <td align="left"><input type="text" name="name" class="form-control input-sm" style="width:30%;" /></td>
            </tr>
            <tr>
                <td class="menu">휴대폰</td>
                <td align="left">
                <select name="mobile1" class="form-control input-sm" style="width:15%; float:left;">
      <option value="010">010</option>      <option value="011">011</option>      <option value="016">016</option>      <option value="017">017</option>      <option value="018">018</option>      <option value="019">019</option>                </select> <span style="float:left;">-</span>
                <input type="text" name="mobile2" onkeyup="this.value=checkNum(this.value)" class="form-control input-sm" style="width:15%; float:left;" maxlength="4" /> <span style="float:left;">-</span>
                <input type="text" name="mobile3" onkeyup="this.value=checkNum(this.value)" class="form-control input-sm" style="width:15%; float:left;" maxlength="4" />
                </td>
            </tr>
            <tr>
                <td class="menu">이메일</td>
                <td align="left"><input type="text" name="email" class="form-control input-sm" style="width:60%;" /></td>
            </tr>
            <tr>
                <td class="menu">주소</td>
                <td align="left">
                <input type="text" name="zipcode" id="zipcode" readonly class="form-control input-sm" style="width:15%; background-color:#dddddd; float:left;" />&nbsp;<button type="button" onclick="callAddress();" class="btn btn-sm btn-default">주소입력</button><br>
                <input type="text" class="input-addr" id="address" placeholder="주소입력 예) 느티마을4단, ㄱㄴㅍㅇㄴㅅ, 여의 메리츠, 행자부, 목동아파트, 테헤란로 152" style="display:none; margin:5px 0; width:100%;">
                <input type="text" name="addr" id="addr" readonly class="form-control input-sm" style="margin:5px 0; width:100%;  background-color:#dddddd;" />
                <input type="text" name="addr_etc" id="addr_etc" placeholder="상세주소" class="form-control input-sm" style="width:100%;" />
                </td>
            </tr>
            <tr>
                <td class="menu">메모</td>
                <td align="left"><textarea name="memo" id="memo" rows="4" class="form-control input-sm" style="width:100%;"></textarea></td>
            </tr>
            <tr>
                <td class="menu">탈퇴사유</td>
                <td align="left"><textarea name="reason" id="reason" rows="4" class="form-control input-sm" style="width:100%;"></textarea></td>
            </tr>
            <tr id="display_level">
                <td class="menu">등급 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td>
                <select name="level" id="level" class="form-control input-sm" style="width:120px;">
      <option value="1">슈퍼관리자</option>      <option value="2">회원</option>      <option value="3">ㅈㅇㅇㅈ</option>                </select>
                </td>
            </tr>
            <tr id="display_status">
                <td class="menu">상태 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td>
                <select name="status" id="status" class="form-control input-sm" style="width:120px;">
      <option value="y">정상</option>      <option value="n">대기</option>                </select>
                </td>
            </tr>
            <tr id="display_last_login_date">
                <td class="menu">최근 접속일</td>
                <td align="left"><span id="last_login_date"></span></td>
            </tr>
            <tr id="display_update_date">
                <td class="menu">수정일자</td>
                <td align="left"><span id="update_date"></span></td>
            </tr>
            <tr id="display_reg_date">
                <td class="menu">등록일자</td>
                <td align="left"><span id="reg_date"></span></td>
            </tr>
            <tr id="display_reg_date">
                <td class="menu">탈퇴일</td>
                <td align="left"><span id="withdraw_date"></span></td>
            </tr>
            <tr id="display_reg_date">
                <td class="menu">탈퇴사유</td>
                <td align="left"><span id="reason"></span></td>
            </tr>
            </table>
            </form>
            </div>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register();" class="btn btn-primary">저장</button>
            <!--<button type="button" onclick="deleteMember();" class="btn btn-danger">삭제</button>-->
            </div>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>