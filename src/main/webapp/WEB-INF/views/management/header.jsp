<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="헤더 관리" name="title"/>
</jsp:include>
<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    헤더 관리
    <small>head list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">메뉴 관리</a></li>
        <li class="active">헤더 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/menu/process">
		            <input type="hidden" name="mode" id="mode">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td>헤더명</td>
                        <td style="width:55px;">상태</td>
                        <td style="width:60px;">
                        <i onclick="changeOrder('down','menu_head','?tpf=admin/menu/head');" class="fa fa-fw fa-arrow-circle-down cp" style="cursor:pointer"></i>
                        <i onclick="changeOrder('up','menu_head','?tpf=admin/menu/head');" class="fa fa-fw fa-arrow-circle-up cp" style="cursor:pointer"></i>
                        </td>
                        <td style="width:60px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="40" /></td>
                        <td>ABOUT</td>
                        <td><button type="button" class="btn btn-success btn-xs">보임</button></td>
                        <td><input type="radio" name="order_code" value="1" /></td>
                        <td><button type="button" onclick="onclickUpdate(40);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="41" /></td>
                        <td>PRODUCTS</td>
                        <td><button type="button" class="btn btn-success btn-xs">보임</button></td>
                        <td><input type="radio" name="order_code" value="2" /></td>
                        <td><button type="button" onclick="onclickUpdate(41);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="42" /></td>
                        <td>RnD</td>
                        <td><button type="button" class="btn btn-success btn-xs">보임</button></td>
                        <td><input type="radio" name="order_code" value="3" /></td>
                        <td><button type="button" onclick="onclickUpdate(42);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="43" /></td>
                        <td>company</td>
                        <td><button type="button" class="btn btn-success btn-xs">보임</button></td>
                        <td><input type="radio" name="order_code" value="4" /></td>
                        <td><button type="button" onclick="onclickUpdate(43);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="44" /></td>
                        <td>contact</td>
                        <td><button type="button" class="btn btn-success btn-xs">보임</button></td>
                        <td><input type="radio" name="order_code" value="5" /></td>
                        <td><button type="button" onclick="onclickUpdate(44);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleteHead');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square" aria-hidden="true"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 헤더 등록</button>
                    
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:90%">
        <div class="modal-content">
            <form name="form_register" method="post" onsubmit="return false;" action="?tpf=admin/menu/process">
            <input type="hidden" name="mode" value="insertHead">
            <input type="hidden" name="code">
            <input type="hidden" name="locale" value="ko">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">헤더 등록</h4>
            </div>
            <div class="modal-body">
            <div class="row">
                <div class="col-xs-4">
                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 헤더 등록</p></h4>
                </div>

                <div class="col-xs-8">
                <div class="btn-group pull-right">
      <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>      <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>      <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>      <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div>
                </div>
            </div>

            <table class="table table-bordered">
            <tr>
                <td class="menu">헤더명</td>
                <td align="left"><input type="text" name="title" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">상태</td>
                <td>
                <select name="status" class="form-control input-sm" style="width:100px;">
      <option value="y">보임</option>      <option value="n">숨김</option>                </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:left">
                ※ [menu] : 본 태그를 삽입시 각각의 서브페이지의 메뉴명을 표출 해 줍니다.
                <textarea name="content" id="content-editor" rows="10" cols="80"></textarea>
                </td>
            </tr>
            </table>
            </form>
            </div>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register();" class="btn btn-primary">저장하기</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalCopyHeader" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="formCopyHeader" method="post" action="?tpf=admin/menu/process">
            <input type="hidden" name="mode" id="mode" value="copyHeader">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">헤더 복사</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 헤더 <span id="board_sub_title">복사</span></p></h4>
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
            <button type="button" onclick="registerCopyHeader()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>