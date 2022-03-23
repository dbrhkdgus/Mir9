<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시판 관리" name="title"/>
</jsp:include>
 <!-- content-wrapper -->
<div class="content-wrapper">
<style>
.option_tab { display:inline-block; width:130px;}
</style>

<section class="content-header">
    <h1>
    게시판 관리
    <small>게시판 list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>게시판 관리</li>
        <li class="active">게시판 리스트</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 3 건</label>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/board/manage_process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td>제목</td>
                        <td style="width:250px;">연결주소</td>
                        <td style="width:100px;">type</td>
                        <td style="width:80px;">등록 글수</td>
                        <td style="width:220px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="1" /></td>
                        <td>1</td>
                        <td align="left">공지사항</td>
                        <td align="left">[include:tpf=board/list&board_code=1]</td>
                        <td>갤러리</td>
                        <td>1</td>
                        <td>
                        <button type="button" onclick="_onclickView('board',1);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="onclickCopy(1);" class="btn btn-warning btn-xs">링크복사</button>
                        <button type="button" onclick="onclickUpdate(1);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="2" /></td>
                        <td>2</td>
                        <td align="left">자주하는 질문</td>
                        <td align="left">[include:tpf=board/list&board_code=2]</td>
                        <td>FAQ</td>
                        <td>0</td>
                        <td>
                        <button type="button" onclick="_onclickView('board',2);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="onclickCopy(2);" class="btn btn-warning btn-xs">링크복사</button>
                        <button type="button" onclick="onclickUpdate(2);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="3" /></td>
                        <td>3</td>
                        <td align="left">1:1 문의</td>
                        <td align="left">[include:tpf=board/list&board_code=3]</td>
                        <td>갤러리</td>
                        <td>0</td>
                        <td>
                        <button type="button" onclick="_onclickView('board',3);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="onclickCopy(3);" class="btn btn-warning btn-xs">링크복사</button>
                        <button type="button" onclick="onclickUpdate(3);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleteBoard');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 게시판 생성</button>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalRegister" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:600px;">
        <div class="modal-content">
            <form name="form" method="post" action="?tpf=admin/board/manage_process">
            <input type="hidden" name="mode" id="mode">
            <input type="hidden" name="board_code" id="board_code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">게시판 생성</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 게시판 정보</p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">제목</td>
                <td align="left" colspan="3"><input type="text" name="title" id="title" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">종류 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td colspan="3">
                <select name="type" id="type" class="form-control input-sm" style="width:120px;">
      <option value="list">일반</option>      <option value="gallery">갤러리</option>      <option value="qna">FAQ</option>      <option value="webzine">웹진</option>      <option value="movie">동영상</option>      <option value="event">이벤트</option>      <option value="manual">메뉴얼</option>      <option value="brochure">브로슈어</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">카테고리</td>
                <td align="left" colspan="3"><input type="text" name="category" id="category" class="form-control input-sm" placeholder=",(콤마)로 구분해 주세요"></td>
            </tr>
            <tr>
                <td class="menu">수신 메일 주소</td>
                <td align="left" colspan="3"><input type="text" name="receive_email" placeholder=", 구분" class="form-control input-sm"></td>
            </tr>
<!--
            <tr>
                <td class="menu">리스트 표출</td>
                <td align="left">
                <input type="radio" name="show_list" id="show_list_y" value="y">사용&nbsp;&nbsp;
                <input type="radio" name="show_list" id="show_list_n" value="n">숨김&nbsp;&nbsp;
                <span class="text-light-blue">※ 글 상세보기에서 리스트가 표출됩니다.<span>
                </td>
            </tr>
-->
            <tr>
                <td class="menu">리스트 권한</td>
                <td align="left">
                <select name="auth_list" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
                <td class="menu">보기 권한</td>
                <td align="left">
                <select name="auth_view" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">쓰기 권한</td>
                <td align="left">
                <select name="auth_write" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
                <td class="menu">수정 권한</td>
                <td align="left">
                <select name="auth_update" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">삭제 권한</td>
                <td align="left">
                <select name="auth_delete" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
                <td class="menu">답변 권한</td>
                <td align="left">
                <select name="auth_reply" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">공지 권한</td>
                <td align="left">
                <select name="auth_notice" class="form-control input-sm" style="width:120px;">
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
                <td class="menu">댓글 권한</td>
                <td align="left">
                <select name="auth_memo" class="form-control input-sm" style="width:120px;">
                <option value="0">비회원</option>
      <option value="3">ㅈㅇㅇㅈ</option>      <option value="2">회원</option>      <option value="1">슈퍼관리자</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">기타 옵션</td>
                <td align="left" colspan="3">
                <span class="option_tab"><input type="checkbox" name="is_notice" value="y">공지기능</span>
                <span class="option_tab"><input type="checkbox" name="show_memo" value="y">댓글</span>
                <span class="option_tab"><input type="checkbox" name="is_secret" value="y">비밀글</span>
                <span class="option_tab"><input type="checkbox" name="is_reply" value="y">답변기능</span>
                <span class="option_tab"><input type="checkbox" name="is_captcha" value="y">도용방지문자</span>
                <span class="option_tab"><input type="checkbox" name="is_mass" value="y">대용량 업로드</span>
                <span class="option_tab"><input type="checkbox" name="is_order" value="y">순서변경</span>
                <span class="option_tab" style="width:263px;"><input type="checkbox" name="is_addinfo" value="y">추가정보(휴대전화,이메일)</span>
                <span class="option_tab"><input type="checkbox" name="is_popup" value="y">상세보기(팝업)</span>
                </td>
            </tr>
            <tr>
                <td class="menu">구글번역 언어</td>
                <td align="left" colspan="3">
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_ko" value="ko">한국어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_en" value="en">영어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_zh-CN" value="zh-CN">중국어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_ja" value="ja">일본어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_de" value="de">독일어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_vi" value="vi">베트남어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_es" value="es">스페인어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_ar" value="ar">아랍어</span>
                <span class="option_tab"><input type="checkbox" name="google_translate[]" id="google_th" value="th">태국어</span>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                <textarea name="header" id="header" rows="6" class="form-control input-sm" placeholder="상단에 들어갈 css" style="width:100%;"></textarea>
                </td>
            </tr>
            </table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>