<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="회원별 통계" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    회원별 매출 통계
    <small>Sales Statistics by Member</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">통계</a></li>
        <li class="active">회원별 매출 통계</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    <div class="box-tools " style="margin-bottom:5px;" >
                    <form name="form_search" id="form_search" method="post" action="?tpf=admin/statistics/sales_member">
                        <table class="table table-bordered">
						<tbody>
						<tr>
							<td class="menu">기간 검색</td>
							<td align="left">
								<input type="text" name="start_date" id="start_date" value="2022-02-15" class="form-control input-sm txt_date1" style="width:100px;display:inline-block;" /> ~ 
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
						var chart_data = new Array();
						var dataRow = [];
						dataRow = ['회원', '매출금액', { role: 'style' }];
						chart_data.push(dataRow);
					</script>

					<div id="chard_div" style="border:1px solid #cdcdcd;width:100%;margin-bottom:10px;">
						<div id="columnchart_values" style="width: 100%; height: 370px;"></div>
					</div>

                    <table class="table table-bordered table-hover">
						<colgroup>
							<col width="5%">
							<col width="*">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<td >순위</td>
								<td >성명(아이디)</td>
								<td >주문건수</td>
								<td >주문금액</td>
								<td >환불건수</td>
								<td >환불금액</td>
								<td >결제총액</td>
							</tr>
						</thead>
						<tbody>
      <tr>
						<td>1</td>
						<td align="left">PARK종서 (plasma07)</td>
						<td align="right">1</td>
						<td align="right">2,000</td>
						<td align="right">1</td>
						<td align="right">2,000</td>
						<td align="right">0			<script>
								dataRow = ['PARK종서', 0, '#76A7FA'];
								chart_data.push(dataRow);
							</script>			</td>
					</tr>						<tbody>
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