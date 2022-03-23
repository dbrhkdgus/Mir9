<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="메타 관리" name="title"/>
</jsp:include>
<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    메타 관리
    <small>meta</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>메뉴 관리</li>
        <li class="active">메타 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                <div class="col-xs-8">
                <p class="text-light-blue">
                <i class="fa fa-fw fa-info-circle"></i> 모든 페이지 공통으로 들어가는 메타 태그 입니다.
                <small> (메뉴 관리에서 각 페이지별로 별도의 메타 태그를 만들수도 있습니다.)</small>
                </p>
                </div>

                <div class="col-xs-4" style="padding-bottom:5px">
                <div class="btn-group pull-right">
      <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>      <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>      <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>      <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div>
                </div>

                <table class="table table-bordered">
                <form name="form_register" method="post" action="?tpf=admin/menu/process">
                <input type="hidden" name="mode" value="makeMeta">
                <input type="hidden" name="locale" value="ko">
                <tr>
                    <td class="menu">title</td>
                    <td align="left"><input type="text" name="meta_title" value="" class="form-control input-sm"></td>
                </tr>
                <tr>
                    <td class="menu">description</td>
                    <td align="left"><input type="text" name="meta_description" value="" class="form-control input-sm"></td>
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
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>