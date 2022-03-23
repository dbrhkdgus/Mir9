<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/WEB-INF/views/common/header.jsp">
<jsp:param value="일정 관리" name="title"/>
</jsp:include>


<!-- content-wrapper -->
<div class="content-wrapper">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style>
.fc-sat { color:blue; }
.fc-sun { color:red;  }
.fc-event{ cursor: pointer;}
#calendar .fc-view.fc-week > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-week > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header,
#calendar .fc-view.fc-agendaWeek-view > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-agendaWeek-view > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header,
#calendar .fc-view.fc-agendaDay-view > table > tbody > tr:first-child > .fc-widget-content .fc-day-grid,
#calendar .fc-view.fc-agendaDay-view > table > tbody > tr:first-child > .fc-widget-content .fc-widget-header {display:none !important;}
</style>

<section class="content-header">
    <h1>
    일정 관리
    <small>schedule list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">일정 관리</li>
    </ol>
</section>

<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-primary">
        <div class="box-body no-padding">
          <!-- THE CALENDAR -->
          <div id="calendar"></div>
        </div><!-- /.box-body -->
      </div><!-- /. box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section>

<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:600px;">
        <div class="modal-content">
            <form name="form_register" method="post" action="?tpf=admin/schedule/process" enctype="multipart/form-data">
            <input type="hidden" name="mode" id="mode" value="insert">
            <input type="hidden" name="type" value="nomal">
            <input type="hidden" name="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">일정 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 일정 <span id="board_sub_title">등록</span></p></h4>
            <table class="table table-bordered">
            <tr>
                <td class="menu">날짜</td>
                <td align="left">
                <span style="float:left">
                <input type="text" name="start_date" id="datepicker1" class="form-control input-sm" style="width:80px; float:left" readonly placeholder="시작일">
                <select name="start_time" class="form-control input-sm" style="width:80px; margin-left:3px; float:left;">
      <option value="00:00">00:00</option>      <option value="00:30">00:30</option>      <option value="01:00">01:00</option>      <option value="01:30">01:30</option>      <option value="02:00">02:00</option>      <option value="02:30">02:30</option>      <option value="03:00">03:00</option>      <option value="03:30">03:30</option>      <option value="04:00">04:00</option>      <option value="04:30">04:30</option>      <option value="05:00">05:00</option>      <option value="05:30">05:30</option>      <option value="06:00">06:00</option>      <option value="06:30">06:30</option>      <option value="07:00">07:00</option>      <option value="07:30">07:30</option>      <option value="08:00">08:00</option>      <option value="08:30">08:30</option>      <option value="09:00">09:00</option>      <option value="09:30">09:30</option>      <option value="10:00">10:00</option>      <option value="10:30">10:30</option>      <option value="11:00">11:00</option>      <option value="11:30">11:30</option>      <option value="12:00">12:00</option>      <option value="12:30">12:30</option>      <option value="13:00">13:00</option>      <option value="13:30">13:30</option>      <option value="14:00">14:00</option>      <option value="14:30">14:30</option>      <option value="15:00">15:00</option>      <option value="15:30">15:30</option>      <option value="16:00">16:00</option>      <option value="16:30">16:30</option>      <option value="17:00">17:00</option>      <option value="17:30">17:30</option>      <option value="18:00">18:00</option>      <option value="18:30">18:30</option>      <option value="19:00">19:00</option>      <option value="19:30">19:30</option>      <option value="20:00">20:00</option>      <option value="20:30">20:30</option>      <option value="21:00">21:00</option>      <option value="21:30">21:30</option>      <option value="22:00">22:00</option>      <option value="22:30">22:30</option>      <option value="23:00">23:00</option>      <option value="23:30">23:30</option>				</select>
                </span>
                <span style="float:left">&nbsp;&nbsp;~&nbsp;&nbsp;</span>
                <span style="float:left">
                <input type="text" name="end_date" id="datepicker2" class="form-control input-sm" style="width:80px; float:left" readonly placeholder="종료일">
                <select name="end_time" class="form-control input-sm" style="width:80px; margin-left:3px; float:left;">
      <option value="00:00">00:00</option>      <option value="00:30">00:30</option>      <option value="01:00">01:00</option>      <option value="01:30">01:30</option>      <option value="02:00">02:00</option>      <option value="02:30">02:30</option>      <option value="03:00">03:00</option>      <option value="03:30">03:30</option>      <option value="04:00">04:00</option>      <option value="04:30">04:30</option>      <option value="05:00">05:00</option>      <option value="05:30">05:30</option>      <option value="06:00">06:00</option>      <option value="06:30">06:30</option>      <option value="07:00">07:00</option>      <option value="07:30">07:30</option>      <option value="08:00">08:00</option>      <option value="08:30">08:30</option>      <option value="09:00">09:00</option>      <option value="09:30">09:30</option>      <option value="10:00">10:00</option>      <option value="10:30">10:30</option>      <option value="11:00">11:00</option>      <option value="11:30">11:30</option>      <option value="12:00">12:00</option>      <option value="12:30">12:30</option>      <option value="13:00">13:00</option>      <option value="13:30">13:30</option>      <option value="14:00">14:00</option>      <option value="14:30">14:30</option>      <option value="15:00">15:00</option>      <option value="15:30">15:30</option>      <option value="16:00">16:00</option>      <option value="16:30">16:30</option>      <option value="17:00">17:00</option>      <option value="17:30">17:30</option>      <option value="18:00">18:00</option>      <option value="18:30">18:30</option>      <option value="19:00">19:00</option>      <option value="19:30">19:30</option>      <option value="20:00">20:00</option>      <option value="20:30">20:30</option>      <option value="21:00">21:00</option>      <option value="21:30">21:30</option>      <option value="22:00">22:00</option>      <option value="22:30">22:30</option>      <option value="23:00">23:00</option>      <option value="23:30">23:30</option>				</select>
                </span>
                </td>
            </tr>
            <tr>
                <td class="menu">제목</td>
                <td align="left">
                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tr>
                    <td style="width:8%; text-align:left;">
                    <select name="background_color" id="colorselector">
          <option value="#A0522D" data-color="#A0522D"></option>          <option value="#CD5C5C" data-color="#CD5C5C"></option>          <option value="#FF4500" data-color="#FF4500"></option>          <option value="#008B8B" data-color="#008B8B"></option>          <option value="#B8860B" data-color="#B8860B"></option>          <option value="#32CD32" data-color="#32CD32"></option>          <option value="#FFD700" data-color="#FFD700"></option>          <option value="#00C0EF" data-color="#00C0EF"></option>          <option value="#87CEEB" data-color="#87CEEB"></option>          <option value="#FF69B4" data-color="#FF69B4"></option>          <option value="#87CEFA" data-color="#87CEFA"></option>          <option value="#6495ED" data-color="#6495ED"></option>          <option value="#DD4B39" data-color="#DD4B39"></option>          <option value="#FF8C00" data-color="#FF8C00"></option>          <option value="#C71585" data-color="#C71585"></option>          <option value="#00A65A" data-color="#00A65A"></option>          <option value="#F39C12" data-color="#F39C12"></option>          <option value="#3C8DBC" data-color="#3C8DBC"></option>          <option value="#000000" data-color="#000000"></option>                    </select>
                    </td>
                    <td>
                    <input type="text" name="title" class="form-control input-sm" style="width:100%;">
                    </td>
                </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td class="menu">내용</td>
                <td align="left"><textarea name="content" id="content" rows="5" style="width:100%"></textarea></td>
            </tr>
            </table>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="register()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            <button type="button" onclick="deleteSchedule()" id="display_reply" style="display:none;" class="btn btn-danger">삭제</button>
            </div>
            </form>
        </div>
    </div>
</div>
</div><!-- /.content-wrapper -->

<!-- calendar 스크립트 -->
<script>
        function register() {
            if(form_register.start_date.value == '') { alert('시작일이 입력되지 않았습니다.'); form_register.start_date.focus(); return false;}
            if(form_register.start_time.value == '') { alert('시작 시간이 입력되지 않았습니다.'); form_register.start_time.focus(); return false;}
            if(form_register.end_date.value == '') { alert('종료일이 입력되지 않았습니다.'); form_register.end_date.focus(); return false;}
            if(form_register.end_time.value == '') { alert('종료 시간이 입력되지 않았습니다.'); form_register.end_time.focus(); return false;}
            if(form_register.title.value == '') { alert('제목이 입력되지 않았습니다.'); form_register.title.focus(); return false;}
            form_register.target = 'iframe_process';
            form_register.submit();
        }
        function deleteSchedule() {
            if(confirm('해당 일정을 정말 삭제하시겠습니까?')) {
				form_register.target = 'iframe_process';
                form_register.mode.value = 'delete';
				form_register.submit();
			}
        }
        function _updateDate(code,start_date,end_date) {
            $.ajax({
                url:'http://demoshop.mir9.kr/api/process.php',
                type:'post',
                dataType:'json',
                data:{
                    method : 'UtilSchedule.updateDate',
                    code : code,
                    start_date : start_date,
                    end_date : end_date
                },
                success:function(data, textStatus, jqXHR){
                },
                error:function(jqXHR, textStatus, errorThrown){
                    console.log(textStatus);
                    // $('#content').val(errorThrown);
                }
            });
        }
        $(function() {
            /* calendar */
            // 초기화
            var current_date = '';

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                titleFormat: {
                    month: 'YYYY년 MMMM',
                    week: 'YYYY년 MMMM D',
                    day: 'YYYY년 MMMM D일 dddd요일'
                },
                allDayText: '시간',
                axisFormat: 'HH:mm',
                timeFormat: 'HH:mm',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                buttonText: {
                    today: '오늘',
                    month: '월간',
                    week: '주간',
                    day: '일간'
                },
                fixedWeekCount: false,
                selectable: true,
                selectHelper: true,
                editable: true,     // 드래그 수정 가능 여부
                droppable: true,    // drop 가능하게
                // $('#calendar').fullCalendar('removeEvents',event._id);   // 일정 삭제
                eventClick: function(event) {                       // 일정 클릭
                    $('#modalContent').modal({backdrop:'static', show:true});
                    form_register.mode.value = 'update';
                    form_register.code.value = event.code;
                    $('[name=start_date]').val(moment(event.start).format('YYYY-MM-DD'));
                    $('[name=start_time]').val(moment(event.start).format('HH:mm'));
                    $('[name=end_date]').val(moment(event.end).format('YYYY-MM-DD'));
                    $('[name=end_time]').val(moment(event.end).format('HH:mm'));
                    $('[name=title]').val(event.title);
                    $('[name=content]').val(event.content);
                    $('[name=background_color]').val(event.backgroundColor);
                    $('.btn-colorselector').css('background-color',event.backgroundColor);
                    $('#display_reply').css('display','');
                    $('#colorselector').colorselector('setColor', event.backgroundColor);
                },
                dayClick: function(date, allDay, jsEvent, view) {   // 날짜 클릭
                    if (current_date == '') $(this).css('background-color', '#e5e3e3');
                    else {
                        $(current_date).css('background-color','white');
                        $(this).css('background-color','#e5e3e3');
                    }
                    current_date = this;
                    form_register.mode.value = 'insert';
                    $('#modalContent').modal({backdrop:'static', show:true});   // 모달 오픈
                    // input 페이지 init
                    $('[name=title]').val('');
                    $('[name=content]').val('');
                    $('[name=start_date]').val(date.format());
                    $('[name=start_time]').val('09:00');
                    $('[name=end_date]').val(date.format());
                    $('[name=end_time]').val('09:30');
                    $('[name=background_color]').val('#A0522D');
                    $('.btn-colorselector').css('background-color','#A0522D');
                    $('#display_reply').css('display','none');
                },
                eventResize: function(event,dayDelta,minuteDelta,revertFunc) {
                    _updateDate(event.code,event.start.format().replace('T',' '),event.end.format().replace('T',' '));
                },
                eventDrop: function(event,dayDelta,minuteDelta,allDay,revertFunc) {
                    _updateDate(event.code,event.start.format().replace('T',' '),event.end.format().replace('T',' '));
                },
                // 날짜별 일정 등록
                events: [{"code":"1","title":"\u314b\u314b","content":"\u314b\u314b","start":"2018-02-20 09:00:00","end":"2018-02-22 09:30:00","backgroundColor":"#A0522D","borderColor":"#A0522D","editable":true},{"code":"2","title":"\uc2e0\uc785\uc0dd \uc624\ub9ac\uc5d4 \ud2f0\uc158","content":"\uc77c\uc815 : 3\/6 ~ 3\/7\r\n\uc7a5\uc18c : \ubcf8\uc0ac \uac15\ub2f9","start":"2018-04-05 10:00:00","end":"2018-04-06 10:30:00","backgroundColor":"#FF8C00","borderColor":"#FF8C00","editable":true},{"code":"3","title":"\uc804\uccb4 \ud68c\uc758","content":"","start":"2018-03-16 09:00:00","end":"2018-03-16 09:30:00","backgroundColor":"#C71585","borderColor":"#C71585","editable":true},{"code":"4","title":"\uba54\uc778\ud398\uc774\uc9c0","content":"\u3141\u3134\u3147\u3139\u3147\u3134\u3141\u3139","start":"2018-07-09 09:00:00","end":"2018-07-11 09:30:00","backgroundColor":"#DD4B39","borderColor":"#DD4B39","editable":true}]
            });
            $('#calendar').fullCalendar('gotoDate', '2022-03');

            /* datepicker */
            $( "#datepicker1,#datepicker2" ).datepicker({
                dateFormat: 'yy-mm-dd',
                prevText: '이전 달',
                nextText: '다음 달',
                monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dayNames: ['일','월','화','수','목','금','토'],
                dayNamesShort: ['일','월','화','수','목','금','토'],
                dayNamesMin: ['일','월','화','수','목','금','토'],
                showMonthAfterYear: true,
                yearSuffix: '년'
            });
            $('#datepicker1,#datepicker2').datepicker({
                dateFormat: 'yy-mm-dd'
            });
            $('#colorselector').colorselector();
        });
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>