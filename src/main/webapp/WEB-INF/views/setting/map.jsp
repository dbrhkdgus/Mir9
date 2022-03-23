<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="약도 관리" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    약도 관리
    <small>map list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>약도 관리</li>
        <li class="active">약도 리스트</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 1 건</label>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/map_process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td>제목</td>
                        <td style="width:200px;">연결주소</td>
                        <td style="width:100px;">API 종류</td>
                        <td style="width:160px;">좌표</td>
                        <td style="width:120px;">지도 확대 레벨</td>
                        <td style="width:120px;">팝업 정보</td>
                        <td style="width:120px;">등록일</td>
                        <td style="width:150px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="1" /></td>
                        <td>1</td>
                        <td align="left">찾아오시는길</td>
                        <td align="left">[include:tpf=form/map&code=1]</td>
                        <td>구글</td>
                        <td>37.4908471,127.030333</td>
                        <td>15</td>
                        <td></td>
                        <td>2018/03/26 19:02</td>
                        <td>
                        <button type="button" onclick="_onclickView('map',1);" class="btn btn-success btn-xs">바로가기</button>
                        <button type="button" onclick="onclickUpdate(1);" class="btn btn-primary btn-xs">상세보기</button>
                        </td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 약도 생성</button>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalRegister" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:600px;">
        <div class="modal-content">
            <form name="form" method="post" action="?tpf=admin/setting/map_process">
            <input type="hidden" name="mode" id="mode">
            <input type="hidden" name="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">약도 등록</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 약도 정보</p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">제목 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="title" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">API 종류 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <select name="map_type" class="form-control input-sm" style="width:100px;">
      <option value="google">구글</option>      <option value="daum">다음</option>      <option value="naver">네이버</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">API key <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="api_key" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">주소</td>
                <td align="left">
                <input type="text" name="addr" placeholder="주소를 입력하세요" class="form-control input-sm" style="width:82%; margin-right:5px; float:left">
                <button type="button" onclick="getCoord()" class="btn btn-primary btn-xs">좌표확인</button>
                </td>
            </tr>
            <tr>
                <td class="menu">좌표 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <input type="text" name="lat" placeholder="lat" class="form-control input-sm" style="width:48%; margin-right:10px; float:left"> <input type="text" name="lng" placeholder="lng" class="form-control input-sm" style="width:48%; float:left">
                </td>
            </tr>
            <tr>
                <td class="menu">지도크기 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <input type="text" name="width" placeholder="width" class="form-control input-sm" style="width:48%; margin-right:10px; float:left"> <input type="text" name="height" placeholder="height" class="form-control input-sm" style="width:48%; float:left">
                </td>
            </tr>
            <tr>
                <td class="menu">지도 확대 레벨 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <select name="level" class="form-control input-sm" style="width:100px;">
      <option value="1">1</option>      <option value="2">2</option>      <option value="3">3</option>      <option value="4">4</option>      <option value="5">5</option>      <option value="6">6</option>      <option value="7">7</option>      <option value="8">8</option>      <option value="9">9</option>      <option value="10">10</option>      <option value="11">11</option>      <option value="12">12</option>      <option value="13">13</option>      <option value="14">14</option>      <option value="15">15</option>      <option value="16">16</option>      <option value="17">17</option>      <option value="18">18</option>      <option value="19">19</option>      <option value="20">20</option>                </select>
                </td>
            </tr>
            <tr>
                <td class="menu">팝업 정보</td>
                <td align="left">
                <textarea name="popup_infomation" rows="4" style="width:160px; float:left; margin-right:5px;" class="form-control input-sm" placeholder="금천구 가산동 미르나인"></textarea>
                ※ 선택사항<br>입력시 팝업정보 창 표출
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