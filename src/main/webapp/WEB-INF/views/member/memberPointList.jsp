<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
        회원 적립금 관리
        <small>Member point list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>회원 관리</li>
        <li class="active">회원 적립금 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 4 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/member/point">
                        <div class="has-feedback">
                            <span>
                                <input type="text" name="keyword" id="keyword" value="" class="form-control input-sm" placeholder="검색" />
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </span>
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                            <select name="field" id="field" class="form-control input-sm">
                      <option value="b.id">아이디</option>                      <option value="name">이름</option>                      <option value="a.content">사용내역</option>                            </select>
                        </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                        <form name="form_list" method="post" action="?tpf=admin/member/process">
                            <input type="hidden" name="mode" id="mode" value="deletePointLog">
                            <thead>
                                <tr>
                                    <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                                    <td style="width:60px;">NO</td>
                                    <td style="width:110px;">아이디</td>
                                    <td style="width:110px;">이름</td>
                                    <td style="width:180px;">이메일</td>
                                    <td>적립금 사용내역</td>
                                    <td style="width:100px;">사용 적립금</td>
                                    <td style="width:140px;">일시</td>
                                    <!-- <td style="width:60px;">명령</td>                 -->
                                </tr>
                            </thead>

                            <tr>
                                <td><input type="checkbox" name="list[]" value="348" /></td>
                                <td>4</td>
                                <td>asdf</td>
                                <td>나미르</td>
                                <td>the_plasma@naver.com</td>
                                <td>회원 가입</td>
                                <td>1,000</td>
                                <td>2022-03-04 16:12</td>
                                <!-- <td><button type="button" onclick="viewDetail()" class="btn btn-primary btn-xs">상세보기</button></td> -->
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="list[]" value="347" /></td>
                                <td>3</td>
                                <td>plasma07</td>
                                <td>PARK종서</td>
                                <td>parkjongseo07@gmail.com</td>
                                <td>로즈플라워캔들 구입</td>
                                <td>100</td>
                                <td>2022-03-02 12:18</td>
                                <!-- <td><button type="button" onclick="viewDetail()" class="btn btn-primary btn-xs">상세보기</button></td> -->
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="list[]" value="346" /></td>
                                <td>2</td>
                                <td>plasma07</td>
                                <td>PARK종서</td>
                                <td>parkjongseo07@gmail.com</td>
                                <td>회원 가입</td>
                                <td>1,000</td>
                                <td>2022-02-28 15:04</td>
                                <!-- <td><button type="button" onclick="viewDetail()" class="btn btn-primary btn-xs">상세보기</button></td> -->
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="list[]" value="345" /></td>
                                <td>1</td>
                                <td>admin</td>
                                <td>길동이홍</td>
                                <td>limsj@mir9.co.kr</td>
                                <td>상품 후기 등록</td>
                                <td>500</td>
                                <td>2020-03-25 14:56</td>
                                <!-- <td><button type="button" onclick="viewDetail()" class="btn btn-primary btn-xs">상세보기</button></td> -->
                            </tr>                        </form>
                    </table>
                    <br>
                    <!-- // 적립금 사용내역을 삭제하면 getPoint 함수가 제대로 된 적립금을 계산하지 못하여 주석처리
                    <button type="button" onclick="selectDelete('deletePointLog', '해당 회원의 적립금 사용이력을 삭제하시겠습니까?');" class="btn btn-danger"><i class="fa fa-minus-square"></i> 선택삭제</button> -->
                    <button type="button" onclick="downloadExcel();" class="btn btn-warning"><i class="fa" aria-hidden="true"></i> Excel 다운로드</button>
                    <button type="button" onclick="location.replace('?tpf=admin/member/list')" class="btn btn-primary" style="float:right"><i class="fa fa-minus-square" aria-hidden="true"></i> 회원 리스트 이동</button>
                    <form name="form_download" method="post" action="?tpf=admin/member/process">
                        <input type="hidden" name="mode" value="downloadExcelPointLog">
                        <input type="hidden" name="search_data" value="">
                        <input type="hidden" name="search_type" value="">
                    </form>
                    <div style="text-align:right; margin-top:20px;">
                        <ul class="pagination" style="margin:0;">
<li class="active"><a href="?tpf=admin/member/point&page=1">1</a></li>
</ul>                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>