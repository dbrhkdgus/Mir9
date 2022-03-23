<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<style>
    .option_tab { display:inline-block; width:130px;}
</style>

<section class="content-header">
    <h1>
    폼메일 관리
    <small>form list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>폼메일 관리</li>
        <li class="active">폼메일 리스트</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 2 건</label>

					<table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/form/process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td>제목</td>
                        <td style="width:120px;">보안코드</td>
                        <td style="width:120px;">개인정보수집</td>
                        <td style="width:400px;">연결주소</td>
                        <td style="width:80px;">등록 글수</td>
                        <td style="width:120px;">등록일</td>
                        <td style="width:220px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="1" /></td>
                        <td>1</td>
                        <td align="left">문의사항</td>
                        <td><i class="fa fa-check"></i></td>
                        <td><i class="fa fa-check"></i></td>
                        <td align="left">[include:tpf=form/write&form_code=1]</td>
                        <td>3</td>
                        <td>2019/06/17 16:25</td>
                        <td>
                        <button type="button" onclick="_onclickView('form',1);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="location.href='/index.php?tpf=admin/form/item&form_code=1'" class="btn btn-warning btn-xs">문항관리</button>&nbsp;
                        <button type="button" onclick="onclickUpdate(1);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="8" /></td>
                        <td>2</td>
                        <td align="left">test</td>
                        <td><i class="fa fa-check"></i></td>
                        <td><i class="fa fa-check"></i></td>
                        <td align="left">[include:tpf=form/write&form_code=8]</td>
                        <td>1</td>
                        <td>2022/02/28 13:16</td>
                        <td>
                        <button type="button" onclick="_onclickView('form',8);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="location.href='/index.php?tpf=admin/form/item&form_code=8'" class="btn btn-warning btn-xs">문항관리</button>&nbsp;
                        <button type="button" onclick="onclickUpdate(8);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleteForm');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 폼메일 생성</button>
					<button type="button" onclick="selectCopyForm()" class="btn btn-warning btn-sm"><i class="fa fa-copy"></i> 폼메일 복제</button>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalRegister" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:600px;">
        <div class="modal-content">
            <form name="form" method="post" action="?tpf=admin/form/process">
            <input type="hidden" name="mode" id="mode">
            <input type="hidden" name="code">
            <input type="hidden" name="locale" value="<br />
<b>Notice</b>:  Undefined variable: locale in <b>/home/demoshop/public_html/html/admin/form/manage.html</b> on line <b>85</b><br />
">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">폼메일 생성</h4>
            </div>
            <div class="modal-body">

            <div class="row" style="margin:0">
                <div class="col-xs-4">
                <span style="float:left;"><h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 폼메일 정보</p></h4></span>
                </div>

                <div class="col-xs-8" style="padding:0">

                </div>
            </div>

            <table class="table table-bordered">
			<tr>
                <td class="menu">제목</td>
                <td align="left"><input type="text" name="title" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">수신 메일 주소</td>
                <td align="left"><input type="text" name="receive_email" placeholder=", 구분" class="form-control input-sm"></td>
            </tr>
            <!--<tr>
                <td class="menu">수신 휴대폰 번호</td>
                <td align="left"><input type="text" name="receive_sms" placeholder=", 구분" class="form-control input-sm"></td>
            </tr>-->
            <tr>
                <td class="menu">보안코드</td>
                <td align="left"><input type="checkbox" name="is_captcha" value="y"> 사용</td>
            </tr>
            <tr>
                <td class="menu">개인정보 수집·이용 동의</td>
                <td align="left">
                <input type="checkbox" name="is_agree" onclick="checkAgree(this.value)" value="y"> 표출
                <textarea name="agree_content" id="agree_content" rows="6" class="form-control input-sm" placeholder="약관정보 입력" style="width:100%;display:none;"></textarea>
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