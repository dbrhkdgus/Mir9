<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="SMS발송 내역" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
        SMS 발송 내역
        <small>SMS 발송 내역 list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li>커뮤니티 관리</li>
        <li class="active">SMS 발송 내역</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <label style="margin-top:5px;">총 86건</label>
                    <div class="box-tools pull-right" style="margin-bottom:5px;">
                        <form name="form_search" method="post" action="?tpf=admin/community/sms_list">
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
      <option value="total">전체</option>      <option value="title">제목</option>      <option value="content">내용</option>      <option value="receive">수신번호</option>                            </select>
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
                                <td >NO</td>
                                <td >구분</td>
								<td >수신번호</td>
                                <td >제목</td>
                                <td>내용</td>
								<td >사용 포인트</td>
                                <td >등록일시</td>
                            </tr>
						</thead>
						<tbody>
              <tr>
                                <td>86</td>
                                <td></td>
								<td>010-4177-2690</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200221_100335502)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-21 10:03:44</td>
                            </tr>              <tr>
                                <td>85</td>
                                <td></td>
								<td>010-4177-2690</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200219_163444881)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-19 16:35:48</td>
                            </tr>              <tr>
                                <td>84</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-18 17:11:05</td>
                            </tr>              <tr>
                                <td>83</td>
                                <td></td>
								<td>010-4177-2690</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-18 17:11:05</td>
                            </tr>              <tr>
                                <td>82</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-18 17:11:04</td>
                            </tr>              <tr>
                                <td>81</td>
                                <td></td>
								<td>010-4177-2690</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-18 17:11:03</td>
                            </tr>              <tr>
                                <td>80</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104244389)이 접수되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:42:58</td>
                            </tr>              <tr>
                                <td>79</td>
                                <td></td>
								<td>010-4177-2690</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104244389)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:42:57</td>
                            </tr>              <tr>
                                <td>78</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104111821)이 접수되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:41:21</td>
                            </tr>              <tr>
                                <td>77</td>
                                <td></td>
								<td>010-1111-2222</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104111821)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:41:20</td>
                            </tr>              <tr>
                                <td>76</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104034552)이 접수되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:40:41</td>
                            </tr>              <tr>
                                <td>75</td>
                                <td></td>
								<td>010-1111-2222</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_104034552)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:40:41</td>
                            </tr>              <tr>
                                <td>74</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_103944310)이 접수되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:39:54</td>
                            </tr>              <tr>
                                <td>73</td>
                                <td></td>
								<td>010-1111-2222</td>
                                <td align="left">주문 접수</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문(200213_103944310)이 접수되었습니다.<br />
감사합니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-13 10:39:53</td>
                            </tr>              <tr>
                                <td>72</td>
                                <td></td>
								<td>010-1111-1111</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-10 17:39:39</td>
                            </tr>              <tr>
                                <td>71</td>
                                <td></td>
								<td>010-1111-2222</td>
                                <td align="left">상품 발송</td>
                                <td align="left">[MIR9 SHOP]<br />
길동이님의 주문하신 상품이 발송 되었습니다.<br />
<br />
</td>
								<td>-13</td>
								<td>2020-02-10 17:39:39</td>
                            </tr>						</tbody>
                    </table>
                    <br>


                    <div style="text-align:right;">
                        <ul class="pagination" style="margin:0;">
<li class="active"><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=1">1</a></li>
<li><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=2">2</a></li>
<li><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=3">3</a></li>
<li><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=4">4</a></li>
<li><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=5">5</a></li>
<li class="next"><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=6">Next → </a></li>
<li><a href="?tpf=admin/community/sms_list&type=sms&arrSearch=&page=6">Last → </a></li>
</ul>                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>