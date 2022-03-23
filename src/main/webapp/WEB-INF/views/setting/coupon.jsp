<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="쿠폰 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    쿠폰 관리
    <small>coupon list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">쿠폰 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">6 건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                    <form name="form_search" method="post" action="?tpf=admin/setting/coupon">
                    <input type="hidden" name="tpf" value="admin/setting/coupon">
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
      <option value="title">쿠폰명</option>                        </select>
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="margin:0 10px 5px 0">
                        <div class="has-feedback">
                        <input type="text" name="expiry_end_date" id="datepicker1" readonly value="" class="form-control input-sm" placeholder="종료일" style="width:80px;padding-right:0;" />
                        </div>
                    </div>
                    <div class="box-tools pull-right" style="padding:5px 5px 0 5px;">~</div>
                        <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                        <input type="text" name="expiry_start_date" id="datepicker2" readonly value="" class="form-control input-sm" placeholder="시작일" style="width:80px;padding-right:0;" />
                    </div>
                    </form>
                    </div>

                    <table class="table table-bordered table-hover">
                    <form name="form_list" method="post" action="?tpf=admin/setting/coupon_process">
		            <input type="hidden" name="mode" id="mode">
                    <thead>
                    <tr>
                        <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td style="width:60px;">NO</td>
                        <td>쿠폰명</td>
                        <td style="width:120px;">지급방법</td>
                        <td style="width:140px;">혜택</td>
                        <td style="width:170px;">결제금액(최소 ~ 최대)</td>
                        <td style="width:180px;">유효기간</td>
                        <td style="width:100px;">등록일</td>
                        <td style="width:80px;">상태</td>
						<td style="width:80px;">명령</td>
                    </tr>
                    </thead>
      <tr>
					    <td><input type="checkbox" name="list[]" value="14" /></td>
                        <td>6</td>
                        <td align="left">VIP 회원 쿠폰</td>
                        <td>수동발급</td>
                        <td>10% 할인</td>
                        <td style="text-align:right; padding-right:15px;">0 ~ 0</td>
                        <td>2020-01-14 ~ 2020-01-31</td>
                        <td>2020-01-16</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(14);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
					    <td><input type="checkbox" name="list[]" value="12" /></td>
                        <td>5</td>
                        <td align="left">신년인사 쿠폰</td>
                        <td>수동발급</td>
                        <td>10% 할인</td>
                        <td style="text-align:right; padding-right:15px;">10,000 ~ 50,000</td>
                        <td>무제한</td>
                        <td>2020-01-10</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(12);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
					    <td><input type="checkbox" name="list[]" value="11" /></td>
                        <td>4</td>
                        <td align="left">연말쿠폰</td>
                        <td>다운로드</td>
                        <td>20% 할인</td>
                        <td style="text-align:right; padding-right:15px;">100 ~ 0</td>
                        <td>무제한</td>
                        <td>2019-10-31</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(11);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
					    <td><input type="checkbox" name="list[]" value="10" /></td>
                        <td>3</td>
                        <td align="left">상반기 쿠폰</td>
                        <td>다운로드</td>
                        <td>10% 할인</td>
                        <td style="text-align:right; padding-right:15px;">1,000 ~ 0</td>
                        <td>무제한</td>
                        <td>2019-10-25</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(10);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
					    <td><input type="checkbox" name="list[]" value="9" /></td>
                        <td>2</td>
                        <td align="left">추계쿠폰</td>
                        <td>다운로드</td>
                        <td>10% 할인</td>
                        <td style="text-align:right; padding-right:15px;">10,000 ~ 0</td>
                        <td>무제한</td>
                        <td>2019-10-25</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(9);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>      <tr>
					    <td><input type="checkbox" name="list[]" value="8" /></td>
                        <td>1</td>
                        <td align="left">하반기 쿠폰</td>
                        <td>다운로드</td>
                        <td>20% 할인</td>
                        <td style="text-align:right; padding-right:15px;">200 ~ 0</td>
                        <td>무제한</td>
                        <td>2019-08-08</td>
                        <td><span class="label label-success" style="font-size:12px;">사용</span></td>
                        <td><button type="button" onclick="onclickUpdate(8);" class="btn btn-primary btn-xs">상세보기</button></td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleteCoupon');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert()"  class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 쿠폰 등록</button>

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
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/setting/coupon_process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode">
			<input type="hidden" name="code">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">쿠폰 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 쿠폰 <span id="popup_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">쿠폰명 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="title" class="form-control input-sm"></td>
            </tr>
            <tr>
                <td class="menu">지급 방법 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <input type="radio" name="provide_type" value="download"> 다운로드&nbsp;<span style="line-height:2.0;"> <small class="text-red">마이페이지 > 쿠폰내역 에서 다운로드 받고 사용</small></span><br>
                <input type="radio" name="provide_type" value="manual"> 수동발급&nbsp;<span style="line-height:2.0;"> <small class="text-red">회원관리 > 회원 리스트 에서 특정 회원에게 개별 쿠폰 지급 가능</small></span><br>
                <!--<input type="radio" name="provide_type" value="mail"> 메일-->
                </td>
            </tr>
            <tr>
                <td class="menu">혜택 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <span style="float:left;"><input type="radio" name="benefit_type" value="discount"> 할인</span>
                <span style="float:left; margin-left:5px;"><input type="text" name="discount" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" style="width:100px; text-align:right;"></span>
                <span style="float:left; margin-left:5px;">
                <select name="discount_type" class="form-control input-sm" style="padding:0; width:50px;">
      <option value="amount">원</option>      <option value="percent">%</option>                </select>
                </span>
                <br><br>
                <span style="float:left;"><input type="radio" name="benefit_type" value="delivery_free"> 배송비 무료</span>
                </td>
            </tr>
            <tr>
                <td class="menu">사용 가능<br>결제금액 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                    <p><span style="float:left;"><input type="text" name="use_limit" placeholder="최소금액" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" style="width:100px; text-align:right;"></span>&nbsp;<span style="line-height:2.0;"> <small class="text-red">결제금액이 OO 이상 일때 사용 가능 (값을 입력하지 않으면 제한 없음)</small></span></p>
                    <p><span style="float:left;"><input type="text" name="use_max" placeholder="최대금액" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" style="width:100px; text-align:right;"></span>&nbsp;<span style="line-height:2.0;"> <small class="text-red">결제금액이 OO 이하 일때 사용 가능 (값을 입력하지 않으면 제한 없음)</small></span></p>
                </td>
            </tr>
            <tr>
                <td class="menu">유효 기간 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left">
                <span style="float:left;"><input type="radio" name="expiry_type" value="unlimited"> 무제한</span>
                <br><br>
                <span style="float:left;"><input type="radio" name="expiry_type" value="fix"> 날짜지정</span>
                <span style="float:left; margin-left:5px;"><input type="text" name="expiry_start_date" id="datepicker3" readonly placeholder="시작일" class="form-control input-sm" style="width:80px"></span>
                <span style="float:left; margin-left:5px;">&nbsp; ~ &nbsp;</span><span style="float:left;"><input type="text" name="expiry_end_date" id="datepicker4" readonly placeholder="종료일" class="form-control input-sm" style="width:80px"></span>
				</td>
            </tr>
			<tr>
                <td class="menu">상태</td>
                <td align="left">
                <input type="radio" name="coupon_status" value="use">사용&nbsp;&nbsp;
                <input type="radio" name="coupon_status" value="stop">중지
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