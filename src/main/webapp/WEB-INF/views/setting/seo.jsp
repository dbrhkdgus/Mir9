<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="SEO 설정" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    SEO 설정
    <small>seo</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>기본 설정</li>
        <li class="active">SEO 설정</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div>
            <div class="box">
                <div class="box-body">

                <div class="col-md-6">
                <table class="table table-bordered">
                <form name="form_register" method="post" action="?tpf=admin/setting/seo_process" enctype="multipart/form-data">
                <input type="hidden" name="mode" value="updateSEO">             
                <tr>
                    <td class="menu">Webmaster 파일</td>
                    <td align="left">
                        <span style="display:inline-block; margin-bottom:10px; width:50px;">Naver</span>
                        <input type="file" name="webmaster_naver" class="form-control input-sm" style="width:75%; display:inline;">
                        <br>
                        <span style="display:inline-block; margin-bottom:10px; width:50px;">Google</span>
                        <input type="file" name="webmaster_google" class="form-control input-sm" style="width:75%; display:inline;">
                        <br>
                        <span style="display:inline-block; width:50px;">Bing</span>
                        <input type="file" name="webmaster_bing" class="form-control input-sm" style="width:75%; display:inline;">
                        <br>
                        ※ 파일명 : <span style="color:red">google720f2775a1~~.html / naver2269084420~~.html</span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">Sitemap</td>
                    <td align="left">
                        <input type="file" name="sitemap" class="form-control input-sm" style="width:80%; display:inline;">
                        <br>
                        ※ 파일명 : <span style="color:red">sitemap.xml <a href="http://www.web-site-map.com" target="_new">[사이트맵 추출하기 바로가기]</a></span>
                    </td>
                </tr>
                <tr>
                    <td class="menu">Robots</td>
                    <td align="left">
                        <textarea name="robots" rows="4" style="width:100%;">User-agent : *
Allow : /</textarea>
                    </td>
                </tr>
                </table>
                </div>

                <div class="col-md-6">
                <table class="table table-bordered">                 
                <tr>
                    <td class="menu">전환추적 태그<br>or<br>Rich Snippet</td>
                    <td align="left">
                        <textarea name="ads_tag" rows="20" style="width:100%;"><!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-142394166-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-142394166-1');
</script></textarea>
                        <br>
                        ※ Google, naver 등의 전환추적 태그나 Rich Snippet 스크립트를 넣어주세요
                    </td>
                </tr>                              
                </form>
                </table>
                </div>

                <div align="center" class="col-md-12">
                <button type="button" onclick="register();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 확인</button>
                </div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>

<form name="form_fileDelete" method="post" action="?tpf=admin/setting/seo_process" enctype="multipart/form-data">
    <input type="hidden" name="mode" value="deleteSEO">
    <input type="hidden" name="name">
    <input type="hidden" name="category"> 
</form>
</div><!-- /.content-wrapper -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>