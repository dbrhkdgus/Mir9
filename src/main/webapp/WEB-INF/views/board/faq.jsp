<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="자주하는 질문 관리" name="title"/>
</jsp:include>

    <!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    자주하는 질문 관리
    <small>자주하는 질문 list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">자주하는 질문 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 0 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/board/list">
                    <input type="hidden" name="board_code" value="2">
                        <div class="has-feedback">
                        <span>
                        <input type="text" name="keyword" id="keyword" value="" class="form-control input-sm" placeholder="검색"/>
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </span>
                        </div>
                    </div>

                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                        <select name="field" class="form-control input-sm" style="float:left; width:130px;">
      <option value="b.title">제목</option>      <option value="b.name">작성자</option>                        </select>
                        </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/board/process">
		            <input type="hidden" name="mode" id="mode">
		            <input type="hidden" name="board_code" value="2">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td>제목</td>
                        <td style="width:100px;">작성자</td>
                        <td style="width:140px;">등록일</td>
                        <td style="width:80px;">조회수</td>
                        <td style="width:100px;">다운로드수</td>
                        <td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr><td colspan="10"><br>등록된 자료가 없습니다.<br><br></td></tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete()" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 글 등록</button>
                    <button type="button" onclick="onclickCopyData('copyData')" class="btn btn-warning btn-sm"><i class="fa fa-random"></i> 게시물 복사</button>
                    <button type="button" onclick="onclickCopyData('moveData')" class="btn btn-warning btn-sm"><i class="fa fa-random"></i> 게시물 이전</button>

                    <div style="text-align:right;">
                                            </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/board/process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="board_code" value="2">
            <input type="hidden" name="board_data_code" id="board_data_code">
            <input type="hidden" name="delete_file" id="delete_file">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 글 <span id="board_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">작성자</td>
                <td align="left"><input type="text" name="name" id="name" value="길동이" class="form-control input-sm" style="width:50%;"></td>
            </tr>
            <tr>
                <td class="menu">제목</td>
                <td align="left">
                <span style="float:left;width:80%;"><input type="text" name="title" id="title" class="form-control input-sm"></span>
                <span>&nbsp;&nbsp;<input type="checkbox" name="is_notice" value="y">공지사항</span>
                </td>
            </tr>
            <tr>
                <td class="menu">내용</td>
                <td align="left"><textarea name="content" id="content" rows="10" cols="80"></textarea></td>
            </tr>
            <tr>
                <td class="menu">썸네일 파일</td>
                <td align="left">
                <input type="file" name="thumbnail" class="form-control input-sm" style="width:80%; display:inline;" />
                <span id="display_thumbnail" style="display:none;">
                <button type="button" onclick="winOpen('?tpf=common/image_view&file_name=product/'+$('#code').val()+'_1');" class="btn btn-success btn-xs">보기</button>
                <button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&file_name=product/'+$('#code').val()+'_1&table=product&code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
                </span>
                </td>
            </tr>
            <tr>
                <td class="menu">파일</td>
                <td align="left">
                <p>
                    <span id="file_list"></span>
                </p>

                <p style="padding-top:10px; float:left; width:100%;">
                    <button type="button" class="btn btn-primary btn-xs" onclick="addFile();"><span class="glyphicon glyphicon-plus"></span> 파일추가</button><br>
                </p>
                    <div id="list_file"><input type="file" name="file[]" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;"></div>
                </td>
            </tr>
            </table>

            <div id="displayMemo" style="display:none">
            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 댓글 관리</p></h4>
            <span id="memo_list"></span>
            </div>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modalContent2" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="form_copy_data" method="post" action="?tpf=admin/board/process">
            <input type="hidden" name="mode" id="mode">
            <input type="hidden" name="code" id="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 게시물 <span id="board_sub_title2"></span></p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">게시판 제목</td>
                <td align="left">
                <select name="board_code" id="board_code" class="form-control input-sm">
                <option value="">선택</option>
  <option value="1">공지사항</option>  <option value="2">자주하는 질문</option>  <option value="3">1:1 문의</option>                </select>
                </td>
            </tr>
            </table>
            </div>

            <div class="modal-footer">
            <button type="button" onclick="registerCopyData()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
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