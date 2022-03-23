<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="자주쓰는 옵션" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    자주쓰는 옵션 관리
    <small>option list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">자주쓰는 옵션 관리</li>
    </ol>
</section>


<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div class="row" style="margin:0 0 5px 0;">
						<div class="col-xs-6">&nbsp;</div>

						<div class="col-xs-6" style="padding:0">
							<div class="btn-group pull-right">
		  <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>  <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>  <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>  <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>							</div>
						</div>
					</div>
					<form name="form_list" method="post" action="?tpf=admin/product/process">
			            <input type="hidden" name="mode" id="mode" />
						<input type="hidden" name="locale" id="locale" value="ko" />

	                    <table class="table table-bordered table-hover">
							<colgroup>
								<col width="30px" />
								<col width="30%" />
								<col width="*" />
								<col width="10%" />
							</colgroup>
		                    <thead>
			                    <tr>
			                        <td><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
			                        <td>옵션명</td>
			                        <td>옵션값</td>
			                        <td>명령</td>
			                    </tr>
		                    </thead>
		                    	<c:forEach var="option" items="${optionList }">
				      				<tr>
				                        <td><input type="checkbox" name="list[]" value="9" /></td>
				                        <td>${option.optionName }</td>
				                        <td>${option.optionValues }</td>
				                        <td>
											<button type="button" onclick="onclickUpdate(${option.optionNo});" class="btn btn-primary btn-xs">수정하기</button>
										</td>
				                    </tr>                        
		                    	</c:forEach>
	                    </table>
                    </form>
                    
                    <br>

                    <button type="button" onclick="selectDelete('deleteOptionBank');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square" aria-hidden="true"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 옵션 등록</button>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>


<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:1000px;height:700px;">
        <div class="modal-content">
			<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="modal-title-item">상품 기본옵션 관리</h4>
            </div>
            <div class="modal-body">
			<form name="form_register" method="post" onsubmit="return false;" action="${pageContext.request.contextPath}/option">
				<input type="hidden" name="mode" id="mode" value="insertOptionBank">
				<input type="hidden" name="code" id="code">
				<input type="hidden" name="locale" value="ko">
				<table class="table table-bordered">
					<tr>
						<td class="menu">옵션명</td>
						<td align="left"><input type="text" name="option_name" id="option_name" class="form-control input-sm" placeholder="예)사이즈"  /></td>
					</tr>
					<tr>
						<td class="menu">옵션값</td>
						<td align="left">
							<ul id="list_option" style="list-style:none;padding-left:0;margin-bottom:0;">

							</ul>
							※ 상품 등록 시 기본 입력될 옵션 값입니다.
						</td>
					</tr>
				</table>
			</form>
            </div>
			<div class="modal-footer">
				<button id="register_btn" type="button" onclick="register();" class="btn btn-primary">저장하기</button>
            </div>
        </div>
    </div>
</div>

<div id="list_option_tag" class="sr-only">
	<li>
		<input type="text" name="option_value[]" class="form-control input-sm" placeholder="옵션값" style="width:40%; display:inline; margin-bottom:10px;">
		<input type="text" name="option_price[]" class="form-control input-sm" placeholder="추가 가격(숫자만 입력)" onkeyup="this.value=displayComma(checkAmountNum(this.value))" style="width:30%; display:inline; margin-bottom:10px;">
		<button type="button" class="btn btn-danger btn-xs" onclick="removeOption(this);"><span class="fa fa-minus-square"></span> 옵션값 제거</button>
	</li>
</div>
</div><!-- /.content-wrapper -->

<script>
<!--옵션 등록 modal 제어 -->
function onclickInsert(){
	$("#modalContent").modal('show');
	$("#list_option").append(`
			<li class="first_item">
				<input type="text" name="option_value" class="form-control input-sm" placeholder="옵션값" style="width:40%; display:inline; margin-bottom:10px;">
				<input type="text" name="option_value_cost" class="form-control input-sm" placeholder="추가 가격(숫자만 입력)" onkeyup="this.value=displayComma(checkAmountNum(this.value))"  style="width:30%; display:inline; margin-bottom:10px;">
				<button type="button" class="btn btn-primary btn-xs" onclick="addOption();"><span class="glyphicon glyphicon-plus"></span> 옵션값 추가</button>
		</li>`);
}
<!-- 옵션 입력란 추가 -->
function addOption(){
	$("#list_option").append(`
			<li class="first_item">
				<input type="text" name="option_value" class="form-control input-sm" placeholder="옵션값" style="width:40%; display:inline; margin-bottom:10px;">
				<input type="text" name="option_value_cost" class="form-control input-sm" placeholder="추가 가격(숫자만 입력)" onkeyup="this.value=displayComma(checkAmountNum(this.value))"  style="width:30%; display:inline; margin-bottom:10px;">
				<button type="button" class="btn btn-danger btn-xs" onclick="removeOption(this);"><span class="fa fa-minus-square"></span> 옵션값 제거</button>
			</li>
			`);
}
<!--추가된 옵션 입력란 제거 -->
function removeOption(target){
	$(target).parent().remove();
}

<!--옵션 insert -->
function register(){
	
	const formData = new FormData(document["form_register"])
	var obj = {};
	for(const [k, v] of formData){
		obj[k] = v;
	};
	obj.option_value = [];
	obj.option_value_cost = [];
	$.each($("input[name=option_value]"), (idex, value)=>{
		 obj.option_value.push($(value).val());
	});
	$.each($("input[name=option_value_cost]"), (idex, value)=>{
		 obj.option_value_cost.push($(value).val());
	});

	const jsonStr = JSON.stringify(obj);
	
	$.ajax({
		url:"${pageContext.request.contextPath}/option/insert",
		method:"POST",
		data: jsonStr,
		contentType: "application/json; charset=utf-8",
		success(data){
			console.log(data)
			if(data > 0){
				alert("옵션이 추가되었습니다.");
				$(document["form_register"]).clear();
				$("#modalContent").modal('hide');
				
			}
		},
		error:console.log
	});

	
}

<!-- 옵션 수정 -->
function onclickUpdate(optionNo){
	$("#modalContent").modal('show');
	$.ajax({
		url:"${pageContext.request.contextPath}/option/list",
		data: {
			optionNo : optionNo
		},
		method:"POST",
		success(data){
				$("#option_name").val(data.pOption.optionName);
				$.each(data.optionValueList, (i,k)=>{
					console.log(i,k);
					if(i == 0){
						$("#list_option").append(`
							<li class="first_item">
								<input type="text" name="option_value" class="form-control input-sm" value="\${k.optionValue}" style="width:40%; display:inline; margin-bottom:10px;">
								<input type="text" name="option_value_cost" class="form-control input-sm" value="\${k.optionValueCost}" onkeyup="this.value=displayComma(checkAmountNum(this.value))"  style="width:30%; display:inline; margin-bottom:10px;">
								<input type="hidden" name="option_value_no" value="\${k.optionValueNo}" />
								<button type="button" class="btn btn-primary btn-xs" onclick="addOption();"><span class="glyphicon glyphicon-plus"></span> 옵션값 추가</button>
						</li>`);
						
					}else{
						$("#list_option").append(`
								<li class="first_item">
									<input type="text" name="option_value" class="form-control input-sm" value="\${k.optionValue}" style="width:40%; display:inline; margin-bottom:10px;">
									<input type="text" name="option_value_cost" class="form-control input-sm" value="\${k.optionValueCost}" onkeyup="this.value=displayComma(checkAmountNum(this.value))"  style="width:30%; display:inline; margin-bottom:10px;">
									<input type="hidden" name="option_value_no" value="\${k.optionValueNo}" />
									<button type="button" class="btn btn-danger btn-xs" onclick="removeOption(this);"><span class="fa fa-minus-square"></span> 옵션값 제거</button>
							</li>`);
					}
				});
				$("#register_btn").attr('onclick',`option_update(\${data.pOption.optionNo});`);
		},
		error:console.log
	});
	
	
}

// 옵션 업데이트 버튼
function option_update(optionNo){
	console.log(optionNo, typeof optionNo);
	const formData = new FormData(document["form_register"])
	var obj = {};
	for(const [k, v] of formData){
		obj[k] = v;
	};
	obj.option_value = [];
	obj.option_value_cost = [];
	obj.option_value_no = [];
	$.each($("input[name=option_value]"), (index, value)=>{
		 obj.option_value.push($(value).val());
	});
	$.each($("input[name=option_value_cost]"), (index, value)=>{
		 obj.option_value_cost.push($(value).val());
	});
	
		
	$.each($("input[name=option_value_no]"), (index, value)=>{
		obj.option_value_no.push($(value).val());
	});
	obj.optionNo = optionNo;
	const jsonStr = JSON.stringify(obj);
	console.log(jsonStr);
	
	$.ajax({
		url:"${pageContext.request.contextPath}/option/update",
		method:"POST",
		data: jsonStr,
		contentType: "application/json; charset=utf-8",
		success(data){
			if(data > 0){
				alert("옵션 정보가 수정되었습니다.");
			}

		},
		error:console.log
	});	
	
	
	
}

// 옵션 저장 전, 유효성 검사
function optionCheck(){
	
}



</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>