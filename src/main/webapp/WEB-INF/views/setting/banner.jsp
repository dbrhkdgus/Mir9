<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="배너 관리" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    메인 이미지 배너
    <small>Main Image Banner</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">메인 이미지 배너</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div style="text-align:right">
<button type="button" id="locale_ko" onclick="parent.location.href='?tpf=admin/setting/banner&locale=ko'" class="btn btn-primary" style="margin-left:3px;"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button><button type="button" id="locale_en" onclick="parent.location.href='?tpf=admin/setting/banner&locale=en'" class="btn btn-default" style="margin-left:3px;"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button><button type="button" id="locale_zh" onclick="parent.location.href='?tpf=admin/setting/banner&locale=zh'" class="btn btn-default" style="margin-left:3px;"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button><button type="button" id="locale_vn" onclick="parent.location.href='?tpf=admin/setting/banner&locale=vn'" class="btn btn-default" style="margin-left:3px;"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                    </div>
                    <label style="margin-top:5px;">총 1 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">

                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/banner_process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td style="width:100px;">category_code</td>
                        <td style="width:100px;">이미지</td>
                        <td style="width:120px;">이름</td>
                        <td style="*">URL</td>
                        <td style="width:140px;">등록일</td>
                        <td style="width:55px;">상태</td>
                        <td style="width:50px;">target</td>
                        <td style="width:60px;">
                        <i onclick="changeOrder('down','banner','?tpf=admin/setting/banner','1');" class="fa fa-fw fa-arrow-circle-down cp"></i>
                        <i onclick="changeOrder('up','banner','?tpf=admin/setting/banner','1');" class="fa fa-fw fa-arrow-circle-up cp"></i>
                        </td>
                        <td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="8" /></td>
                        <td>1</td>
                        <td>1(메인)</td>
                        <td><img src="http://demoshop.mir9.kr/user/banner/8" width="144"></td>
                        <td>미르나인 메인 배너</td>
                        <td></td>
                        <td>2019-09-03 13:33:34</td>
                        <td><span style="font-size:12px;" class="label label-success">보임</span></td>
                        <td><span style="font-size:12px;" class="label label-success">현재창</span></td>
                        <td><input type="radio" name="order_code" value="1" /></td>
                        <td><button type="button" onclick="onclickUpdate(8);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>
                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 배너 등록</button>

                    <div style="text-align:right;">
                        <? echo $data['page'];?>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/setting/banner_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="code" id="code">
  <input type="hidden" name="locale" id="locale" value="ko">            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">배너 관리</h4>
            </div>
                <div class="modal-body">

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 배너 <span id="board_sub_title">등록</span></p></h4>
                <table class="table table-bordered">
                    <tr>
                        <td class="menu">위치 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left">
                        <select name="category_code" id="category_code" class="form-control input-sm" style="width:120px;">
                  <option value="1">메인</option>                  <option value="2">하단</option>                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">이름 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left"><input type="text" name="title" class="form-control input-sm" style="width:50%;"></td>
                    </tr>
                    <tr>
                        <td class="menu">URL</td>
                        <td align="left">
                        <input type="text" name="url" class="form-control input-sm" placeholder="http://whois.co.kr" style="width:50%; float:left;">
                        <select name="target" class="form-control input-sm" style="width:80px; margin-left:5px; float:left;">
                  <option value="y">현재창</option>                  <option value="n">새창</option>                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">태그 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left"><textarea name="tag" placeholder="" class="form-control input-sm" style="padding:5px; line-height:20px; width:100%; height:150px;"></textarea></td>
                    </tr>
                    <tr>
                        <td class="menu">파일 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left">
                        <input type="file" name="file1" class="form-control input-sm" style="width:70%; display:inline;">
                        <span id="display_file" style="display:none;">
                        <button type="button" onclick="winOpen('?tpf=common/image_view&file_name=banner/'+$('[name=code]').val());" class="btn btn-success btn-xs">보기</button>
                        <button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&file_name=banner/'+$('[name=code]').val()+'&code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
                        </span>
                        <div style="font-weight:normal">※ 이미지 크기 : 1920 X 580</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">상태 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td>
                        <select name="status" id="status" class="form-control input-sm" style="width:100px;">
                  <option value="y">보임</option>                  <option value="n">숨김</option>                        </select>
                        </td>
                    </tr>
                </table>

                </div>
            <div class="modal-footer">
                <button type="button" onclick="register()" class="btn btn-primary">확인</button>
            </div>
            </form>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>