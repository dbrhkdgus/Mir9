<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="버전 관리" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    Version 관리
    <small>verion list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Version 관리</li>
    </ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.8.1</small> <p>&nbsp;&nbsp;2020.01.30</p></h4>
                <p>알림 설정</p>
                <pre>
- 커뮤니티 관리 > 메일/SMS 발송 문구 설정 (※ SMS는 충전후 사용 가능)
- 설정 > 기본 설정 : 대표 이메일/휴대폰, 발신자 번호 설정</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.8.0</small> <p>&nbsp;&nbsp;2020.01.20</p></h4>
                <p>기능 개선</p>
                <pre>
- 회원개인별 적립금 적립 및 쿠폰 발송
- 주문 후기 기능 개선 (한줄, 이미지등)</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.9</small> <p>&nbsp;&nbsp;2019.12.27</p></h4>
                <p>회원 등급별 할인율 적용</p>
                <pre>
- 설정 > 기본 설정 : 회원 등급별 할인율 사용하기 체크</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.7</small> <p>&nbsp;&nbsp;2019.09.10</p></h4>
                <p>기능 개선</p>
                <pre>
- 연혁 복사, 게시판 글 복사, 제품 웹에디터 다중 등록
- 폼메일 복사
- 메일 발송 서버 교체</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.8</small> <p>&nbsp;&nbsp;2019.11.04</p></h4>
                <p>기능 개선</p>
                <pre>
- 연혁 이미지 등록 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.7</small> <p>&nbsp;&nbsp;2019.09.10</p></h4>
                <p>기능 개선</p>
                <pre>
- 연혁 복사, 게시판 글 복사, 제품 웹에디터 다중 등록
- 폼메일 복사
- 메일 발송 서버 교체</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.6</small> <p>&nbsp;&nbsp;2019.07.12</p></h4>
                <p>SEO(검색기능 최적화) 설정</p>
                <pre>- 설정 &gt; SEO 설정 : 구글,네이버,Bing 웹마스 도구, 전환추적등 각종 스크립트 등록 가능</pre>
                <p>다국어별 메뉴 보임/숨김 설정</p>
                <pre>- 메뉴 관리에서 다국어별로 상태 보임/숨김을 각각 설정 가능</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.4</small> <p>&nbsp;&nbsp;2019.05.31</p></h4>
                <p>연혁 기능 개선</p>
                <pre>
- 설정 > 기본 설정 에서 연혁 레이아웃(스킨), 표출 형태 선택 가능</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.3</small> <p>&nbsp;&nbsp;2019.05.23</p></h4>
                <p>폼메일 기능 개선</p>
                <pre>
- 폼메일 관리 > 리스트 > 문항 관리 에서 [폼 HTML 디자인 - 리스트] 에 번호[no], 등록일[date] 항목 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.2</small> <p>&nbsp;&nbsp;2019.05.15</p></h4>
                <p>헤드메뉴 기능 개선</p>
                <pre>
- 메뉴 관리 > 헤더 관리에서 [menu] 태그 삽입시 각각의 서브페이지의 메뉴명을 표출 해 줍니다.
  > 헤더 편집툴에서 사용 예) 홈 > 회사소개 > [menu]</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.1</small> <p>&nbsp;&nbsp;2019.05.07</p></h4>
                <p>리비젼 기능 추가</p>
                <pre>
- 메뉴 관리에서 수정 or 삭제시 이전 내용을 version별로 저장 : 작업한 내용 복구시 사용 가능</pre>
                <p>제품 기능 개선</p>
                <pre>
- 관리자 > 제품 > 입력항목 설정에서 [폼 HTML 디자인 - 리스트]
  > [count] : 제품수 표출
  > [new] : NEW 아이콘 표출 (예: &#60;img src="/img/new.jpg"[new]&#62;)
  > [link] : 제품 링크 태그 수동으로 지정 가능</div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.7.0</small> <p>&nbsp;&nbsp;2019.04.23</p></h4>
                <p>기능개선</p>
                <pre>
- 제품 : 리스트, 상세보기 폼제작 기능 추가
         관리자 페이지 > 제품 > 입력항목 설정 > 폼 HTML 디자인 - 리스트 / 상세보기
- 폼메일 : 폼 HTML 디자인 - 리스트 / 쓰기
           자료 엑셀 다운받기 기능 추가
- 사이트 하단 편집 기능 추가 : 메뉴 관리 > 하단 관리
- 제품 복제 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.9</small> <p>&nbsp;&nbsp;2019.04.17</p></h4>
                <p>기능개선</p>
                <pre>
- 게시판 글 상세보기 레이어팝업 기능 추가
  관리자 페이지 > 게시판 관리 > 리스트 > [상세보기] : 기타 옵션에서 상세보기(팝업)</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.8</small> <p>&nbsp;&nbsp;2019.04.03</p></h4>
                <p>기능개선</p>
                <pre>
- 팝업 : 유트브, vimeo 동영상 지원
- 폼메일 : 등록글 위치변경 기능 추가
           전화번호폼, 이메일폼 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.7</small> <p>&nbsp;&nbsp;2019.03.05</p></h4>
                <p>기능개선</p>
                <pre>
- 폼메일 : 폼 HTML 디자인 관리 기능 추가 (항목을 원하는 위치에 배치 가능)
           폼 복제 기능 추가
- 게시판 : 게시물 이전 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.6</small> <p>&nbsp;&nbsp;2019.02.20</p></h4>
                <p>약도 관리</p>
                <pre>
- 주소 -> 좌표 변환 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.5</small> <p>&nbsp;&nbsp;2019.01.25</p></h4>
                <p>보안패치</p>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.1</small> <p>&nbsp;&nbsp;2018.11.27</p></h4>
                <p>카테고리 & SNS 인스타그램</p>
                <pre>
- 제품 카테고리 다국어 설정
- SNS 인스타그램 이미지 해상도 옵션 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.6.0</small> <p>&nbsp;&nbsp;2018.11.14</p></h4>
                <p>관리자 > 기본설정 기능 추가</p>
                <pre>
- 디폴트 언어, 다국어 설정
- 관리자 메뉴 표출 설정
- 썸네일 이미지, 파비콘 이미지 등록 가능</pre>
                <p>관리자 > 제품 > 리스트 : 카테고리 수정 가능</p>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.9</small> <p>&nbsp;&nbsp;2018.10.15</p></h4>
                <p>파일 업로드 패치</p>
                <pre>
- 파일명 특수문자 입력 제한</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.8</small> <p>&nbsp;&nbsp;2018.09.27</p></h4>
                <p>버그 수정</p>
                <pre>
- 제품 순서 변경 부분 오류 수정
- 제품 등록 부분 오류 수정
- 메뉴 url prefix 오류 수정</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.7</small> <p>&nbsp;&nbsp;2018.09.21</p></h4>
                <p>보안 SSL 적용</p>
                <pre>
- SSL 신청시 자동 지원</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.6</small> <p>&nbsp;&nbsp;2018.09.19</p></h4>
                <p>제품 리스트 항목 지정</p>
                <pre>
- 제품 항목중 리스트 페이지에 표출 항목 지정 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.5</small> <p>&nbsp;&nbsp;2018.09.18</p></h4>
                <p>모듈 바로 가기</p>
                <pre>
- 게시판, 폼메일, 약도등 각종 모듈 관리자 페이지에서 [바로가기] 링크 기능 추가</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.4</small> <p>&nbsp;&nbsp;2018.09.10</p></h4>
                <p>모바일 메뉴 패치</p>
                <pre>
- 모바일 메뉴에서 바로가기 링크 수정</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.3</small> <p>&nbsp;&nbsp;2018.09.04</p></h4>
                <p>제품 소개(다국어 지원)</p>
                <pre>
- 제품 항목
- 제품 내용</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.2</small> <p>&nbsp;&nbsp;2018.08.15</p></h4>
                <p>다국어 지원</p>
                <pre>
- 폼메일 항목
- 팝업창</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.1</small> <p>&nbsp;&nbsp;2018.06.27</p></h4>
                <p>연혁 년도 구간별 가져오기 기능 추가</p>
                <pre>
<b>[include:tpf=company/history]
[include:tpf=company/history&start_year=2015&end_year=2017]</b>
- start_year : 시작년도
- end_year : 종료년도</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.5.0</small> <p>&nbsp;&nbsp;2018.06.18</p></h4>
                <p>제품항목 설정 기능 추가</p>
                <pre>
<b>관리자 > 제품 > 입력항목 설정</b>
- 입력항목 : 텍스트,텍스트에어리어,콤보박스,라디오,체크박스,날짜,파일
- 필수항목 : 선택
- placeholder : 디폴트 문구
- 입력값 체크 : 이메일,휴대폰,전화번호,숫자 체크 가능</pre>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.4.3</small> <p>&nbsp;&nbsp;2018.04.11</p></h4>
                <p>폼메일 관리 기능 추가</p>
                <pre>
<b>관리자 > 폼메일관리</b> : 입력항목 설정 및 결과 보기, 메일로 받기
- 입력항목 : 텍스트,텍스트에어리어,콤보박스,라디오,체크박스,날짜,파일
- 필수항목 : 선택
- placeholder : 디폴트 문구
- 입력값 체크 : 이메일,휴대폰,전화번호,숫자 체크 가능
- 수신 메일 주소 : 수신받을 메일 등록 (콤마 구분으로 복수개 등록가능)
- 보안 코드 : 자동 등록방지(켑차
- 개인정보 수집*이용 동의 : 약관 표출
- 수신 휴대폰 번호 : 추후 지원 예정</pre>

                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.4.2</small> <p>&nbsp;&nbsp;2017.11.09</p></h4>
                <p>Admin 2.4.2 패치</p>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.01</small> <p>&nbsp;&nbsp;2017.5.11</p></h4>
                <p>jquery ui 및 css 파일 local 저장</p>
                <p>일정관리 문구 수정</p>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">2.00</small> <p>&nbsp;&nbsp;2017.3.23</p></h4>
                <p>게시판 헤더 css 편집 기능 추가</p>
                <p>ckeditor 업그레이드</p>
                <p>자동 주소 검색 기능 추가</p>
                <p>버젼 관리기능 추가</p>
                </div>

                <div class="callout callout-info">
                <h4><small class="label pull-left bg-red">1.50</small> <p>&nbsp;&nbsp;2017.2.28</p></h4>
                <p>임원관리 / 연혁관리 / 배너관리 추가</p>
                <p>SMS발송 내역 보기</p>
                </div>

                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>
</div><!-- /.content-wrapper -->



<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>