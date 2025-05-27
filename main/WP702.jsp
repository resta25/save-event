<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" /><!-- IE최신 -->
	<!-- Facebook OpenGraph -->
	<meta property="og:title" content="" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="https://event.resta.co.kr/WP702" />
	<meta property="og:site_name" content="멜로디서울" />
	<meta property="og:description" content="" />
	<meta property="og:locale:alternate" content="ko_KR" />

	<meta name="subject" content="" />
	<meta name="description" content="">
	<meta name="content-language" content="kr" />
	<title> 멜로디서울</title>
	<script src="//static.hotblood.co.kr/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="//static.hotblood.co.kr/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="//event.resta.co.kr/common.js?ver=202411261410"></script>
	<script src="//event.resta.co.kr/static/js/hangul.js"></script>
	<link type="text/css" href="//static.hotblood.co.kr/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet" />
	<link type="text/css" href="//static.hotblood.co.kr/libs/animate/4.1.0/animate.min.css" rel="stylesheet" />
	<link type="text/css" href="//event.resta.co.kr/common.css?ver=202411261410" rel="stylesheet" />
	<!-- Google Tag Manager -->
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start': new Date().getTime(),
				event: 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s),
				dl = l != 'dataLayer' ? '&l=' + l : '';
			j.async = true;
			j.src =
				'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-NM28J73');
	</script>
	<!-- End Google Tag Manager -->
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-7V2Y5GXTTR"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', 'G-7V2Y5GXTTR', {
			'advertiser' : '멜로디서울',
			'agent' : '리팅성형외과의원',
			'media' : 'GDN',
			'event_no' : '702',
			'site' : '',
			'title' : '',
			'action' : 'view',
			'linker': {
				'accept_incoming': true
			}
		});
	</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
#wrap{font-family: 'noto sans kr';}

.q_select{font-size: 130%;}
.form .description {width: 100%;}
.form .description.orage-box{display: flex; justify-content: flex-start; padding-top:3%; padding-bottom: 3%; background-color: #ffeef4;}
.form .description.orage-box > *{background-color: #f7a0cb; border-radius:25px; color:#fff; font-size:100%; border-radius:25px; color:#fff; padding:2% 4%;}
.form .description.orage-box > span{background-color: #fb639c;}

.form .question {position: relative;}
/* .form .question_box{padding: 0 0 5%;} */
.form .question_box .question {width: 90%; margin: 0 auto; margin-bottom: 2%;}
.selected_area{background-color:#000; padding:3% 5%;}
.form .question_box .q_select{padding: 1% 0 1% 9%; position: absolute; z-index: 1; display: flex; top: 14%; left: 20%;}
.form .question_box .q_select label,
label.selected_label{width: 125px; height: 62px; border-radius:10px; margin-right:1%; margin-bottom:2%; text-align: center; line-height: 62px; color: #fff; cursor: pointer;}

.form .question_box .q_select:nth-of-type(2) label{background-color: #fa639b;}
.form .question_box .q_select:nth-of-type(2) label.on,
label.add1{background-color: #000; color:#fff;}

.form .question_box .q_select:nth-of-type(4) label{background-color: #fa639b;}
.form .question_box .q_select:nth-of-type(4) label.on,
label.add2{background-color: #000;}
.form .question_box .q_select label{background-color: #fa639b;}
.form .question_box .q_select label.on,
label.add3{background-color: #000; color:#fff;}

/* user db입력칸 (이름) */
.form .user_info {width: 90%; margin: 0 auto;}
.form .user_info .user_name {position: relative; margin-bottom: 2%;}
.form .user_info .user_name img {width:100%;}
.form .user_info .user_name input[name="name"]{background: #ffeef4;padding: 2%;font-size: 150%;border-radius: 0.5rem;width: 67%;
position: absolute;left: 29%;top: 14%; height: 73px; border: 1px solid #e3ccd4;}

/* user db입력칸 (연락처) */
.form .user_info .user_phone {position: relative; margin-bottom: 2%;}
.form .user_info .user_phone img {width:100%;}
.form .user_info .user_phone input[name="phone"] {background: #ffeef4;padding: 2%;font-size: 150%;border-radius: 0.5rem;width: 67%;
position: absolute;left: 29%;top: 14%; height: 73px;  border: 1px solid #e3ccd4;}

/* .form .formContents{padding:5% 0;} */
.form .inp{font-size:100%;}
.form input[type="checkbox"] + span:before{border-color:#fff;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.form .agBox{width: auto; font-size: 100%; text-align: left;}
.form .agBox .ag_btn {left: 50%;}
.form .agBox .q_select{padding: 1% 0 1% 5%;}
.form .agBox label, .form .agBox .disagree{font-size:100%; border-radius:10px; color:#fff; display:inline-block; width: 120px; height: 62px; margin-bottom: 2%; margin-right: 1%; line-height: 62px; text-align: center; cursor: pointer; margin-left: 2%;}
.form .agBox label{background-color: #127ee3;}
.form .agBox .disagree{background-color: #fa639b; font-weight: normal;}

.form .agBox.on label{background-color:#000;}
/* #selected_agree{display:block; width:80%; font-size:80%; color:#fff; background-color:#fb4d2b; border-radius:23px; text-align:center; padding:2% 0; margin:0 0 7px;} */
/* .form .agBox > label{padding:2% 0%; display:block; cursor: pointer; margin:0; line-height:1.6;} */

.form ul.table_box{width:90%;}
.form ul.table_box li{display: flex; margin-bottom:2%;   }
.form ul.table_box li  >*{background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
.form ul.table_box li .th{width:20%;}
.form ul.table_box li .td{width: 78%; display:none; position: relative;}
.form ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
.form ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}


.form ul.table_box li:nth-child(2) .th,
.form ul.table_box li:nth-child(3) .th{margin-right:1%;}
.form ul.table_box li.on .th{border-radius: 25px 0 0 25px; border-right:none;}
.form ul.table_box li.on .td{border-radius:0 25px 25px 0; border-left:none;}
.question_container {background: #ffeef4 ; padding: 4% 0;}

/* 비용 결과 */
.form .result {margin: 0 auto; width: 90%; margin-bottom: 2%; position: relative;}
.form .result .value {display: flex; position: absolute; left: 4%; bottom: 1.5%;}
.form .result .value .add_value {font-size: 120%; background-color: #fa639b; width: 110px; height: 52px; border-radius: 10px;
text-align: center; line-height: 52px; color: #fff; cursor: pointer; display: none;}
.form .result .value .add1_value {margin-right: 5%;}
.form .result .value .add2_value {}

/* #name {position: absolute; top: 26%; left: 5%; font-size: 200%;}
#cursor {display: block; width: 2px; height: 30px; background: #000; position: absolute; right: 11%; top: 38%; animation: blink-effect 1s step-end infinite;} */
.question .q_select.last label {width: 150px;}

@keyframes blink-effect {
    50% {opacity: 0;}
}

@media screen and (max-width: 500px){
	.form .description.orage-box{flex-wrap: wrap;}  
    .form .description.orage-box > *{margin:0 0 1% 5%; font-size:0.75rem; letter-spacing:-1px;}
	
	.form .agBox{min-width:75%;}
	/* .form .agBox,a.disagree{font-size:90%;} */
	/* a.disagree{padding: 2.5% 2%;} */
	.form .agBox label, .form .agBox .disagree{width: 100px; height: 38px; line-height: 40px;}

	/* .form .question_box{padding:0 0 5%;} */
	.form .question_box .q_select label{width: 100px; height: 38px; line-height: 40px;}

	.form ul.table_box li .th{width:28%;}
	.form ul.table_box li .td{width:72%;}

	.form .question_box .q_select label,
	.form .agBox label, .form .agBox .disagree{width: 60px; font-size: 83%;}
	.form .user_info .user_name input[name="name"],
	.form .user_info .user_phone input[name="phone"] {height: 35px;}
	#cursor {top: 30%; height: 15px;}
	.question .q_select.last label {width: 80px;}
	#name {font-size: 120%;}
	.form .result .value {left:4.5%; bottom: 0; top: -5%;}
	.form .result .value .add_value {font-size: 95%; width: 52px; height: 27px; line-height: 28px;}
	.form .result .value .add1_value {margin-right: 4%;}
}

@media screen and (max-width: 415px){   
	.q_select{font-size: 100%;}

	.form .agBox label, .form .agBox .disagree{width: 70px; height: 28px; line-height: 31px;}

	.form .question_box .q_select label{width: 60px; height: 28px; line-height: 31px;}
	.question .q_select.last label {width: 80px;}
}

/* submit 버튼 애니메이션 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}
@keyframes blink-effect {
    50% {opacity: 0;}
}
</style>
</head>

<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NM28J73" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	<h1 class="alignCenter blind"></h1>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<div id="wrap">
	<div class="form">
		<!--<form id="form-subscribe" method="POST" action="./702/proc" accept-charset="utf-8">-->
		<form id="form-subscribe"> 
		<!-- <input type="hidden" name="phone" value=""> -->

		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_01.png"></div> -->
		<div class="description orage-box">
			<p>이벤트 기간 :  2024년 11월 01일 ~ 2024년 11월 30일 까지</p>
			<span>대상 :  GDN 및 유튜브 이용자 </span>
		</div>	
		<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_02.png"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_02.jpg"></div>

		<div class="question_container">
			<div class="question_box">
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_03.png"></div>
					<div class="q_select">
						<label>30대<input type="radio" name="add1" id="add1" value="30대"></label>
						<label>40대<input type="radio" name="add1" id="add1" value="40대"></label>
						<label>50대<input type="radio" name="add1" id="add1" value="50대"></label>
						<label>60대 이상<input type="radio" name="add1" id="add1" value="60대 이상"></label>
					</div>
				</div>
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_04.png"></div>
					<div class="q_select">
						<label>주름<input type="radio" name="add2" id="add2" value="주름"></label>
						<label>처짐<input type="radio" name="add2" id="add2" value="처짐"></label>
						<label>탄력<input type="radio" name="add2" id="add2" value="탄력"></label>
						<label>기타<input type="radio" name="add2" id="add2" value="기타"></label>
					</div>
				</div>        
				<!-- <div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_05.png"></div>
					<div class="q_select">
						<label>비용<input type="radio" name="add3" value="비용"></label>
						<label>위치<input type="radio" name="add3" value="위치"></label>
						<label>통증<input type="radio" name="add3" value="통증"></label>
						<label>부작용<input type="radio" name="add3" value="부작용"></label>
					</div>
				</div>
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_06.png"></div>
					<div class="q_select last">
						<label>가능한 빨리<input type="radio" name="add4" value="가능한 빨리"></label>
						<label>1개월 이내<input type="radio" name="add4" value="1개월 이내"></label>
						<label>상담 후<input type="radio" name="add4" value="상담 후"></label>
					</div>
				</div> -->
				<div class="formGroup">
					<div class="user_info">
						<div class="user_name">
							<img src="//static.resta.co.kr/event/v_702/event_main_07.png">
							<input type="text" name="name" id="name" value="" class="inp" required autocomplete="off">
						</div>
						<div class="user_phone">
							<img src="//static.resta.co.kr/event/v_702/event_main_08.png">
							<input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11">
						</div>
					</div>
				</div>

				<div class="agBox">
					<div class="question">
						<a href="#" class="btn-agreement">
							<div class="img-area"><img src="//static.resta.co.kr/event/v_702/event_main_09.png"></div>
						</a>
						<div class="q_select ag_btn">
							<label><input name="agBox" id="agBox" type="checkbox">동의</label>
							<a href="javascript:void(0);" class="disagree">미동의</a>
						</div>
					</div>
				</div>
				<div class="formContents">	
					<div class="agreement">
						<div class="button"><a href="https://event.resta.co.kr/agreement/liting.php" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
						<h3>개인정보처리방침</h3>
						<ol>
							<li>개인정보 수집주체 : 리팅성형외과의원</li>
							<li>개인정보 수집항목 : 이름,나이,전화번호</li>
							<li>개인정보 수집 및 이용목적 : 리팅성형외과의원에서 리프팅 상담활용(문자)</li>
							<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
						</ol><br/>
						<h3>개인정보 취급 위탁</h3>
						<ol>
							<li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
							<li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
							<br/>
							<li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 리프팅 상담 및 이벤트 참여가 불가능합니다.</li>
						</ol>
					</div>
					<div class="img-area result">
						<!-- <div id="name"></div> -->
						<div class="value">
							<p class="add_value add1_value"></p>
							<p class="add_value add2_value"></p>
						</div>
						<img src="//static.resta.co.kr/event/v_702/event_main_010.png">
						<span id="cursor"></span>
					</div>
					<div class="submit"><input type="image" value="" class="btn_submit" src="//static.resta.co.kr/event/v_702/btn_newSb.png" onclick="fnForm();" /></div>	
					<!-- <div class="description">			
						<div class="ad_txt">안심하세요! 리팅성형외과의원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
					</div>	 -->
				</div>
				<!-- <div class="q_select">
					<span class="material-symbols-outlined">looks_5</span>
					<label>이마<input type="radio" name="add4" value="이마"></label>
					<label>정수리<input type="radio" name="add4" value="정수리"></label>
					<label>전체<input type="radio" name="add4" value="전체"></label>
					<label>기타<input type="radio" name="add4" value="기타"></label>
				</div>
				<div class="q_select">
					<span class="material-symbols-outlined">looks_6</span>
					<label>20대<input type="radio" name="add5" value="20대"></label>
					<label>30대<input type="radio" name="add5" value="30대"></label>
					<label>40대<input type="radio" name="add5" value="40대"></label>
					<label>50대 이상<input type="radio" name="add5" value="50대 이상"></label>
				</div> -->
			</div>
			<!-- <script>
			$('.q_select input, input[name="agBox"]').bind('click', function(e) {
				if($('input[name="agBox"]').is(':checked')) {
					var text = $('.agBox label').text();
					var $label = $('<label id="selected_agree">').text(text);
					$('#selected_agree').remove();
					$('.selected_area').append($label);
				}
				for(i=1; i<=5; i++) {
					var id = `add${i}`;
					var text = $(`input[name="${id}"]:checked`).val();
					if(!text) continue;
					var $label = $(`<label class="selected_label ${id}" id="selected_${id}">`).text(text);
					$(`#selected_${id}`).remove();
					$('.selected_area').append($label);
				}
			});
			</script> -->
		</div>
		<!-- <div class="selected_area"></div> -->
		<input type="hidden" id="site" name="site" value="20">
		<input type="hidden" id="event_seq" name="event_seq" id="event_seq" value="702">
		
		<input type="hidden" id="gender" name="gender" value="1">
		<input type="hidden" id="age" name="age" value="42">
		<input type="hidden" id="branch" name="branch" value="bk">
		<input type="hidden" id="addr" name="addr" value="서울">
		<input type="hidden" id="email" name="email" value="bk@gmail.com">
		<input type="hidden" id="add3" name="add3" value="add3">
		<input type="hidden" id="add4" name="add4" value="add4">
		<input type="hidden" id="add5" name="add5" value="add5">
		<input type="hidden" id="add6" name="add6" value="add6">
		<input type="hidden" id="agree" name="agree" value="Y">
		<input type="hidden" id="interlock_success" name="interlock_success" value="0">
		</form>
	</div>

	<div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_702/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_702/footer.jpg"></div>
	</div>
</div>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-16449884211"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config','AW-16449884211', {'allow_enhanced_conversions':true});
</script>
<!-- Event snippet for 리팅성형외과 conversion page -->
<script>
	gtag('set', 'user_data', {"phone_number": "+821062824943"});
	gtag('event', 'conversion', {'send_to': 'AW-16449884211/_EucCJKQs5QZELOg9aM9'});
</script>

<script> 
	let ip = "";
	fetch('https://api.ipify.org?format=json')
				.then(response => response.json())
				.then(data => {
					ip = data.ip;
				})
	$('input[name*="add"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('.table_box label').on('click',function() {
		if($(this).hasClass('db-name')){		
			$(this).closest('li').addClass('on');
			$(this).siblings('.td').effect('slide', {'direction':'left'}, 'fast');
		}
		else if($(this).hasClass('db-phone')){
			// $(this).find('img').attr('src','//static.resta.co.kr/event/v_702/phone_08.png');
			$(this).siblings('.td').show();
		} else {
			$(this).siblings('.td').show();
		}
		$(this).siblings('label').find('input').focus();
	})

	$('.agBox label').bind('click',function(){
		$('input[name="agBox"]').closest('.agBox').addClass('on');
	})
	/*
	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
		// $('input[name="phone"]').val('010'+phoneNum);
	})
	*/
	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	})
	
	function fnForm(){
		var eventSeq 	= document.getElementById("event_seq").value;
		var site 		= document.getElementById("site").value;
		var name 		= document.getElementById("name").value;
		var phone 		= document.getElementById("phone").value;
		var add1 		= document.getElementById("add1").value;
		var add2 		= document.getElementById("add2").value;
		
		var gender 	= document.getElementById("gender").value;
		var age 	= document.getElementById("age").value;
		var branch 	= document.getElementById("branch").value;
		var addr 	= document.getElementById("addr").value;
		var email 	= document.getElementById("email").value;
		var add3 	= document.getElementById("add3").value;
		var add4 	= document.getElementById("add4").value;
		var add5 	= document.getElementById("add5").value;
		var add6 	= document.getElementById("add6").value;
		var agree 	= document.getElementById("agree").value;
		var interlockSuccess 	= document.getElementById("interlock_success").value;
		
		
		//console.log("Location:", data.city + ", " + data.country);
		/*
		data = {
			eventSeq : eventSeq ,
			site : site ,
			add1 : add1 ,
			add2 : add2 ,
			add3 : add3 ,
			add4 : add4 ,
			add5 : add5 ,
			add6 : add6 ,
			agBox : agBox,
			gender : gender,
			age : age,
			branch : branch,
			addr : addr,
			email : email,
			interlockSuccess : interlockSuccess,
			phone : phone,
			ip : ip,
			agree : agree,
			name : name
		}
		*/

		var formData = new FormData();
		formData.append('site'		, site);
		formData.append('eventSeq'	, eventSeq);
		formData.append('ip'		, ip);
		formData.append('branch'	, branch);
		formData.append('interlockSuccess'	, interlockSuccess);
		
		formData.append('add1'		, add1);
		formData.append('add2'		, add2);
		formData.append('add3'		, add3);
		formData.append('add4'		, add4);
		formData.append('add5'		, add5);
		formData.append('add6'		, add6);
		formData.append('agBox'		, agBox);
		formData.append('gender'		, gender);
		formData.append('age'		, age);
		formData.append('addr'		, addr);
		formData.append('email'		, email);
		formData.append('phone'		, phone);
		formData.append('agree'		, agree);
		formData.append('name'		, name);
		
		$.ajax({
			type:"POST",
			url: "http://localhost:9000/formProc.ajax",
			//url: "https://resta.sand-glass.net/formProc.ajax",
			processData: false,
			contentType: false,
			data: formData,
			success: function(rtn){
				console.log('s');
			},
			err: function(err){
				alert("데이터 저장에 문제가 발생하였습니다.\n문제가 계속 될 경우 resta@resta.co.kr 로 문의주세요.");
			}, 
		});	
	}
	
	// radio value값 츨략
	$('input:radio[name="add1"]').click(function(){
		var checked = $(this).val();
		$('.add1_value').show();
		$('.add1_value').html(checked);
	})

	$('input:radio[name="add2"]').click(function(){
		var checked = $(this).val();
		$('.add2_value').show();
		$('.add2_value').html(checked)
	})
	
	/*
	$('li.btn_submit').bind('click',function() {
		//$('#form-subscribe').submit();
	})
	$('input[name*="add"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('.table_box label').on('click',function() {
		if($(this).hasClass('db-name')){		
			$(this).closest('li').addClass('on');
			$(this).siblings('.td').effect('slide', {'direction':'left'}, 'fast');
		}
		else if($(this).hasClass('db-phone')){
			// $(this).find('img').attr('src','//static.resta.co.kr/event/v_702/phone_08.png');
			$(this).siblings('.td').show();
		} else {
			$(this).siblings('.td').show();
		}
		$(this).siblings('label').find('input').focus();
	})

	$('.agBox label').bind('click',function(){
		$('input[name="agBox"]').closest('.agBox').addClass('on');
	})
	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
		// $('input[name="phone"]').val('010'+phoneNum);
	})
	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	})
	
	//Submit
	$('form').bind('submit', function(e) {
		alert("111");
		$('input[type="submit"], input[type="image"]').prop('disabled', true);
		var required = {
			'name': '이름'
			,'phone': '연락처'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'add4': '설문4'
			// ,'add5': '설문5'
		};
		var valid = true;
		var submit = new SubmitClass(this, required);
		$.each(required, function(name, desc) {
			if(!submit.valid(name, desc)) {
				valid = false;
				$('input[type="submit"], input[type="image"]').prop('disabled', false);
				return false;
			}
		});
		if(valid) {
			if(!$('input[name="agBox"]:checked', this).val()) {
				alert('개인정보 수집 및 이용에 관한 내용에 동의해주세요.');
				$('input[name="agBox"]', this).focus();
				$('input[type="submit"], input[type="image"]').prop('disabled', false);
				return false;
			}
		} else {
			$('input[type="submit"], input[type="image"]').prop('disabled', false);
			return false;
		}
		//submit.submit(); return false; //ajax로 처리할 경우 추가
		
		var memberId 	= document.getElementById("memberId").value;
		var memberPw 	= document.getElementById("memberPw").value;
		var memberName 	= document.getElementById("memberName").value;
		var memberEmail = document.getElementById("memberEmail").value;
		
		data = {
					memberId : memberId ,
					memberPw : memberPw ,
					memberName : memberName ,
					memberEmail : memberEmail
				}

		var formData = new FormData();
		formData.append('memberId'		, memberId);
		formData.append('memberPw'		, memberPw);
		formData.append('memberName'	, memberName);
		formData.append('memberEmail'	, memberEmail);
		
		$.ajax({
			type:"POST",
			url: "http://localhost:9100/form",
			processData: false,
			contentType: false,
			data: formData,
			success: function(rtn){
				alert(rtn);
				alert(rtn.resultData);
				
			},
			err: function(err){
			  console.log("err:", err)
			}, 
		});		
	});

	// radio value값 츨략
	$('input:radio[name="add1"]').click(function(){
		var checked = $(this).val();
		$('.add1_value').show();
		$('.add1_value').html(checked);
	})

	$('input:radio[name="add2"]').click(function(){
		var checked = $(this).val();
		$('.add2_value').show();
		$('.add2_value').html(checked)
	})
*/
</script></body>
</html>