<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="메일 발송 내역" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            이메일 발송 내역
            <small>이메일 발송 내역 list</small>
        </h1>

        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li>커뮤니티 관리</li>
            <li class="active">이메일 발송 내역</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <label style="margin-top:5px;">총 202건</label>
                        <div class="box-tools pull-right" style="margin-bottom:5px;">
                            <form name="form_search" method="post" action="?tpf=admin/community/email_list">
                                <div class="has-feedback">
                                    <span>
                                        <input type="text" name="keyword" id="keyword" value=""
                                            class="form-control input-sm" placeholder="검색" />
                                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                    </span>
                                </div>
                        </div>

                        <div class="box-tools pull-right" style="margin-bottom:5px;">
                            <div class="has-feedback">
                                <select name="field" class="form-control input-sm" style="float:left; width:130px;">
                                    <option value="total">전체</option>
                                    <option value="title">제목</option>
                                    <option value="content">내용</option>
                                    <option value="receive">수신이메일</option>
                                </select>
                            </div>
                            </form>
                        </div>

                        <table class="table table-bordered table-hover">
                            <colgroup>
                                <col width="50px" />
                                <col width="80px" />
                                <col width="150px" />
                                <col width="300px" />
                                <col width="*" />
                                <col width="100px" />
                                <col width="150px" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <td>NO</td>
                                    <td>구분</td>
                                    <td>수신이메일</td>
                                    <td>제목</td>
                                    <td>내용</td>
                                    <td>사용 포인트</td>
                                    <td>등록일시</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>202</td>
                                    <td>email</td>
                                    <td>parkjongseo07@gmail.com</td>
                                    <td align="left">[MIR9 SHOP] 주문하신 상품이 취소처리 되었습니다.</td>
                                    <td align="left">






                                        &nbsp;


                                        [MIR9 SHOP] 주문 취소 안내


                                        &nbsp;






                                        &nbsp;











                                        주문하신 상품이 취소처리 되었습니다.



                                        &nbsp;








                                        &nbsp;
                                        주문 정보
                                        &nbsp;


                                        &nbsp;





                                        상태
                                        주문취소



                                        주문번호
                                        220302_121817885



                                        주문일자
                                        2022-03-02 12:18:44




                                        &nbsp;










                                        &nbsp;
                                        주문자 정보
                                        &nbsp;


                                        &nbsp;





                                        이름
                                        JONGSEO PARK



                                        이메일
                                        parkjongseo07@gmail.com



                                        휴대폰 번호
                                        010-4814-0719




                                        &nbsp;










                                        &nbsp;
                                        주문 상품
                                        &nbsp;


                                        &nbsp;



                                        제품 이미지
                                        제품명
                                        가격
                                        수량
                                        합계




                                        로즈플라워캔들 사이즈 : S ( +1,000원) 색상 : 빨강

                                        1,000원
                                        1개
                                        2,000원



                                        총 상품 금액
                                        2,000원



                                        배송비
                                        0원



                                        총 결제 금액
                                        2,000원


                                        &nbsp;










                                        &nbsp;
                                        받는사람 정보
                                        &nbsp;


                                        &nbsp;





                                        이름
                                        JONGSEO PARK



                                        이메일
                                        parkjongseo07@gmail.com



                                        휴대폰 번호
                                        010-4814-0719



                                        주소
                                        서울 중랑구 용마산로115길 127(망우동, 한일써너스빌리젠시1단지) 102동 2301호



                                        배송메시지





                                        &nbsp;










                                        &nbsp;
                                        결제 정보
                                        &nbsp;


                                        &nbsp;




                                        결제금액
                                        2,000원



                                        결제방법
                                        무통장



                                        입금 계좌번호
                                        1005-102-xxxxxx



                                        입금 은행명
                                        은행명



                                        예금주명
                                        미르나인



                                        입금자명
                                        박종서



                                        입금 만료일
                                        2022년 3월 03일 12시 18분

                                        &nbsp;










                                        &nbsp;


                                        &nbsp;






                                        본 메일은 발신전용이므로 회신이 되지 않습니다.






                                        &nbsp;







                                    </td>
                                    <td>100</td>
                                    <td>2022-03-02 12:21:56</td>
                                </tr>
                            </tbody>
                        </table>
                        <br>


                        <div style="text-align:right;">
                            <ul class="pagination" style="margin:0;">
                                <li class="active"><a
                                        href="?tpf=admin/community/email_list&type=email&arrSearch=&page=1">1</a></li>
                                <li><a href="?tpf=admin/community/email_list&type=email&arrSearch=&page=2">2</a></li>
                                <li><a href="?tpf=admin/community/email_list&type=email&arrSearch=&page=3">3</a></li>
                                <li><a href="?tpf=admin/community/email_list&type=email&arrSearch=&page=4">4</a></li>
                                <li><a href="?tpf=admin/community/email_list&type=email&arrSearch=&page=5">5</a></li>
                                <li class="next"><a
                                        href="?tpf=admin/community/email_list&type=email&arrSearch=&page=6">Next → </a>
                                </li>
                                <li><a href="?tpf=admin/community/email_list&type=email&arrSearch=&page=13">Last → </a>
                                </li>
                            </ul>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col-xs-12 -->
        </div><!-- /.row -->
    </section>

</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>