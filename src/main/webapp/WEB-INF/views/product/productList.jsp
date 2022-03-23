<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="상품 관리" name="title"/>
</jsp:include>
<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    상품 관리
    <small>order list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">상품 관리</a></li>
        <li class="active">상품 리스트</li>
    </ol>
</section>

<section class="content" style="padding:15px 15px 0 15px">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                <div class="col-xs-3" style="padding:0 5px 0 0;">
                <iframe name="tree" id="iframe_tree" src="?tpf=admin/product/tree&menu=list" width="100%" scrolling="auto" frameborder="1"></iframe>
                </div>

                <div class="col-xs-9" style="padding:0 5px 0 0;">
                <iframe name="list" id="iframe_list" src="?tpf=admin/product/list_sub" width="100%" scrolling="auto" frameborder="1"></iframe>
                </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:800px;">
        <div class="modal-content">
            <form name="form_register" method="post" onsubmit="return false;" action="?tpf=admin/product/process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insertProduct">
            <input type="hidden" name="code" id="code">
            <input type="hidden" name="category_code" id="category_code">
            <input type="hidden" name="locale" value="ko">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">상품 등록</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 상품 등록</p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">카테고리</td>
                <td align="left">ROOT <span id="category_depth"></span></td>
            </tr>
            <tr>
                <td class="menu">모델명 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="model" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">상품명 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="title" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">리스트 문구 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td align="left"><input type="text" name="list_title" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">소비자 가격 <span class="text-light-blue"></span> (원)</td>
                <td align="left"><input type="text" name="consumer_price" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">판매 가격 <span class="text-light-blue"><i class="fa fa-check"></i></span> (원)</td>
                <td align="left"><input type="text" name="sale_price" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">개별 적립금</td>
                <td align="left">
                <input type="text" name="point" onkeyup="this.value=displayComma(checkAmountNum(this.value))" class="form-control input-sm" />
                ※ 설정 > 적립금 관리 > 지급 설정에서 [개별] 옵션에 체크한 경우에만 적용됩니다.
                </td>
            </tr>
            <tr>
                <td class="menu">옵션</td>
                <td align="left">
                <p style="float:left; width:100%;">
                    <button type="button" class="btn btn-primary btn-xs" onclick="optionManager('form','');"><span class="glyphicon glyphicon-plus"></span> 옵션추가</button>
                </p>
				<br>
                <div id="list_option">
					<table class="table table-bordered table-hover">
						<colgroup>
							<col width="25%" />
							<col width="25%" />
							<col width="25%" />
							<col width="*" />
						</colgroup>
						<thead>
							<tr>
								<td>옵션명</td>
								<td>옵션값</td>
								<td>추가금액</td>
								<td>수정/삭제</td>
							</tr>
						</thead>
						<tbody id="option_list">
						</tbody>
					</table>
                </div>
                </td>
            </tr>
            <tr>
                <td class="menu">검색키워드</td>
                <td align="left"><input type="text" name="keyword" class="form-control input-sm" /></td>
            </tr>
            <tr>
                <td class="menu">리스트 이미지1</td>
                <td align="left">
                <input type="file" name="file1" class="form-control input-sm" style="width:80%; display:inline;" />
                <span id="display_file1" style="display:none;"></span>
                </td>
            </tr>
            <tr>
                <td class="menu">리스트 이미지2</td>
                <td align="left">
                <input type="file" name="file2" class="form-control input-sm" style="width:80%; display:inline;" />
                <span id="display_file2" style="display:none;"></span>
                </td>
            </tr>
            <tr>
                <td class="menu">제품 이미지(상세)</td>
                <td align="left">
                <input type="file" name="file3" class="form-control input-sm" style="width:80%; display:inline;" />
                <span id="display_file3" style="display:none;"></span>
                </td>
            </tr>
            <tr>
                <td class="menu">간단 설명</td>
                <td align="left"><textarea type="text" name="brief" class="form-control input-sm" style="margin:0 0 5px 0; height:120px; width:91%;"></textarea></td>
            </tr>
            <tr>
                <td class="menu">내용 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td><textarea name="content" id="content" rows="10" cols="80"></textarea></td>
            </tr>
            <!-- <tr>
                <td class="menu">메인표출 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td>
                <select name="is_main" id="is_main" class="form-control input-sm" style="width:100px;">
      <option value="y">보임</option>      <option value="n">숨김</option>                </select>
                </td>
            </tr> -->
            <tr>
                <td class="menu">BEST / NEW / EVENT</td>
                <td align="left">
                    <input type="checkbox" id="is_best" name="is_best" value='y'>BEST&nbsp;&nbsp;
                    <input type="checkbox" id="is_new" name="is_new" value='y'>NEW&nbsp;&nbsp;
                    <input type="checkbox" id="is_event" name="is_event" value='y'>EVENT
                </td>
            </tr>
            <tr>
                <td class="menu">품절 처리</td>
                <td align="left">
                    <input type="checkbox" id="is_soldout" name="is_soldout" value='y'>품절
                </td>
            </tr>

            <tr>
                <td class="menu">상태 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
                <td>
                <select name="status" id="status" class="form-control input-sm" style="width:100px;">
      <option value="y">보임</option>      <option value="n">숨김</option>                </select>
                </td>
            </tr>
            </table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register();" class="btn btn-primary">저장하기</button>
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modalCopyProduct" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="formCopyProduct" method="post" action="?tpf=admin/product/process">
            <input type="hidden" name="mode" id="mode" value="copyProduct">
            <input type="hidden" name="code" id="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">제품 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 제품 <span id="board_sub_title">이전</span></p></h4>
            <table class="table table-bordered">
            <tbody><tr>
                <td class="menu">언어</td>
                <td align="left">
                <select name="product_locale" id="product_locale" class="form-control input-sm">
                    <option value="">선택</option>
          <option value="ko">한국어</option>          <option value="en">ENG</option>          <option value="zh">中国</option>          <option value="vn">Tiếng việt</option>                </select>
                </td>
            </tr>
            </tbody></table>
            </div>

            <div class="modal-footer">
            <button type="button" onclick="registerCopyProduct()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="modalContent2" tabindex="-3" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:800px;height:700px;">
        <div class="modal-content">
			<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="modal-title-item">상품 옵션 관리</h4>
            </div>
            <div class="modal-body">
				<div class="row" style="margin:0 0 5px 0;">
					<div class="col-xs-12" style="padding:0">
						<div class="btn-group ">
							<button type="button" onclick="optionTabChange('1', '/index.php?tpf=admin/product/option_manager')" class="btn btn-default" id="option_tab_btn1"><i class="fa fa-file-o" aria-hidden="true"></i> 직접입력</button>
							<button type="button" onclick="optionTabChange('2', '/index.php?tpf=admin/product/option_manager_bank')" class="btn btn-default" id="option_tab_btn2"><i class="fa fa-bookmark-o" aria-hidden="true"></i> 자주쓰는 옵션</button>
							<button type="button" onclick="optionTabChange('3', '/index.php?tpf=admin/product/option_manager_product')" class="btn btn-default" id="option_tab_btn3"><i class="fa fa-clone" aria-hidden="true"></i> 기존 상품 옵션 불러오기</button>
						</div>
					</div>
				</div>
				<iframe name="modal_iframe" id="modal_iframe" src="" width="100%" height="600px" style="border:1px solid #cccccc" scrolling="auto" frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>

<script src="https://mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>

</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>