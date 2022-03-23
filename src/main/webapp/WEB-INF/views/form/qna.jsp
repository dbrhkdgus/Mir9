<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="문의사항 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    문의사항 관리
    <small>문의사항 list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">문의사항 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 3 건</label>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/form/process">
		            <input type="hidden" name="mode" id="mode">
		            <input type="hidden" name="form_code" value="1">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td style="width:120px;">등록일</td>
                        <td style="width:80px;">
                            <i onclick="changeOrder('down','form_reply','?tpf=admin/form/list&form_code=1',1,'ko','',);" class="fa fa-fw fa-arrow-circle-down cp" style="cursor:pointer;"></i>
                            <i onclick="changeOrder('up','form_reply','?tpf=admin/form/list&form_code=1',1,'ko','',);" class="fa fa-fw fa-arrow-circle-up cp" style="cursor:pointer;"></i>
                        </td>
                        <td style="width:60px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="10" /></td>
                        <td>3</td>          <td>2022/02/28 15:56</td>
                        <td><input type="radio" name="order_code" value="-4" /></td>
                        <td><button type="button" onclick="onclickUpdate(10);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="9" /></td>
                        <td>2</td>          <td>2022/02/28 13:24</td>
                        <td><input type="radio" name="order_code" value="-3" /></td>
                        <td><button type="button" onclick="onclickUpdate(9);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="7" /></td>
                        <td>1</td>          <td>2022/02/28 13:12</td>
                        <td><input type="radio" name="order_code" value="-1" /></td>
                        <td><button type="button" onclick="onclickUpdate(7);" class="btn btn-primary btn-xs">수정하기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleReply');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 등록</button>
                    <button type="button" onclick="onclickCopyContent();" class="btn btn-warning btn-sm" style="margin-left:20px;"><i class="fa fa-copy"></i> 리스트 복사</button>
                    <button type="button" onclick="downloadExcel();" class="btn btn-warning btn-sm"><i class="fa fa-file-excel-o"></i> Excel 다운로드</button>
                    <form name="form_download" method="post" action="?tpf=admin/form/process">
                        <input type="hidden" name="mode" value="downloadExcel">
                        <input type="hidden" name="form_code" value="1">
                        <input type="hidden" name="search_data">
                    </form>

                    <div style="text-align:right;">
                        <ul class="pagination" style="margin:0;">
<li class="active"><a href="?tpf=admin/form/list&form_code=1&locale=ko&code=1&page=1">1</a></li>
</ul>                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:800px;">
        <div class="modal-content">
            <form name="formRegister" method="post" onsubmit="return false;" action="?tpf=admin/form/process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insertReply">
            <input type="hidden" name="code" id="code">
            <input type="hidden" name="form_code" id="form_code">
            <input type="hidden" name="locale" id="locale">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">정보 등록</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 정보 등록</p></h4>
            <table class="table table-bordered">
      <tr>
                        <td class="menu">Name</td>
                        <td align="left">  <input type="text" name="data15" placeholder="" class="form-control input-sm" />          </td>
                    </tr>      <tr>
                        <td class="menu">E-mail</td>
                        <td align="left">  <input type="text" name="data16" placeholder="" class="form-control input-sm" />          </td>
                    </tr>      <tr>
                        <td class="menu">Phone</td>
                        <td align="left">  <input type="text" name="data17" placeholder="" class="form-control input-sm" />          </td>
                    </tr>      <tr>
                        <td class="menu">Subject</td>
                        <td align="left">  <input type="text" name="data18" placeholder="" class="form-control input-sm" />          </td>
                    </tr>      <tr>
                        <td class="menu">Message</td>
                        <td align="left">  <textarea name="data19" placeholder="" class="form-control input-sm" style="padding:5px; line-height:20px; width:100%; height:200px;"></textarea>          </td>
                    </tr>            </table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="registerForm();" class="btn btn-primary">저장하기</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modalCopyList" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="formCopyContent" method="post" action="?tpf=admin/form/process">
                <input type="hidden" name="mode" id="mode" value="copyContent">
                <input type="hidden" name="form_code" value="1">
                <input type="hidden" name="code" id="code">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title" id="myModalLabelPortfolio">리스트 복사</h4>
                </div>
                <div class="modal-body">
                    <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 리스트 <span id="board_sub_title">복사</span></p></h4>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td class="menu">폼메일 선택</td>
                                <td align="left">
                                    <select name="to_form_code"class="form-control input-sm">
                                        <option value="">선택</option>
                          <option value="8">test</option>                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick="registerCopyContent()" class="btn btn-primary">확인</button>
                </div>
            </form>
        </div>
    </div>
</div>

<form name="formFileDelete" method="post" action="?tpf=admin/form/process">
<input type="hidden" name="mode" id="mode" value="deleteFile">
<input type="hidden" name="code" id="code">
</form>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>