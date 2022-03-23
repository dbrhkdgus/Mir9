<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="주문후기 관리" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
        주문후기 관리
        <small>주문후기 list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">주문후기 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 0건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <form name="form_search" method="post" action="?tpf=admin/community/review">
                        <div class="has-feedback">
                            <span>
                                <input type="text" name="keyword" id="keyword" value="" class="form-control input-sm" placeholder="검색"/>
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </span>
                        </div>
                    </div>

                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <div class="has-feedback">
                            <select name="field" class="form-control input-sm" style="float:left; width:130px;">
      <option value="writer">작성자</option>      <option value="product_name">제품명</option>                            </select>
                        </div>
                        </form>
                    </div>

                    <table class="table table-bordered table-hover">
                        <form name="form_list" method="post" action="?tpf=admin/community/review_process">
                            <input type="hidden" name="mode" id="mode">
                            <input type="hidden" name="review_code" value="<br />
<b>Notice</b>:  Undefined variable: review_code in <b>/home/demoshop/public_html/html/admin/community/review.html</b> on line <b>45</b><br />
">
                            <thead>
                            <tr>
                                <td style="width:30px;"><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                                <td style="width:60px;">NO</td>
                                <td style="width:100px;">작성자</td>
                                <td style="width:150px;">구입상품</td>
                                <td>내용</td>
                                <td style="width:100px;">후기종류</td>
                                <td style="width:100px;">등록일</td>
                                <td style="width:80px;">명령</td>
                            </tr>
                            </thead>
              <tr><td colspan="10"><br>등록된 자료가 없습니다.<br><br></td></tr>                        </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>

                    <div style="text-align:right;">
                                            </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/community/review_process" enctype="multipart/form-data">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">주문후기 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 글 <span id="board_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
                <tr>
                    <td class="menu">작성자</td>
                    <td align="left"><input type="text" name="name" id="name" class="form-control input-sm" readonly></td>
                </tr>
                <tr>
                    <td class="menu">한줄후기</td>
                    <td align="left"><input type="text" name="title" id="title" class="form-control input-sm" readonly></td>
                </tr>
                <tr>
                    <td class="menu">구매후기</td>
                    <td align="left"><input type="text" name="content" id="content" class="form-control input-sm" readonly></td>
                </tr>
                <tr>
                    <td class="menu">이미지</td>
                    <td align="left">
                    <p>
                        <span id="file_list"></span>
                    </p>
                    </td>
                </tr>
            </table>

            </div>
            </form>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>