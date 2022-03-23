<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="제품별 통계" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    제품별 매출 통계
    <small>Sales Statistics by Product</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">통계</a></li>
        <li class="active">제품별 매출 통계</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    <div class="box-tools " style="margin-bottom:5px;" >
                    <form name="form_search" id="form_search" method="post" action="?tpf=admin/statistics/sales_product">
                        <table class="table table-bordered">
						<tbody>
						<tr>
							<td class="menu">분류선택</td>
							<td align="left">
								<select name="category1_code" id="category1_code" class="form-control input-sm " style="width:100px;display:inline-block;" >
									<option value="">1차 분류</option>
									<option value="10" >a:5:{s:2:"ko";s:13:"Dental Treats";s:2:"en";N;s:2:"zh";N;s:2:"jp";N;s:2:"vn";s:14:"Dental Treats3";}</option>
									<option value="12" >a:4:{s:2:"ko";s:14:"Healthy Treats";s:2:"en";N;s:2:"zh";N;s:2:"jp";N;}</option>
									<option value="11" >a:4:{s:2:"ko";s:8:"Grooming";s:2:"en";N;s:2:"zh";N;s:2:"jp";N;}</option>
								
								</select>
								<select name="category2_code" id="category2_code" class="form-control input-sm " style="width:100px;display:inline-block;" >
									<option value="">2차 분류</option>
<br />
<b>Notice</b>:  Undefined variable: category2_arr in <b>/home/demoshop/public_html/html/admin/statistics/sales_product.html</b> on line <b>34</b><br />
								
								</select>
								<select name="category3_code" id="category3_code" class="form-control input-sm " style="width:100px;display:inline-block;" >
									<option value="">3차 분류</option>
<br />
<b>Notice</b>:  Undefined variable: category3_arr in <b>/home/demoshop/public_html/html/admin/statistics/sales_product.html</b> on line <b>34</b><br />
								
								</select>
								
							</td>
						</tr>
						<tr>
							<td class="menu">기간 검색</td>
							<td align="left">
								<input type="text" name="start_date" id="start_date" value="2022-03-09" class="form-control input-sm txt_date1" style="width:100px;display:inline-block;" /> ~ 
								<input type="text" name="end_date"  id="end_date" value="2022-03-15" class="form-control input-sm txt_date1" style="width:100px;display:inline-block;" />

								<button type="button" onclick="setSearchDate('D1');" class="btn btn-primary btn-xs">오늘</button>
								<button type="button" onclick="setSearchDate('D7');" class="btn btn-primary btn-xs">7일</button>
								<button type="button" onclick="setSearchDate('D15');" class="btn btn-primary btn-xs">15일</button>
								<button type="button" onclick="setSearchDate('M1');" class="btn btn-primary btn-xs">1개월</button>
								<button type="button" onclick="setSearchDate('M3');" class="btn btn-primary btn-xs">3개월</button>
								<button type="button" onclick="setSearchDate('M6');" class="btn btn-primary btn-xs">6개월</button>
							</td>
						</tr>
						</tbody>
						<tfooter>
							<tr>
								<td colspan="2" style="text-align:center;">
								<button type="button" onclick="selectAction();" class="btn btn-danger btn-sm"><i class="fa "></i>검색</button>
								</td>
							</tr>
						</tfooter>
						</table>
                    </div>
					<script>
						var chart_data1 = new Array();
						var dataRow1 = [];
						dataRow1 = ['제품명', '결제수량'];
						chart_data1.push(dataRow1);

						var chart_data2 = new Array();
						var dataRow2 = [];
						dataRow2 = ['제품명', '환불수량'];
						chart_data2.push(dataRow2);
					</script>

					<div id="chard_div" style="width:100%;margin-bottom:10px;height:380px;">
						<div id="columnchart_values1" style="width: 49%; height: 370px; float: left; border:1px solid #cdcdcd; margin-right:2%;"></div>
						<div id="columnchart_values2" style="width: 49%; height: 370px; float: left; border:1px solid #cdcdcd;"></div>
					</div>

                    <table class="table table-bordered table-hover">
						<colgroup>
							<col width="5%">
							<col width="*">
							<col width="20%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<td >순위</td>
								<td >제품분류</td>
								<td >제품명</td>
								<td >판매가</td>
								<td >결제수량</td>
								<td >환불수량</td>
								<td >총 판매수량</td>
								<td >총 판매금액</td>
							</tr>
						</thead>
						<tbody>
      <tr><td colspan="12"><br>검색된 데이터가 없습니다.<br><br></td></tr>						<tbody>
                    </table>

                    <br />
                    <!-- <button type="button" onclick="downloadExcel();" class="btn btn-warning btn-sm"><i class="fa" aria-hidden="true"></i> Excel 다운로드</button>
                    <form name="form_download" method="post" action="?tpf=admin/order/process">
                        <input type="hidden" name="mode" value="downloadExcel">
                        <input type="hidden" name="search_data">
                    </form> -->
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>