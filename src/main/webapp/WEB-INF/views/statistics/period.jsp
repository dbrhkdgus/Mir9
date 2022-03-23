<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="기간별 통계" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    기간별 매출 통계
    <small>Sales Statistics by Period</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">통계</a></li>
        <li class="active">기간별 매출 통계</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                    <div class="box-tools " style="margin-bottom:5px;" >
                    <form name="form_search" id="form_search" method="post" action="?tpf=admin/statistics/sales_day">
                        <table class="table table-bordered">
						<tbody>
						<tr>
							<td class="menu">통계종류</td>
							<td align="left">
								<input type="radio" name="statistics_type" id="statistics_type_1" value="date" checked /> <label for="statistics_type_1">일별통계</label>&nbsp;&nbsp;
								<input type="radio" name="statistics_type" id="statistics_type_2" value="month" onclick="location.href='/index.php?tpf=admin/statistics/sales_month';" /> <label for="statistics_type_2">월별통계</label>&nbsp;&nbsp;
								<input type="radio" name="statistics_type" id="statistics_type_3" value="yesr" onclick="location.href='/index.php?tpf=admin/statistics/sales_year';" /> <label for="statistics_type_3">연도별통계</label>
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
						dataRow = ['일시', '매출금액', { role: 'style' }];
						chart_data.push(dataRow);
					</script>
<script>
		dataRow = ['2022-03-09', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-10', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-11', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-12', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-13', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-14', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2022-03-15', 0, '#76A7FA'];
		chart_data.push(dataRow);
		</script>					<div id="chard_div" style="border:1px solid #cdcdcd;width:100%;margin-bottom:10px;">
						<div id="columnchart_values" style="width: 100%; height: 370px;"></div>
					</div>

                    <table class="table table-bordered table-hover">
						<colgroup>
							<col width="8%">
							<col width="*">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
							<col width="8%">
						</colgroup>
						<thead>
							<tr>
								<td rowspan="2" >날짜</td>
								<td rowspan="2" >매출금액</td>
								<td colspan="5" >판매금액</td>
								<td colspan="5 " >환불금액</td>
							</tr>
							<tr>
								<td>상품판매가</td>
								<td>배송비</td>
								<td>쿠폰</td>
								<td>포인트</td>
								<td>총 결제금액</td>

								<td>상품판매가</td>
								<td>배송비</td>
								<td>쿠폰</td>
								<td>포인트</td>
								<td>총 결제금액</td>
							</tr>
						</thead>
						<tbody>
      <tr>
                        <td>2022-03-15</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-14</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-13</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-12</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-11</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-10</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      <tr>
                        <td>2022-03-09</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>      
					<tfooter>
					<tr>
                        <td >총 합계</td>
                        <td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
						<td align="right">0</td>
                    </tr>
					</tfooter>
											<tbody>
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

<script>
        
		function selectAction(){
			if(sForm.start_date.value > sForm.end_date.value){
				alert('검색 기간을 확인해주세요.');
				return;
			}
			sForm.submit();
		}
		function setSearchDate(ftype){
			var tm_start_date = '';
			switch(ftype){
				case 'D7' : tm_start_date = '2022-03-09'; break;
				case 'D15' : tm_start_date = '2022-03-01'; break;
				case 'M1' : tm_start_date = '2022-02-15'; break;
				case 'M3' : tm_start_date = '2021-12-15'; break;
				case 'M6' : tm_start_date = '2021-09-15'; break;
				default : tm_start_date = '2022-03-15';
			}

			sForm.start_date.value = tm_start_date;
			sForm.end_date.value = '2022-03-15';
		}

        function downloadExcel() {  // Excel 다운로드
            form_download.target = 'iframe_process';
            form_download.search_data.value = $('#form_search').serialize();
            form_download.submit();
        }

		function drawChart() {
			var chartBarColor = '#76A7FA';

			var data = google.visualization.arrayToDataTable(chart_data);

			var chart_div_width = $('#columnchart_values').width();
			console.log(chart_div_width); 
			var view = new google.visualization.DataView(data);
			view.setColumns([0, 1,
						   { calc: "stringify",
							 sourceColumn: 1,
							 type: "string",
							 role: "annotation" },
						   2]);

			var options = {
				title: "일별 매출금액",
				width: chart_div_width,
				height: 350,
				bar: {groupWidth: "95%"},
				legend: { position: "none" },
			};
			var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
			chart.draw(view, options);
		}

		var sForm = null;
		
		$(function() {
			sForm = document.form_search;

			$( ".txt_date1" ).datepicker({
					defaultDate: "+0d",
					changeYear: true,
					changeMonth: true,
					dateFormat: "yy-mm-dd",
					maxDate : '2022-03-15',
					showMonthAfterYear: true , 
					dayNamesMin: ['일', '월', '화', '수', '목', '금', '토' ],
					monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
			});

			google.charts.load("current", {packages:['corechart']});
			google.charts.setOnLoadCallback(drawChart);
		});
		
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>