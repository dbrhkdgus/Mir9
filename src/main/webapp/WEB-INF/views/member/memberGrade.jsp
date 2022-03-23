<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="등급 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    등급 관리
    <small>grade list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>회원 관리</li>
        <li class="active">등급 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <table class="table table-bordered table-hover" style="width:30%;">
                    <form name="form" method="post" action="?tpf=admin/member/process">
		            <input type="hidden" name="mode" value="level">
		            <thead>
                    <tr>
                        <td style="width:60px;">등급</td>
                        <td>명칭</td>
                        <td style="width:80px;">회원수</td>
                    </tr>
                    </thead>
      <tr>
                        <td>1</td>
                        <td><input type="text" name="title1" value="슈퍼관리자" readonly class="form-control input-sm" style="width:100%;" /></td>
                        <td>4</td>      </tr>      <tr>
                        <td>2</td>
                        <td><input type="text" name="title2" value="회원" class="form-control input-sm" style="width:100%;" /></td>
                        <td>2</td>      </tr>      <tr>
                        <td>3</td>
                        <td><input type="text" name="title3" value="ㅈㅇㅇㅈ" class="form-control input-sm" style="width:100%;" /></td>
                        <td></td>      </tr>      <tr>
                        <td>4</td>
                        <td><input type="text" name="title4" value="" class="form-control input-sm" style="width:100%;" /></td>
                        <td></td>      </tr>      <tr>
                        <td>5</td>
                        <td><input type="text" name="title5" value="" class="form-control input-sm" style="width:100%;" /></td>
                        <td></td>      </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="register()"  class="btn btn-primary btn-sm"><i class="fa fa-gear"></i> 등급 수정</button>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>