// local
// common
function displayPriceLocale(price,locale) {
	if (locale == 'ko') return price+'원';
	else if (locale == 'zh') return price+'CNY';
	else if (locale == 'jp') return '￥'+price;
	else return '$'+price;
}

function _onclickView(type, code) {
	var url = '';
	switch(type) {
		case 'board':
		url = '[include:tpf=board/list&board_code='+code+']';
		break;

		case 'form':
		url = '[include:tpf=form/write&form_code='+code+']';
		break;		
		
		case 'map':
		url = '[include:tpf=form/map&code='+code+']';
		break;
		
		default:
		break;
	}

	var url = btoa(url);
	window.open('/page.php?preview='+url, '_blank');	
}

function decodeHtml(text) {
	var map = {
        '&amp;': '&',
        '&#038;': "&",
        '&lt;': '<',
        '&gt;': '>',
        '&quot;': '"',
        '&#039;': "'",
        '&#39;': "'",
        '&#8217;': "’",
        '&#8216;': "‘",
        '&#8211;': "–",
        '&#8212;': "—",
        '&#8230;': "…",
        '&#8221;': '”'        
    };
    return text.replace(/\&[\w\d\#]{2,5}\;/g, function(m) { return map[m]; });
}

function checkForm(type,value) {
	if(type == 'number') var regExp = /^[0-9]+$/;											// 숫자
	else if(type == 'email') var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;	// 이메일
	else if(type == 'mobile') var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;// 휴대폰
	else if(type == 'tel') var regExp = /^\d{2,4}-\d{3,4}-\d{4}$/;							// 전화번호
	else if(type == 'img') {																// 이미지 파일
		var regExp = /(.jpg|.gif|.jpeg|.png)$/i;
	}
	
	if (!regExp.test(value)) return false
	else return true;
}

function nl2br(str) {
    return str.replace(/\n/g, "<br />");
}

// layer
function layer_open(el){
	var temp = $('#' + el);
    var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수

    if(bg){
        $('.layer').fadeIn();	//'bg' 클래스가 존재하면 레이어가 나타나고 배경은 dimmed 된다.
    }else{
        temp.fadeIn();
    }

    // 화면의 중앙에 레이어를 띄운다.
    if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
    else temp.css('top', '0px');
    if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
    else temp.css('left', '0px');

    temp.find('a.board-password-btn-list').click(function(e){
        if(bg){
            $('.layer').fadeOut(); //'bg' 클래스가 존재하면 레이어를 사라지게 한다.
        }else{
            temp.fadeOut();
        }
        e.preventDefault();
    });

    $('.layer .bg').click(function(e){	//배경을 클릭하면 레이어를 사라지게 하는 이벤트 핸들러
        $('.layer').fadeOut();
        e.preventDefault();
    });
}

// 다음 주소 찾기
function openDaumPostcode() {
	new daum.Postcode({
		width: 500,
		height: 600,
		animation: true,
		oncomplete: function(data) {
			$('input[name="addr"]').val(data.jibunAddress);
			$('input[name="addr_etc"]').focus();

			// 주소->좌표 변환
			var geocoder = new daum.maps.services.Geocoder();
			geocoder.addr2coord(data.jibunAddress, function(status, result) {
				// 정상적으로 검색이 완료됐으면
				if (status === daum.maps.services.Status.OK) {
					$('#map_lat').val(result.addr[0].lat);
					$('#map_lng').val(result.addr[0].lng);
				}
			});
		}
	}).open({
		q: $('input[name="addr"]').val(),
		left: (window.screen.width / 2) - (500 / 2),
		top: (window.screen.height / 2) - (600 / 2),
	});
}

//팝업 하루동안
function popupClose(cookiename){
	if($('#'+cookiename+' [name=popupcheck]').is(':checked')) {
		setCookie(cookiename, "done" , 1);
	}
	$("#"+cookiename).hide().html("");
}

//쿠키생성 ;;
function setCookie( name, value, expiredays ){
	var today = new Date();
	today.setDate( today.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";";
}

// 쿠키정보 ;;
function getCookie( name ) {
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length ) {
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
		break;
	}
	return "";
}

// 북마크 추가
function addBookmark(title,url){
	// Internet Explorer
	if(document.all) {
		window.external.AddFavorite(url, title);
	}
	else {
		alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	}
}

// 플래시 출력
function flash(c,d,e) {
 var flash_tag = "";
 flash_tag = '<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" ';
 flash_tag +='codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" ';
 flash_tag +='WIDTH="'+c+'" HEIGHT="'+d+'" >';
 flash_tag +='<param name="wmode" value="transparent">';
 //이부분은 플래쉬 배경을 투명으로 설정하는 부분으로 필요없다면 삭제해도 무방함
 flash_tag +='<param name="movie" value="'+e+'">';
 flash_tag +='<param name="quality" value="high">';
 flash_tag +='<embed src="'+e+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" ';
 flash_tag +='type="application/x-shockwave-flash"  WIDTH="'+c+'" HEIGHT="'+d+'"></embed></object>'
 document.write(flash_tag);
}

// 순서 변경 (direction:up(상위로 이동)/down(하위로 이동), table:순서변경 테이블명, url:순서변경후 돌아올 url, category_code:카테고리값(선택), locale:언어, form_name:form명(선택))
function changeOrder(direction,table,url,category_code,locale,form_name,page) {
	if (!category_code) category_code = '';
	if (!locale) locale = '';
	if (!form_name) form_name = 'form_list';
	if (!page) page = '';
	var f = eval(form_name);
	var chkRadio = f.order_code;
	if (!chkRadio) {
		alert('항목이 없습니다.');
		return;
	}
	var chkLen = chkRadio.length;
	if (chkLen == undefined) {
		alert('2개 이상의 항목이 있어야만 위치 변경이 가능합니다.');
		return false;
	}

	var order_code = $('input[name=order_code]:checked').val();

	if (order_code != undefined) {
		$.ajax({
			url:'/api/process.php',
			type:'post',
			dataType:'json',
			data:{
				method : 'API.changeOrder',
				direction : direction,
				table : table,
				category_code : category_code,
				locale : locale,
				order_code : order_code
			},
			success:function(data, textStatus, jqXHR){
				var json_data = data.data;

				if (json_data.result == 'y') location.replace(url+'&category_code='+category_code+'&order_code='+json_data.order_code+'&page='+page+'&locale='+locale);
				else alert(json_data.message);
			},
			error:function(jqXHR, textStatus, errorThrown){
				console.log(textStatus);
				// $('#content').val(errorThrown);
			}
		});
	}
	else {
		alert('1개의 항목을 선택하여야 합니다.');
		return false;
	}
}

// 선택삭제
function selectDelete(mode, message) {
	var default_mode = 'delete';
	var default_message = '해당 자료를 정말 삭제 하시겠습니까?';
	var count = $(":input[name = 'list[]']").length;
	if (count > 0) {
		if (isCheckedBox('form_list')) {
			if (mode) default_mode = mode;
			if (message) default_message = message;
			if(confirm(default_message)) {
				if($("#mode").length != 0) {
					form_list.mode.value = default_mode;
				}
				document.form_list.target = 'iframe_process';
				form_list.submit();
			}
			return false;
		}
		else {
			alert('항목을 선택하여야 합니다.');
			return false;
		}
	}
	else {
		alert('항목이 없습니다.');
		return false;
	}
}

function getMoneyString(strMoney) {
	var arNumber=new Array("일","이","삼","사","오","육","칠","팔","구");
	var arUnit=new Array("천","백","십","조","천","백","십","억","천","백","십","만","천","백","십","");

	var i=0;
	var nUnitIndex=15;
	var strMoneyString='';
	var strCurNumber='';

	if(strMoney.substring(0,1)=='-')
	strMoney=strMoney.substring(1);
	for(i=strMoney.length;i>0;i--) {
		strCurNumber=strMoney.substring(i-1,i);
		if(strCurNumber!='0' || ((nUnitIndex+1)%4==0 && ((i>=2 && strMoney.substring(i-2,i-1)!='0') || (i>=3 && strMoney.substring(i-3,i-2)!='0') || (i>=4 && strMoney.substring(i-4,i-3)!='0'))))
		strMoneyString=arUnit[nUnitIndex]+strMoneyString;
		if(strCurNumber!='0')
		strMoneyString=arNumber[parseInt(strCurNumber)-1]+strMoneyString;
		nUnitIndex--;
	}

	return strMoneyString;
}

function skipComma(number) {
	number=number.replace(/,/gi,'');
	return number;
}
function toInt(number) {
	if (number != '') {
		number=parseInt(number);
		return number;
	}
	else return false;
}
function displayComma(number) {
	var left_number='';
	var right_number='';
	number=number.replace(/,/gi,'');
	// 마이너스 처리
	var minus_tag = '';
	if (parseInt(number) < 0) {
		minus_tag = '-';
		number = number.replace('-','');
	}
	// 소숫점 처리
	if (number.indexOf('.') != -1) {
		number_len = number.length;
		point_index = number.indexOf('.');
		left_number = number.substring(0,point_index);
		right_number = number.substr(point_index,number_len-point_index);

		// alert(':'+left_number+':'+right_number);
	}
	else {
		left_number = number;
	}

	var factor = left_number.length % 3;
	var su = (left_number.length - factor) / 3;
	var result =  left_number.substring(0,factor);
	for(var i=0; i < su ; i++) {
		if((factor == 0) && (i == 0)) {
			result += left_number.substring(factor+(3*i), factor+3+(3*i));
		}
		else {
			result += ','  ;
			result += left_number.substring(factor+(3*i), factor+3+(3*i));
		}
	}
	return minus_tag + result + right_number;
}

function setTerm(daygap) {	// 특정일 만큼 현재 날짜에서 뺀 날구하기
	var f = document.form;
	now=newDay=new Date();

	var str='0';

	yy=now.getYear();
	mm=now.getMonth()+1;
	if (mm.toString().length == 1){ mm = str.toString().concat(mm)}
	dd=now.getDate();
	if (dd.toString().length == 1){ dd = str.toString().concat(dd)}

	f.start_year.value = yy;
	f.start_month.value = mm;
	f.start_day.value = dd;

	newDay.setDate(now.getDate()-daygap);
	newyy=newDay.getYear();
	newmm=newDay.getMonth()+1;
	if (newmm.toString().length == 1){ newmm = str.toString().concat(newmm)}
	newdd=newDay.getDate();
	if (newdd.toString().length == 1){ newdd = str.toString().concat(newdd)}

	f.start_year.value = newyy;
	f.start_month.value = newmm;
	f.start_day.value = newdd;
}

function checkMobile(number) {
	var mobilestr = /^(01[016789])([1-9][0-9]{2,3})([0-9]{4})$/;
	if (!number.match(mobilestr)) {
		alert("휴대폰 번호를 정확하게 입력해주세요.");
		return false;
	}
	else return true;
}

function checkTel(number) {
	var localnum = "02-|031|032|033|041|042|043|051|052|053|055|061|062|063|064|080|070"; //전화번호 지역번호
	digit = "0123456789";
	var arrNumber = number.split("-");

	count = arrNumber.length;
	if(count != 3) {
		alert('번호는 [-]문자를 포함해서 3자리 단위로 입력해 주십시오');
		return false;
	}

	var str = number.substr(0,3)
	if(localnum.indexOf(str)<0) {
		alert("일반전화입니다.\n\n지역번호를 정확하게 입력하세요");
		return false;
	}

	for(i=0; i<arrNumber[1].length; i++) {
		temp = arrNumber[1].charAt(i);

		if(digit.indexOf(temp) < 0) {
			alert('숫자만 입력가능 합니다.');
			return false;
		}
	}

	for(i=0; i<arrNumber[2].length; i++) {
		temp = arrNumber[2].charAt(i);

		if(digit.indexOf(temp) < 0) {
			alert('숫자만 입력가능 합니다.');
			return false;
		}
	}

	if (arrNumber[1].length < 3 || arrNumber[1].length > 4) {
		alert('번호는 3자리 또는 4자리로만 입력가능합니다.');
		return false;
	}

	if (arrNumber[2].length < 3 || arrNumber[2].length > 4) {
		alert('번호는 3자리 또는 4자리로만 입력가능합니다.');
		return false;
	}

	return true;
}

function checkNum(number) {		// 숫자체크
	re=/[^0-9]/gi;
	return number.replace(re,"");
}

function checkNumber(value) {// 숫자 체크 (return true/false)
	for(var i = 0; i < value.length; i++) {
		var chr = value.substr(i,1);
		if(chr < '0' || chr > '9') {
			alert('숫자만 입력 가능합니다.');
			return false;
		}
	}
	return true;
}

function checkAmountNum(number) {	// 금액체크 (숫자 and . and ,)
	re=/[^0-9,.]/gi;
	return number.replace(re,"");
}

function checkEmail(email) {
	var exclude=/[^@\-\.\w]|^[_@\.\-]|[\._\-]{2}|[@\.]{2}|(@)[^@]*\1/;
	var check=/@[\w\-]+\./;
	var checkend=/\.[a-zA-Z]{2,3}$/;
	if(((email.search(exclude) != -1)||(email.search(check)) == -1)||(email.search(checkend) == -1)) {
		alert('이메일 형식이 올바르지 않습니다.');
		return false;
	}
	else {
		return true;
	}
}

function isDateFormat(date) {	// 날짜 유효성 체크
    var dateFormat = /[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}/;
    return date.match(dateFormat);
}

function getLength(str) {		// 문자 길이 반환 (영문 1byte, 한글 2byte 계산)
	var len;
	var temp;

	len = str.length;
	var tot_cnt = 0;

	for(k=0;k < len;k++){
		temp = str.charAt(k);
		if(escape(temp).length > 4)
			tot_cnt += 2;
		else
			tot_cnt++;
	}
	return tot_cnt;
}

function checkBizNum(biznum) {	// 사업자번호 체크
	var sum = 0;
	var getlist = new Array(10);
	var chkvalue =new Array("1","3","7","1","3","7","1","3","5");
	for(var i=0; i<10; i++) {
		getlist[i] = biznum.substring(i, i+1);
	}
	for(var i=0; i<9; i++) {
		sum += getlist[i] * chkvalue[i];
	}
	sum = sum + parseInt((getlist[8]*5)/10);
	sidliy = sum % 10;
	sidchk = 0;
	if(sidliy != 0) { sidchk = 10 - sidliy; }
	else { sidchk = 0; }
	if(sidchk != getlist[9]) return false;
	return true;
}

function getBizNumType(number) {
	if(number > 0 && number <= 79 || number >= 90 && number <= 99) return "indi";	// 개인거래처
	else return "comp";																// 사업자거래처
}

function isOneCheckBox(form_name) {
	var f = eval(form_name);
	var chkBox = f.elements['list[]'];
	var chkLen = chkBox.length;
	var index = 0;

	// 선택된 파일이 있는지 체크
	if (!chkLen) {
		if (chkBox.checked) return true;
		else return false;
	}
	else {
		for (i = 0; i < chkLen; i++) {
			if (chkBox[i].checked) index++;
		}
	}
	if (index == 1) return true;
	else return false;
}

function isCheckedBox(form_name) {
	var f = eval(form_name);
	var chkBox = f.elements['list[]'];
	var chkLen = chkBox.length;

	// 선택된 파일이 있는지 체크
	if (!chkLen) {
		if (chkBox.checked) return true;
		else return false;
	}
	else {
		for (i = 0; i < chkLen; i++) {
			if (chkBox[i].checked) return true;
		}
		return false;
	}
}

function isCheckedRadio(form_name) {
	var f = eval(form_name);
	var chkBox = f.list_radio;
	var chkLen = chkBox.length;

	for (i = 0; i < chkLen; i++) {
		if (chkBox[i].checked) {
			return true;
		}
	}
	return false;
}

function selectAllCheckBox(form_name) {
	var f = eval('document.'+form_name);
	var dom = f['list[]'];
	var chk = f.select_all.checked;
	if (typeof dom == 'undefined') return;
	if (dom.length == undefined) {
		dom.checked = chk;
	} else {
		for (var i=0; i<dom.length; i++) {
			dom[i].checked = chk;
		}
	}
}

function winOpen(url,width,height,scrollbars,popup_name) {
	if (popup_name == '') popup_name = "obj_popup";
	window.open(url,popup_name,'width='+width+',height='+height+',scrollbars='+scrollbars);
}

function winOpenOption(url,width,height,left,top,scrollbars) {
	window.open(url,'secimg3','width='+width+',height='+height+',left='+left+',top='+top+',scrollbars='+scrollbars);
}

function winOpenPost(form_obj,win_name,action,width,height,scrollbars) {
	if (width == "") width=1;
	if (height == "") height=1;
	if (scrollbars == "") scrollbars="no";
	window.open ('',win_name,'toolbar=0,location=0,status=0,menubar=0,resizable=0,width='+width+',height='+height+',scrollbars='+scrollbars);
	form_obj.target = win_name;
	form_obj.action = action;
	form_obj.submit();
}

function confirmDelete(url) {
	if(confirm('정말 삭제하시겠습니까?'))
	location=url
}

function confirmMsg(url,msg,is_opener) {
	if (msg.length == 0) {
		msg = "정말 삭제하시겠습니까?";
	}
	if(confirm(''+msg))
	if (is_opener == 'Y') parent.location=url;
	else location=url;
}

function confirmIframeDelete(url) {
	if(confirm('정말 삭제하시겠습니까?'))
	iframe_process.location=url
}

function trim(str) {
	var reg = /\s/g;
	return str.replace(reg,'');
}

function ChkByte(field,info,maxbyte) {
	var tmpStr;
	var temp=0;
	var onechar;
	var tcount;
	tcount = 0;

	tmpStr = new String(field.value);
	temp = tmpStr.length;

	for (k=0;k<temp;k++) {
		onechar = tmpStr.charAt(k);
		if (escape(onechar).length > 4) {
			tcount += 2;
		}
		else if (onechar!='\r') {
			tcount++;
		}
	}
	document.form.txtByte.value = tcount;

	if(tcount>maxbyte) {
		alert(info + "는 " + (maxbyte) + "바이트를 초과할수 없습니다.");
		field.focus();
		return false
	}
	else {
		return true;
	}
	maxbyte--;
}

function reversCutString(aquery,max) {
	var tmpStr;
	var temp=0;
	var onechar;
	var tcount;
	var ccount;
	tcount = 0;

	tmpStr = new String(aquery);
	temp = tmpStr.length;

	for(k=0;k<temp;k++) {
		onechar = tmpStr.charAt(k);
		if(escape(onechar).length > 4) {
			tcount += 2;
			ccount = 2;
		}
		else if(onechar!='\r') {
			tcount++;
			ccount = 1;
		}
		if(tcount>max) {
			tcount = tcount - ccount;
			tmpStr = tmpStr.substring(0,k);
			break;
		}
	}
	if(max == 80) {
		document.form.mail_content.value = tmpStr;
		document.form.txtByte.value = tcount;
	}
	return tmpStr;
}

// 아이디 유효성 체크
function checkId(id) {
	var id = id.trim();
	var len = id.length;
	if (len < 4 || len > 12) {
		alert("아이디는 4~12자이어야 합니다.");
		return false;
	}
	for (var i=0; i<len; i++) {
		retChar = id.substr(i, 1);
		if ((retChar < "0" || retChar > "9") && (retChar < "a" || retChar > "z")) {
			alert("아이디는 영문 소문자, 숫자 조합만 가능합니다.");
			return false;
		}
		if (i == 0 && (retChar < "a" || retChar > "z")) {
			alert("첫문자는 반드시 영문자 여야 합니다.");
			return false;
		}
	}
	return true;
}

// 비번 유효성 체크
function checkPassword(password){
    var num = password.search(/[0-9]/g);
    var eng = password.search(/[a-z]/ig);
    var spe = password.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	var blank_pattern = /[\s]/g;

    if(password.length < 8 || password.length > 20){
        return false;
    }
	
	if( blank_pattern.test(password) == true){
		return false;
	}

    if(num < 0 || eng < 0 || spe < 0 ) {
        return false;
    }
    return true;
}

function checkPasswordSimple(password){
    var password = password.trim();
	var len = password.length;
	if (len < 4 || len > 25) {		
		return false;
	}
	return true;
}