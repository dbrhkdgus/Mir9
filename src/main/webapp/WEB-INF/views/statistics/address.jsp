<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="지역별 통계" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<style>
	.sum_tr{background-color:#f0efef; font-weight:bold;}
</style>
<section class="content-header">
    <h1>
    지역별 매출 통계
    <small>Sales Statistics by Address</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">통계</a></li>
        <li class="active">지역별 매출 통계</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    <div class="box-tools " style="margin-bottom:5px;" >
                    <form name="form_search" id="form_search" method="post" action="?tpf=admin/statistics/sales_address_day">
                        <table class="table table-bordered">
						<tbody>
						<tr>
							<td class="menu">통계종류</td>
							<td align="left">
								<input type="radio" name="statistics_type" id="statistics_type_1" value="date" checked /> <label for="statistics_type_1">일별통계</label>&nbsp;&nbsp;
								<input type="radio" name="statistics_type" id="statistics_type_2" value="month" onclick="location.href='/index.php?tpf=admin/statistics/sales_address_month';" /> <label for="statistics_type_2">월별통계</label>&nbsp;&nbsp;
								<input type="radio" name="statistics_type" id="statistics_type_3" value="yesr" onclick="location.href='/index.php?tpf=admin/statistics/sales_address_year';" /> <label for="statistics_type_3">연도별통계</label>
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
						var chart_data = new Array();
						var dataRow = [];
						dataRow = ['지역', '매출금액', { role: 'style' }];
						chart_data.push(dataRow);
					</script>
					<div id="chard_div" style="border:1px solid #cdcdcd;width:100%;margin-bottom:10px;">
						<div id="columnchart_values" style="width: 100%; height: 370px;"></div>
					</div>

                    <table class="table table-bordered table-hover">
						<colgroup>
							<col width="100">
							<col width="100">
							<col width="120">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
							<col width="100">
						</colgroup>
						<thead>
							<tr>
								<td >날짜</td>
								<td >구분</td>
								<td >매출총액</td>
								<td >서울</td>
								<td >부산</td>
								<td >인천</td>
								<td >대구</td>
								<td >광주</td>
								<td >대전</td>
								<td >울산</td>
								<td >세종</td>
								<td >경기</td>
								<td >강원</td>
								<td >충북</td>
								<td >충남</td>
								<td >전북</td>
								<td >전남</td>
								<td >경북</td>
								<td >경남</td>
								<td >제주</td>
							</tr>
						</thead>
						<tbody>
      
					<tr>
                        <td rowspan="3">2022-03-15</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-14</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-13</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-12</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-11</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-10</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
			      
					<tr>
                        <td rowspan="3">2022-03-09</td>
						<td>매출금액</td>
						<td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr>
						<td>환불금액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
					<tr class="sum_tr">
						<td>총액</td>
                        <td align="right">0</td>
						<td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td><td align="right">0</td>
                    </tr>
									<tbody>
                    </table>
<script>
		dataRow = ['서울', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['부산', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['인천', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['대구', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['광주', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['대전', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['울산', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['세종', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['경기', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['강원', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['충북', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['충남', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['전북', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['전남', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['경북', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['경남', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
<script>
		dataRow = ['제주', 0, '#76A7FA'];
		chart_data.push(dataRow);
</script>
		

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