<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="약관" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    약관
    <small>contract list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">약관</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                <div class="col-xs-12" style="padding:0 0 5px 0;">
                <div class="btn-group pull-right">
      <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>      <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>      <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>      <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                </div>
                </div>

                <table class="table table-bordered">
                <form name="form_register" method="post" action="?tpf=admin/setting/process">
                <input type="hidden" name="mode" value="contract">
                <input type="hidden" name="locale" value="ko">
                <tr>
                    <td class="menu">이용약관</td>
                    <td align="left"><textarea name="provision" rows="10" style="width:100%;"></textarea></td>
                </tr>
                <tr>
                    <td class="menu">개인정보 취급방침</td>
                    <td align="left"><textarea name="privacy" rows="10" style="width:100%;"></textarea></td>
                </tr>
                <tr>
                    <td class="menu">이메일 무단수집 거부</td>
                    <td align="left"><textarea name="email" rows="10" style="width:100%;"></textarea></td>
                </tr>
                <tr>
                    <td class="menu">개인정보 수집·이용 동의(게시판 전용)</td>
                    <td align="left"><textarea name="personal" rows="10" style="width:100%;"></textarea></td>
                </tr>
<!--    // 추가 약관 (필요하면 커멘트 제거 하고 사용할것)
                <tr>
                    <td class="menu">고유식별정보처리</td>
                    <td align="left"><textarea name="distinguish" rows="10" style="width:100%;"></textarea></td>
                </tr>
-->
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