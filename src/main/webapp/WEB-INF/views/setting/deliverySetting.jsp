<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="배송 설정" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    배송 설정
    <small>point</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">배송 설정</li>
    </ol>
</section>

<section class="content">
<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-body">
				<form name="form_register" method="post" action="/index.php?tpf=admin/setting/process">
				<input type="hidden" name="mode" value="updateDeliverySetting">

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 기본 설정</p></h4>
                <table class="table table-bordered">
                <tbody>
				<tr>
                    <td class="menu">기본 배송비</td>
                    <td align="left">
                    <span style="float:left;"><input type="text" name="delivery_price" value="2,500" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="width:100px; text-align:right;" maxlength="7" /></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">무료배송 설정</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="delivery_limit" value="1,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:100px;"></span>&nbsp;
                        <span style="line-height:2.0;"> <small class="text-red">총 상품금액이 설정된 금액 이상이면 무료배송됨.</small></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">도서산간 추가배송료 사용 여부</td>
                    <td align="left">
                    <input type="radio" name="delivery_extra_cost_area" value="y"  checked onclick="changeDeliveryExtraCostArea(this.value)" />사용&nbsp;&nbsp;
                    <input type="radio" name="delivery_extra_cost_area" value="n"  onclick="changeDeliveryExtraCostArea(this.value)" />사용안함
                    </td>
                </tr>
                </tbody>
                </table>
                <br>
				
				<div id="extra_cost_div" style="">
					<h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 도서산간 추가배송비 설정</p></h4>
					<label style="margin-top:5px;">총 37 건</label>
					<table class="table table-bordered table-hover" style="margin-bottom:0;">
						<colgroup>
							<col width="100px" />
							<col width="300px" />
							<col width="600px" />
							<col width="*" />
						</colgroup>
						<thead>
						<tr>
							<td >NO</td>
							<td >우편번호</td>
							<td >지역명</td>
							<td >추가배송비</td>
						</tr>
						</thead>
					</table>
					<div style="overflow:scroll; width:100%; height:350px;">
					<table class="table table-bordered table-hover" style="margin-bottom:0;">
						<colgroup>
							<col width="100px" />
							<col width="300px" />
							<col width="600px" />
							<col width="*" />
						</colgroup>
						<tr>
							<td>1</td>
							<td>22386 ~ 22388</td>
							<td>인천 중구 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="1" />
								<input type="text" name="extra_cost[]" value="6,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>23004 ~ 23010</td>
							<td>인천 강화 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="2" />
								<input type="text" name="extra_cost[]" value="4,500" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>23100 ~ 23116</td>
							<td>인천 옹진 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="3" />
								<input type="text" name="extra_cost[]" value="6,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>23124 ~ 23136</td>
							<td>인천 옹진 섬지역2</td>
							<td>
								<input type="hidden" name="code[]" value="4" />
								<input type="text" name="extra_cost[]" value="6,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>31708 ~ 31708</td>
							<td>충남 당진 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="5" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>6</td>
							<td>32133 ~ 32133</td>
							<td>충남 태안 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="6" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>7</td>
							<td>33411 ~ 33411</td>
							<td>충남 보령 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="7" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>8</td>
							<td>40200 ~ 40240</td>
							<td>경북 울릉도 전지역</td>
							<td>
								<input type="hidden" name="code[]" value="8" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>9</td>
							<td>46768 ~ 46771</td>
							<td>부산 강서구 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="9" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>10</td>
							<td>52570 ~ 52571</td>
							<td>경남 사천 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="10" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>11</td>
							<td>53031 ~ 53033</td>
							<td>경남 통영 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="11" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>12</td>
							<td>53089 ~ 53104</td>
							<td>경남 통영 섬지역2</td>
							<td>
								<input type="hidden" name="code[]" value="12" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>13</td>
							<td>54000 ~ 54000</td>
							<td>경남 통영 섬지역3</td>
							<td>
								<input type="hidden" name="code[]" value="13" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>14</td>
							<td>56347 ~ 56349</td>
							<td>전북 부안 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="14" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>15</td>
							<td>57068 ~ 57069</td>
							<td>전남 영광 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="15" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>16</td>
							<td>58760 ~ 58762</td>
							<td>전남 목포 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="16" />
								<input type="text" name="extra_cost[]" value="6,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>17</td>
							<td>58800 ~ 58810</td>
							<td>전남 신안 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="17" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>18</td>
							<td>58816 ~ 58818</td>
							<td>전남 신안 섬지역2</td>
							<td>
								<input type="hidden" name="code[]" value="18" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>19</td>
							<td>58826 ~ 58826</td>
							<td>전남 신안 섬지역3</td>
							<td>
								<input type="hidden" name="code[]" value="19" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>20</td>
							<td>58828 ~ 58866</td>
							<td>전남 신안 섬지역4</td>
							<td>
								<input type="hidden" name="code[]" value="20" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>21</td>
							<td>58953 ~ 58958</td>
							<td>전남 진도 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="21" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>22</td>
							<td>59102 ~ 59103</td>
							<td>전남 완도 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="22" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>23</td>
							<td>59106 ~ 59106</td>
							<td>전남 완도 섬지역2</td>
							<td>
								<input type="hidden" name="code[]" value="23" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>24</td>
							<td>59127 ~ 59127</td>
							<td>전남 완도 섬지역3</td>
							<td>
								<input type="hidden" name="code[]" value="24" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>25</td>
							<td>59129 ~ 59129</td>
							<td>전남 완도 섬지역4</td>
							<td>
								<input type="hidden" name="code[]" value="25" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>26</td>
							<td>59137 ~ 59166</td>
							<td>전남 완도 섬지역5</td>
							<td>
								<input type="hidden" name="code[]" value="26" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>27</td>
							<td>59421 ~ 59421</td>
							<td>전남 보성 섬지역</td>
							<td>
								<input type="hidden" name="code[]" value="27" />
								<input type="text" name="extra_cost[]" value="4,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>28</td>
							<td>59531 ~ 59531</td>
							<td>전남 고흥 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="28" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>29</td>
							<td>59551 ~ 59551</td>
							<td>전남 고흥 섬지역2</td>
							<td>
								<input type="hidden" name="code[]" value="29" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>30</td>
							<td>59563 ~ 59563</td>
							<td>전남 고흥 섬지역3</td>
							<td>
								<input type="hidden" name="code[]" value="30" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>31</td>
							<td>59568 ~ 59568</td>
							<td>전남 고흥 섬지역4</td>
							<td>
								<input type="hidden" name="code[]" value="31" />
								<input type="text" name="extra_cost[]" value="5,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>32</td>
							<td>59650 ~ 59650</td>
							<td>전남 여수 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="32" />
								<input type="text" name="extra_cost[]" value="8,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>33</td>
							<td>59766 ~ 59766</td>
							<td>전남 여수 섬지역1</td>
							<td>
								<input type="hidden" name="code[]" value="33" />
								<input type="text" name="extra_cost[]" value="8,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>34</td>
							<td>59781 ~ 59790</td>
							<td>전남 여수 섬지역3</td>
							<td>
								<input type="hidden" name="code[]" value="34" />
								<input type="text" name="extra_cost[]" value="8,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>35</td>
							<td>63000 ~ 63644</td>
							<td>제주 전지역</td>
							<td>
								<input type="hidden" name="code[]" value="35" />
								<input type="text" name="extra_cost[]" value="3,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>36</td>
							<td>63000 ~ 63001</td>
							<td>제주 추자면</td>
							<td>
								<input type="hidden" name="code[]" value="36" />
								<input type="text" name="extra_cost[]" value="7,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
						<tr>
							<td>37</td>
							<td>63365 ~ 63365</td>
							<td>제주 우도</td>
							<td>
								<input type="hidden" name="code[]" value="37" />
								<input type="text" name="extra_cost[]" value="6,000" onkeyup="this.value=displayComma(checkNum(this.value))" class="form-control input-sm" style="text-align:right; width:150px;" maxlength="7" />
							</td>
						</tr>
					</table>
					</div>
					<br>
				</div>
                <div style="text-align:center;"><button type="button" onclick="register()" class="btn btn-primary">확인</button></div>
				</form>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>