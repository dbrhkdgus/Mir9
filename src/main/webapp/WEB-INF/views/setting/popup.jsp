<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="팝업 설정" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    팝업 관리
    <small>popup list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">팝업 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">0 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/setting/popup">
                    <input type="hidden" name="tpf" value="admin/setting/popup">
                    <input type="hidden" name="board_code" value="<br />
<b>Notice</b>:  Undefined variable: board_code in <b>/home/demoshop/public_html/html/admin/setting/popup.html</b> on line <b>22</b><br />
">
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
      <option value="title">제목</option>                        </select>
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="margin:0 10px 5px 0">
                        <div class="has-feedback">
                        <input type="text" name="end_date" id="datepicker1" readonly value="" class="form-control input-sm" placeholder="종료일" style="width:80px;padding-right:0;" />
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="padding:5px 5px 0 5px;">~</div>
                        <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                        <input type="text" name="start_date" id="datepicker2" readonly value="" class="form-control input-sm" placeholder="시작일" style="width:80px;padding-right:0;" />
                    </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/popup_process">
		            <input type="hidden" name="mode" id="mode">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td style="width:100px;">다국어</td>
                        <td>제목</td>
                        <td style="width:140px;">시작일</td>
                        <td style="width:140px;">종료일</td>
                        <td style="width:50px;">노출</td>
						<td style="width:150px;">하루동안 열지않기</td>
                        <td style="width:140px;">작성일</td>
						<td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr><td colspan="10"><br>등록된 자료가 없습니다.<br><br></td></tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 팝업 등록</button>

                    <div style="text-align:right;">
                        <!--<? echo $data['page'];?>-->
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="width:900px;">
            <form name="form_register" method="post" action="?tpf=admin/setting/popup_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode">
			<input type="hidden" name="code">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">팝업 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 팝업 <span id="popup_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">다국어 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <select name="locale" class="form-control input-sm" style="width:100px;">
      <option value="ko">한국어</option>      <option value="en">ENG</option>      <option value="zh">中国</option>      <option value="vn">Tiếng việt</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">기간 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
					<span style="float:left; width:15%;"><input type="text" name="start_date" id="datepicker3" readonly placeholder="시작일" class="form-control input-sm"></span>
					<span style="float:left;line-height:2.0;">&nbsp; ~ &nbsp;</span><span style="float:left; width:15%;"><input type="text" name="end_date" id="datepicker4" readonly placeholder="종료일" class="form-control input-sm"></span>
				</td>
            </tr>
            <tr>
                <td class="menu">제목 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <span style="float:left;width:80%;"><input type="text" name="title" class="form-control input-sm"></span>
                </td>
            </tr>
			<tr>
                <td class="menu">위치</td>
                <td align="left">
					<span style="float:left;line-height:2.0;">가로 : &nbsp;</span><span style="float:left; width:8%;"><input type="text" name="left_position" onkeyup="this.value=checkNum(this.value)" value="" class="form-control input-sm"></span>&nbsp;<span style="line-height:2.0;">px</span>
				    <span style="float:left;line-height:2.0;">&nbsp;px &nbsp;세로 : &nbsp;</span><span style="float:left; width:8%;"><input type="text" name="top_position" onkeyup="this.value=checkNum(this.value)" value="" class="form-control input-sm"></span>
                </td>
            </tr>
			<tr>
                <td class="menu">크기 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                    <span style="float:left;line-height:2.0;">가로 : &nbsp;</span><span style="float:left; width:8%;"><input type="text"name="width" onkeyup="this.value=checkNum(this.value)" value="" class="form-control input-sm"></span>&nbsp;<span style="line-height:2.0;">px</span>
				    <span style="float:left;line-height:2.0;">&nbsp;px &nbsp;세로 : &nbsp;</span><span style="float:left; width:8%;"><input type="text"name="height" onkeyup="this.value=checkNum(this.value)" value="" class="form-control input-sm"></span>
				</td>
            </tr>
			<tr>
                <td class="menu">노출</td>
                <td align="left">
                <input type="radio" name="display" id="display_y" value="y" checked>보임&nbsp;&nbsp;
                <input type="radio" name="display" id="display_n" value="n">숨김
                </td>
            </tr>
			<tr>
                <td class="menu">하루동안 열지않기</td>
                <td align="left">
                <input type="radio" name="popup_cookie" id="popup_cookie_y" value="y" checked>활성화&nbsp;&nbsp;
                <input type="radio" name="popup_cookie" id="popup_cookie_n" value="n">비활성화
                </td>
            </tr>
			<tr>
                <td class="menu">동영상 url</td>
                <td align="left"><input type="text" name="url" placeholder="https://youtu.be/Z2rLoGY-Hew" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">내용 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><textarea name="content" id="content" rows="10" cols="50"></textarea></td>
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

<div id="list_file_tag" class="sr-only">
    <input type="file" name="file[]" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;">
</div>

<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>