<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="연혁 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    연혁관리
    <small>History</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Setting</li>
        <li class="active">연혁관리</li>
    </ol>
</section>

<section class="content" style="padding:15px 15px 0 15px">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div style="text-align:right;">
<button type="button" id="locale_ko" onclick="parent.location.href='?tpf=admin/setting/history&locale=ko'" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button><button type="button" id="locale_en" onclick="parent.location.href='?tpf=admin/setting/history&locale=en'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button><button type="button" id="locale_zh" onclick="parent.location.href='?tpf=admin/setting/history&locale=zh'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button><button type="button" id="locale_vn" onclick="parent.location.href='?tpf=admin/setting/history&locale=vn'" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>                    </div>
                    <label style="margin-top:5px;">총 3 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">

                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/history_process">
		            <input type="hidden" name="mode" id="mode">
		            <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td style="width:100px;">년도</td>
                        <td style="width:100px;">월</td>
                        <td style="width:100px;">일</td>
                        <td style="*">내용</td>
                        <td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="8" /></td>
                        <td>1</td>
                        <td>2022</td>
                        <td>3</td>
                        <td>3</td>
                        <td style="text-align:left;">테스트데이</td>
                        <td><button type="button" onclick="onclickUpdate(8);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="6" /></td>
                        <td>2</td>
                        <td>2019</td>
                        <td>3</td>
                        <td>31</td>
                        <td style="text-align:left;">sourceshop</td>
                        <td><button type="button" onclick="onclickUpdate(6);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="7" /></td>
                        <td>3</td>
                        <td>2018</td>
                        <td>2</td>
                        <td>33</td>
                        <td style="text-align:left;">4444</td>
                        <td><button type="button" onclick="onclickUpdate(7);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>
                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 연혁 등록</button>
                    <button type="button" onclick="onclickCopyContent();" class="btn btn-warning btn-sm" style="margin-left:20px;"><i class="fa fa-copy"></i> 연혁 복사</button>
                    <div style="text-align:right;">
                        <ul class="pagination" style="margin:0;">
<li class="active"><a href="?tpf=admin/setting/history&locale=ko&page=1">1</a></li>
</ul>                    </div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:650px;">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/setting/history_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="code" id="code">
  <input type="hidden" name="locale" id="locale" value="ko">            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">연혁 관리</h4>
            </div>
            <div class="modal-body">
            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 연혁 <span id="board_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
                <tr>
                    <td class="menu">년도</td>
                    <td align="left">
                    <select name="year" class="form-control input-sm" style="width:120px;">
                    <option value="">선택</option>
          <option value="2022">2022</option>          <option value="2021">2021</option>          <option value="2020">2020</option>          <option value="2019">2019</option>          <option value="2018">2018</option>          <option value="2017">2017</option>          <option value="2016">2016</option>          <option value="2015">2015</option>          <option value="2014">2014</option>          <option value="2013">2013</option>          <option value="2012">2012</option>          <option value="2011">2011</option>          <option value="2010">2010</option>          <option value="2009">2009</option>          <option value="2008">2008</option>          <option value="2007">2007</option>          <option value="2006">2006</option>          <option value="2005">2005</option>          <option value="2004">2004</option>          <option value="2003">2003</option>          <option value="2002">2002</option>          <option value="2001">2001</option>          <option value="2000">2000</option>          <option value="1999">1999</option>          <option value="1998">1998</option>          <option value="1997">1997</option>          <option value="1996">1996</option>          <option value="1995">1995</option>          <option value="1994">1994</option>          <option value="1993">1993</option>          <option value="1992">1992</option>          <option value="1991">1991</option>          <option value="1990">1990</option>          <option value="1989">1989</option>          <option value="1988">1988</option>          <option value="1987">1987</option>          <option value="1986">1986</option>          <option value="1985">1985</option>          <option value="1984">1984</option>          <option value="1983">1983</option>          <option value="1982">1982</option>          <option value="1981">1981</option>          <option value="1980">1980</option>                    </select>
                    </td>
                </tr>
                <tr>
                    <td class="menu">월</td>
                    <td align="left">
                    <select name="month" class="form-control input-sm" style="width:120px;">
                    <option value="">선택</option>
          <option value="1">1</option>          <option value="2">2</option>          <option value="3">3</option>          <option value="4">4</option>          <option value="5">5</option>          <option value="6">6</option>          <option value="7">7</option>          <option value="8">8</option>          <option value="9">9</option>          <option value="10">10</option>          <option value="11">11</option>          <option value="12">12</option>                    </select>
                    </td>
                </tr>
                <tr>
                    <td class="menu">일</td>
                    <td align="left"><input type="text" name="date" class="form-control input-sm" placeholder="예) 2017.10.23" style="width:26%;" /></td>
                </tr>
  <tr>
                    <td class="menu">내용</td>
                    <td align="left"><textarea name="contents" rows="4" style="width:100%"></textarea></td>
                </tr>                <tr>
                    <td class="menu">파일 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                    <td align="left">
                    <input type="file" name="file1" class="form-control input-sm" style="width:70%; display:inline;">
                    <span id="display_file" style="display:none;">
                    <button type="button" onclick="winOpen('?tpf=common/image_view&file_name=history/'+$('[name=code]').val());" class="btn btn-success btn-xs">보기</button>
                    <button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&file_name=history/'+$('[name=code]').val()+'&code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
                    </span>
                    <div style="font-weight:normal">※ 이미지 크기 : 1920 X 580</div>
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

<div class="modal fade" id="modalCopyList" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="historyCopyContent" method="post" action="?tpf=admin/setting/history_process">
                <input type="hidden" name="mode" id="mode" value="copyContent">
                <input type="hidden" name="locale" value="ko">
                <input type="hidden" name="code" id="code">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                    <h4 class="modal-title" id="myModalLabelPortfolio">연혁 복사</h4>
                </div>
                <div class="modal-body">
                    <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 연혁 <span id="board_sub_title">복사</span></p></h4>
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td class="menu">폼메일 선택</td>
                                <td align="left">
                                    <select name="to_locale"class="form-control input-sm">
                                        <option value="">선택</option>
                      <option value="en">ENG</option>                      <option value="zh">中国</option>                      <option value="vn">Tiếng việt</option>                                    </select>
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
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>