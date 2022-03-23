<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<link href="https://mir9.co.kr/resource/css/s9soft_juso.css" rel="stylesheet">

<style>
.ui-menu {
    z-index: 9999;
    width:400px;
}
</style>

<section class="content-header">
    <h1>
    택배사 관리
    <small>member list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>택배사 관리</li>
        <li class="active">택배사 리스트</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 1 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/setting/delivery_company">
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
      <option value="company_name">택배사명</option>      <option value="url">배송조회 url</option>                        </select>
                        </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/delivery_company_process">
		            <input type="hidden" name="mode" id="mode">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:110px;">택배사</td>
                        <td>배송조회 url</td>
                        <td style="width:140px;">등록일</td>
                        <td style="width:50px;">표출여부</td>
                        <td style="width:60px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="7" /></td>
                        <td>롯데택배</td>
                        <td>https://lotteglogis.com/home/personal/inquiry/track</td>
                        <td>2018-10-18 16:13:05</td>
                        <td><span class="label label-success" style="font-size:12px;">보임</span></td>
                        <td><button type="button" onclick="onclickUpdate(7);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>
                    <button type="button" onclick="selectDelete('delete','선택된 택배사을 삭제하시겠습니까?');" class="btn btn-danger"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary">등록</button>
<!--    // 관리자단에서 택배사가입 숨김
                    <button type="button" onclick="onclickSMS();" class="btn btn-danger"><i class="fa fa-bell"></i> SMS발송</button>
-->

                    <div style="text-align:right;">
                        <? echo $data['page'];?>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<!-- // 택배사 등록 폼 -->
<div class="modal fade" id="modalRegister" tabindex="-2"; role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:620px;">
        <div class="modal-content">
            <form name="form" method="post" onsubmit="return false;" action="?tpf=admin/setting/delivery_company_process">
            <input type="hidden" name="mode">
            <input type="hidden" name="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">택배사 등록</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 택배사정보</p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">택배사명</td>
                <td align="left"><input type="text" name="company_name" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">배송조회 url</td>
                <td align="left"><input type="text" name="url" class="form-control input-sm" placeholder="http://" /></td>
            </tr>
            <tr id="display_status">
                <td class="menu">상태 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td>
                <select name="is_show" id="is_show" class="form-control input-sm" style="width:120px;">
      <option value="y">정상</option>      <option value="n">대기</option>                </select>
                </td>
            </tr>
            <tr id="display_reg_date">
                <td class="menu">등록일자</td>
                <td align="left"><span id="reg_date"></span></td>
            </tr>
            </table>
            </form>
            </div>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register();" class="btn btn-primary">저장</button>
            <!--<button type="button" onclick="deleteCompany();" class="btn btn-danger">삭제</button>-->
            </div>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>