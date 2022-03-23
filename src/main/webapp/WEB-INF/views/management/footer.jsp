<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="하단 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    하단 관리
    <small>bottom</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>메뉴 관리</li>
        <li class="active">하단 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                <div class="col-xs-8">
                <p class="text-light-blue">
                <i class="fa fa-fw fa-info-circle"></i> 모든 페이지 공통으로 들어가는 하단 카피라이터 입니다.
                </p>
                </div>

                <div class="col-xs-4" style="padding-bottom:5px">
                <div class="btn-group pull-right">
      <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>      <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>      <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>      <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div>
                </div>

                <table class="table table-bordered">
                <form name="form_register" method="post" action="?tpf=admin/menu/process">
                <input type="hidden" name="mode" value="makeBottom">
                <input type="hidden" name="locale" value="ko">
                <tr>
                    <td>
                    <textarea name="content" id="content-editor" onfocus="javascript:this.value=''" rows="10" cols="80"></textarea>
                    </td>
                </tr>
                </form>
                </table>

                <br>
                <div align="center">
                    <button type="button" onclick="register();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 확인</button>
                     
                </div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalCopyFooter" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="formCopyFooter" method="post" action="?tpf=admin/menu/process">
            <input type="hidden" name="mode" id="mode" value="copyFooter">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">푸터 복사</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 푸터 <span id="board_sub_title">복사</span></p></h4>
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
                <button type="button" onclick="registerCopyFooter()" class="btn btn-primary">확인</button>                  
            </div>
            </form>
        </div>
    </div>
</div>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>