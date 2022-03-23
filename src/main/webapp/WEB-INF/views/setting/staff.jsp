<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="임원 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    임원 리스트 관리
    <small>commissioner list</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Setting</li>
        <li class="active">전문위원 리스트 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 3 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/setting/staff">
                    <input type="hidden" name="tpf" value="admin/setting/staff">
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
      <option value="name">이름</option>      <option value="position">직책</option>                        </select>
                        </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/staff_process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td style="width:100px;">이미지</td>
                        <td style="width:146px;">이름</td>
                        <td>직책</td>
                        <td style="width:140px;">등록일</td>
                        <td style="width:80px;">
                        <i onclick="changeOrder('down','staff','?tpf=admin/setting/staff');" class="fa fa-fw fa-arrow-circle-down cp" style="cursor:pointer;"></i>
                        <i onclick="changeOrder('up','staff','?tpf=admin/setting/staff');" class="fa fa-fw fa-arrow-circle-up cp" style="cursor:pointer;"></i>
                        </td>
                        <td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="2" /></td>
                        <td>1</td>
                        <td></td>
                        <td>김길동</td>
                        <td>관리부장</td>
                        <td>2017-03-13 18:22:03</td>
                        <td><input type="radio" name="order_code" value="-3" /></td>
                        <td><button type="button" onclick="onclickUpdate(2);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="3" /></td>
                        <td>2</td>
                        <td><img src="http://demoshop.mir9.kr/user/staff/3" width="144"></td>
                        <td>tttt</td>
                        <td>ttt</td>
                        <td>2019-04-03 11:14:53</td>
                        <td><input type="radio" name="order_code" value="-2" /></td>
                        <td><button type="button" onclick="onclickUpdate(3);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="1" /></td>
                        <td>3</td>
                        <td></td>
                        <td>홍길동</td>
                        <td>사업본부장</td>
                        <td>2017-03-13 18:13:12</td>
                        <td><input type="radio" name="order_code" value="-1" /></td>
                        <td><button type="button" onclick="onclickUpdate(1);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>
                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 임원 등록</button>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:650px;">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/setting/staff_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="code" id="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">임원 관리</h4>
            </div>
                <div class="modal-body">

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 임원 <span id="board_sub_title">등록</span></p></h4>
                <table class="table table-bordered">
                    <tr>
                        <td class="menu">이름 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left"><input type="text" name="name" id="name" value="" class="form-control input-sm" style="width:50%;"></td>
                    </tr>
                    <tr>
                        <td class="menu">직책 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left"><input type="text" name="position" id="position" value="" class="form-control input-sm" style="width:50%;"></td>
                    </tr>
                    <tr>
                        <td class="menu">Career <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left">
                        <textarea name="career" id="career" rows="4" class="form-control input-sm"></textarea>
                        <div style="font-weight:normal">※ 리스트는 Enter기준으로 구분됩니다.</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">Profile <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left">
                        <textarea name="profile" id="profile" rows="4" class="form-control input-sm"></textarea>
                        <div style="font-weight:normal">※ 리스트는 Enter기준으로 구분됩니다.</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">파일 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                        <td align="left">
                        <input type="file" name="file1" class="form-control input-sm" style="width:80%; display:inline;">
                        <span id="display_file" style="display:none;">
                        <button type="button" onclick="winOpen('?tpf=common/image_view&file_name=staff/'+$('#code').val());" class="btn btn-success btn-xs">보기</button>
                        <button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&file_name=staff/'+$('#code').val()+'&code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
                        </span>
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