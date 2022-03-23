<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="메뉴 관리" name="title"/>
</jsp:include>
<!-- content-wrapper -->
<div class="content-wrapper">
<style>
.table {
    margin-bottom : 0px;
}
</style>

<section class="content-header">
    <h1>
    메뉴 관리
    <small>menu list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">메뉴 관리</a></li>
        <li class="active">메뉴 관리</li>
    </ol>
</section>

<!--  iframe 태그 사용법 익히기 필요 -->

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                <div class="col-xs-3" style="padding:0 5px 0 0;">
                <iframe name="tree" id="iframe_tree" src="?tpf=admin/menu/tree&menu=category" width="100%" scrolling="auto" frameborder="1"></iframe>
                </div>

                <div class="col-xs-9" style="padding:0 5px 0 0;">
                <iframe name="list" id="iframe_list" src="?tpf=admin/menu/list_sub" width="100%" scrolling="auto" frameborder="1"></iframe>
                </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<!-- 리비젼 보기 부터 -->
<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:90%;">
        <div class="modal-content">
            <form name="form_register" method="post" onsubmit="return false;" action="?tpf=admin/menu/process">
            <input type="hidden" name="mode" value="insertMenu">
            <input type="hidden" name="code">
            <input type="hidden" name="category_code">
            <input type="hidden" name="locale" value="ko">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">메뉴 등록</h4>
            </div>
            <div class="modal-body">
            <div class="row" style="margin:0">
                <div class="col-xs-4">
                <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 메뉴 등록</p></h4></span>
                <span style="float:left; padding:5px 0 0 10px;"><button type="button" onclick="onclickManual();" class="btn btn-warning btn-xs"><i class="fa fa-fw fa-question-circle"></i> 프로그램 연동 방법</button></span>
                </div>

                <div class="col-xs-8" style="padding:0">
                <div class="btn-group pull-right">
      <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>      <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>      <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>      <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div>
                </div>
            </div>

            <table class="table table-bordered">
            <tr>
                <td class="menu">메뉴명</td>
                <td align="left"><input type="text" name="title" class="form-control input-sm" /></td>
                <td class="menu">url &nbsp;&nbsp;<input type="checkbox" name="is_outer_link" onclick="checkOuterLink()" value="y"> <small>외부링크</small></td>
                <td align="left">
                <select id="displayOuterLink" name="target" class="form-control input-sm" style="display:none; width:25%; padding:0; margin-right:5px; float:left;">
                <option value="_blank">새창</option>
                <option value="_self">현재창</option>
                </select>
                <input type="text" name="url" class="form-control input-sm" style="width:70%; float:left;" />
                </td>
                <td class="menu">상태</td>
				<td>
                <select name="status" class="form-control input-sm" style="width:100px;">
      <option value="y">보임</option>      <option value="n">숨김</option>                </select>
                </td>
                <td class="menu">헤더선택</td>
                <td>
                <select name="menu_head_code" class="form-control input-sm">
                <option value="">선택하세요</option>
      <option value="40">ABOUT</option>      <option value="41">PRODUCTS</option>      <option value="42">RnD</option>      <option value="43">company</option>      <option value="44">contact</option>                </select>
                </td>
                <td class="menu">메타 태그</td>
                <td align="left"><input type="checkbox" name="is_meta" onclick="checkMeta()" value="y"> 사용</td>
            </tr>
            <tr id="displayMeta" style="display:none;">
                <td class="menu">메타 태그</td>
                <td align="left" colspan="9">
                <span style="float:left; padding:5px 5px 0 0;">title </span>
                <span style="float:left;"><input type="text" name="meta_title" class="form-control input-sm" style="width:500px;" /></span>
                <span style="float:left; padding:5px 5px 0 10px;">description </span>
                <span style="float:left;"><input type="text" name="meta_description" class="form-control input-sm" style="width:500px;" /></span>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="10" style="padding:0">
                <textarea name="content" id="content-editor" onfocus="javascript:this.value=''" rows="10" cols="80"></textarea>
                </td>
            </tr>
            </table>
            </form>
            </div>

            </div>
            <div class="modal-footer">
            <button type="button" id="displayButton" onclick="register();" class="btn btn-primary">저장하기</button>
            <a href="#none" id="previewLink" target="_new"><button type="button" class="btn btn-success">미리보기</button></a>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalManual" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:700px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">프로그램 연동 방법</h4>
            </div>
            <div class="modal-body">

            <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 최신글</p></h4></span>
            <table class="table table-bordered">
            <tr>
                <td class="menu">게시판</td>
                <td align="left">
                [include:tpf=board/latest&board_code=1&print_data_count=5]<br>
                - board_code : 게시판 코드<br>
                - print_data_count : 표출 자료 수<br>
                - <b style="color:red">folder</b> : 메인페이지에 삽입할때만 필요 (공지사항 주소 : http://mir9.co.kr/<b style="color:red">community/notice</b> 일때는 <b style="color:red">community/notice</b> 넣어주면 됨)
                </td>
            </tr>
            <tr>
                <td class="menu">상품</td>
                <td align="left">
                [include:tpf=product/latest&print_data_count=5]<br>
                - print_data_count : 표출 자료 수
                </td>
            </tr>
            <tr>
                <td class="menu">배너</td>
                <td align="left">
                [include:tpf=company/banner&print_data_count=5]<br>
                - print_data_count : 표출 자료 수
                </td>
            </tr>
            </table>
            <br>

            <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 리스트</p></h4></span>
            <table class="table table-bordered">
            <tr>
                <td class="menu">게시판</td>
                <td align="left">[include:tpf=board/list&board_code=1&print_data_count=5]<br>
                - board_code : 게시판 코드<br>
                - print_data_count : 표출 자료 수<br>
                - <b style="color:red">folder</b> : 메인페이지에 삽입할때만 필요 (공지사항 주소 : http://mir9.co.kr/<b style="color:red">community/notice</b> 일때는 <b style="color:red">community/notice</b> 넣어주면 됨)
                </td>
            </tr>
            <tr>
                <td class="menu">상품</td>
                <td align="left">
                [include:tpf=product/list&category_code=1010&is_best=y]<br>
                - category_code : 특정 카테고리만 표출<br>
                - is_best, is_new, is_event : best, new, event 체크된 상품만 표출<br>
                </td>
            </tr>
            <tr>
                <td class="menu">폼메일</td>
                <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;쓰기 : [include:tpf=form/write&form_code=1]<br>
                리스트 : [include:tpf=form/list&form_code=1]<br>
                </td>
            </tr>
            <tr>
                <td class="menu">약도</td>
                <td align="left">
                [include:tpf=form/map&code=1]<br>
                </td>
            </tr>
            <tr>
                <td class="menu">연혁</td>
                <td align="left">
                [include:tpf=company/history]<br>
                [include:tpf=company/history&start_year=2015&end_year=2017]<br>
                - start_year : 시작년도<br>
                - end_year : 종료년도
                </td>
            </tr>
            <tr>
                <td class="menu">사이트맵</td>
                <td align="left">
                [include:tpf=company/sitemap]
                </td>
            </tr>
            <tr>
                <td class="menu">약관</td>
                <td align="left">
                이용약관 : [include:tpf=company/contract&type=provision]<br>
                개인정보 취급방침 : [include:tpf=company/contract&type=privacy]<br>
                이메일 무단수집 거부 : [include:tpf=company/contract&type=email]
                </td>
            </tr>
            </table>
            <br>

            <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> SNS</p></h4></span>
            <table class="table table-bordered">
            <tr>
                <td class="menu">유튜브</td>
                <td align="left">[include:tpf=sns/youtube&id=<b style="color:red">UCCK-O1Qt1MMJMbA-Sy9T000A</b>&height=500]<br>
                해당 채널의 최신 유튜브 동영상 표출<br>
                - id : 채널아이디<br>
                - height : 높이값<br>
                - width : 100% (디폴트)
                </td>
            </tr>
            <tr>
                <td class="menu">facebook</td>
                <td align="left">
                [include:tpf=sns/facebook&id=<b style="color:red">gundamlab</b>&height=500]<br>
                페이스북 타임라인 가져오기<br>
                - id : 페이스북 url (https://www.facebook.com/[id])<br>
                - height : 높이값<br>
                - width : 100% (디폴트)
                </td>
            </tr>
            <tr>
                <td class="menu">instagram</td>
                <td align="left">
                [include:tpf=sns/instagram&accessToken=<b style="color:red">1598429989.bd2f0c8.f7 ~ 3f</b>&limit=5]<br>
                인스타그램 타임라인 가져오기<br>
                - resolution : low(150 x 150), medium(306 x 306 default), high(612 x 612)<br>
                인스타그램 accessToken값 가져오기 : https://www.hooni.net/xe/study/91805<br>
      &nbsp;&nbsp;&nbsp;1. 새로운 Client를 등록<br>
      &nbsp;&nbsp;&nbsp;2. Access_Token 생성 (반드시 [2-2 클라이언트사이드 방식으로 가져오기]로 받기)
                </td>
            </tr>
            </table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="closeManual();" class="btn btn-primary">닫기</button>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalRevision" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:500px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">리비젼 내역</h4>
            </div>
            <div class="modal-body">

            <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> <span id="revisionTitle" style="padding-top:10px;"></span></p></h4></span>
            <span id="htmlTag"></span>
            </div>
            <div class="modal-footer">
            <button type="button" onclick="closeRevision();" class="btn btn-primary">닫기</button>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalCopyMenu" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="formCopyMenu" method="post" action="?tpf=admin/menu/process">
            <input type="hidden" name="mode" id="mode" value="copyMenu">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">메뉴 복사</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 메뉴 <span id="board_sub_title">복사</span></p></h4>
            <table class="table table-bordered">
            <tbody><tr>
                <td class="menu">언어</td>
                <td align="left">
                <select name="menu_locale" id="menu_locale" class="form-control input-sm">
                    <option value="">선택</option>
      <option value="en">ENG</option>      <option value="zh">中国</option>      <option value="vn">Tiếng việt</option>                </select>
                </td>
            </tr>
            </tbody></table>
            </div>

            <div class="modal-footer">
            <button type="button" onclick="registerCopyMenu()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

<form name="formDeleteRevision" method="post" action="?tpf=admin/menu/process">
<input type="hidden" name="mode" value="deleteRevision">
<input type="hidden" name="code">
</form>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>