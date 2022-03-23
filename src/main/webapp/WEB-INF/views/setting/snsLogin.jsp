<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="SNS연동 설정" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    SNS연동 설정
    <small>sns integration</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>설정</li>
        <li class="active">SNS연동 설정</li>
    </ol>
</section>

<section class="content">
<div class="row">
    <div class="col-xs-12">
        <div class="box">
            <div class="box-body">
                <form name="form_register" method="post" action="/index.php?tpf=admin/setting/process">
                <input type="hidden" name="mode" value="updateSNS">

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 비회원 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="none_member_use" value="y"  checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="none_member_use" value="n" >사용안함
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 카카오 계정 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">카카오 가입/인증</td>
                    <td align="left">
                    <a href="https://developers.kakao.com" target="_blank">카카오 가입/인증하기</a>&nbsp;&nbsp;
                    (승인된 리디렉션 URI &nbsp; : &nbsp; http://홈페이지주소/member/callback_kakao.php)
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="kakao_use" value="y" onchange="checkUse(this.value);" checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="kakao_use" value="n" onchange="checkUse(this.value);">사용안함
                    </td>
                </tr>
                <tr id="display_kakao" style="display:none;">
                    <td class="menu">REST API Key</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="kakao_sns_key" value="29300e22bf1e24e8f9b6983f6451cdd8" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 네이버 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">네이버 가입/인증</td>
                    <td align="left">
                    <a href="https://developers.naver.com" target="_blank">네이버 가입/인증하기</a>&nbsp;&nbsp;
                    (승인된 리디렉션 URI &nbsp; : &nbsp; http://홈페이지주소/member/callback_naver.php)
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="naver_use" value="y" onchange="checkUse(this.value);" checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="naver_use" value="n" onchange="checkUse(this.value);">사용안함
                    </td>
                </tr>
                <tr id="display_naver" style="display:none;">
                    <td class="menu">Client ID</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="naver_sns_id" value="x7PWZGpm2rSUorFIMWUF" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                <tr id="display_naver1" style="display:none;">
                    <td class="menu">Client Secret</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="naver_sns_key" value="p76Knr_yNN" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 구글 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">구글 가입/인증</td>
                    <td align="left">
                    <a href="https://console.developers.google.com" target="_blank">구글 가입/인증하기</a>&nbsp;&nbsp;
                    (승인된 리디렉션 URI &nbsp; : &nbsp; http://홈페이지주소/member/callback_google.php)
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="google_use" value="y" onchange="checkUse(this.value);" checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="google_use" value="n" onchange="checkUse(this.value);">사용안함
                    </td>
                </tr>
                <tr id="display_google" style="display:none;">
                    <td class="menu">Client ID</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="google_sns_id" value="997395309956-kncdk6lml1spfakrviv0p2kqh9l2sgre.apps.googleusercontent.com" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                <tr id="display_google1" style="display:none;">
                    <td class="menu">Client Secret</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="google_sns_key" value="vnhy5QfawyMhi6jAqNURuYKU" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 페이스북 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">페이스북 가입/인증</td>
                    <td align="left">
                    <a href="https://developers.facebook.com" target="_blank">페이스북 가입/인증하기</a>&nbsp;&nbsp;
                    (승인된 리디렉션 URI &nbsp; : &nbsp; http://홈페이지주소/member/callback_facebook.php)
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="facebook_use" value="y" onchange="checkUse(this.value);" checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="facebook_use" value="n" onchange="checkUse(this.value);">사용안함
                    </td>
                </tr>
                <tr id="display_facebook" style="display:none;">
                    <td class="menu">App ID</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="facebook_sns_id" value="2394195224003789" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                <tr id="display_facebook1" style="display:none;">
                    <td class="menu">App Secret</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="facebook_sns_key" value="d47c7be43094427c870b1938f40ad2b6" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 트위터 로그인</p></h4>
                <table class="table table-bordered">
                <tbody>
                <tr>
                    <td class="menu">트위터 가입/인증</td>
                    <td align="left">
                    <a href="https://apps.twitter.com/" target="_blank">트위터 가입/인증하기</a>&nbsp;&nbsp;
                    (승인된 리디렉션 URI &nbsp; : &nbsp; http://홈페이지주소/member/callback_twitter.php)
                    </td>
                </tr>
                <tr>
                    <td class="menu">사용 여부</td>
                    <td align="left">
                    <input type="radio" name="twitter_use" value="y" onchange="checkUse(this.value);" checked=checked>사용&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="twitter_use" value="n" onchange="checkUse(this.value);">사용안함
                    </td>
                </tr>
                <tr id="display_twitter" style="display:none;">
                    <td class="menu">API key</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="twitter_sns_id" value="gGCYaMQv5wacm7dVCHNU06xsB" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                <tr id="display_twitter1" style="display:none;">
                    <td class="menu">API secret key</td>
                    <td align="left">
                        <span style="float:left;"><input type="text" name="twitter_sns_key" value="YRK6Yj7JqSBJJcfEuq0Ni1WVG7VB9qik4bhe4C4mCrv5VfdFXk" class="form-control input-sm" style="width:500px;"></span>
                    </td>
                </tr>
                </tbody>
                </table>

                <div style="text-align:center; padding:20px 0px 0 0px"><button type="button" onclick="register()" class="btn btn-primary">확인</button></div>
                </form>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>