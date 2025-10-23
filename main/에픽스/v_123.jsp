<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @font-face {
        font-family: 'GangwonEducationTteontteon';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
        font-weight: normal;
        font-display: swap;
    }
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

    * {font-family: "Noto Sans KR", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden; background-color: #f8f8f8;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    #page_landing_c main {max-width: 1080px;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

    #wrap{font-family: 'noto sans kr'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
   
    #page_landing_c .wrap_form {background-color: #000; padding: 0 43px 30px !important;}
    #page_landing_c .wrap_curd {background-color: #000; }
    #page_landing_c .wrap_curd .question_container {padding-top: 0 !important;}

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_curd .q_select {display: grid; grid-template-columns: repeat(3, 1fr); gap: 1%; font-size: 150%; flex-grow: 1;}
    #page_landing_c .description {width: 100%;}
    #page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center;}
    #page_landing_c .description.orage-box{display: flex; justify-content: flex-start; padding-top:3%; padding-bottom: 3%; padding-left: 1.5%; gap: 4px;}
    #page_landing_c .description.orage-box > * {background-color: #0a151e; color:#fff; font-size:110%; border-radius:999px; color:#fff; padding:2% 3%; line-height: 1.06; font-weight: 500; letter-spacing: -0.9px; margin: 0;}
    #page_landing_c .description.orage-box > span{background-color: #0a151e;}

    #page_landing_c .question {position: relative;}
    #page_landing_c .question_box > div:not(.formContents),
    #page_landing_c .question_box > label {display: flex; align-items: center; gap: 6%; border-radius: 10px; border: solid 1px #bebebe; background-color: #efefef; padding: 1em 2em; box-sizing: border-box; width: 100%; margin-bottom: 2%;}
    #page_landing_c .question_box > label input {background: url("//static.savemkt.com/event/v_${eventSeq}/check.png") no-repeat right 1.5rem center; background-color: #fff;}
    #page_landing_c .legend {max-width: 130px; width: 100%; font-size: 185%; font-weight: 800; line-height: 1; letter-spacing: -1.78px; color: #0a151e;}
    #page_landing_c .agBox {text-align: center; display: flex; align-items: center; justify-content: center;}
    #page_landing_c .agBox .legend {max-width: max-content;}
    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* #page_landing_c .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* 설문값, 동의, 미동의 버튼 공통 */
    
    #page_landing_c .question_box .q_select label {background-color: #fff; width: 100%; height: 76px;}
    #page_landing_c .question_box .q_select label, 
    label.selected_label {display: inline-flex; align-items: center; justify-content: center; border-radius:0.5rem; font-size: 100%; text-align: center;  color: #0a151e; font-weight: 400; cursor: pointer; padding: 3% 2%; border:1px solid #bebebe;}
     #page_landing_c .question_box .q_select label + label {margin-left: 1%;}
     /* #page_landing_c .question_box .question:nth-of-type(2) .q_select label:last-child {padding: 0;} */
    #page_landing_c .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000; color:#fff;}
    #page_landing_c .question_box .q_select label.on, label.add3{background-color: #8ed3ff; color:#00385c;}

    /* user db입력칸 (이름) */
    #page_landing_c .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

    #page_landing_c .inp{font-size: 120%; border-radius: 10px; border: solid 1px #bebebe; background-color: #fff; min-height: 34px; padding: 3%; box-sizing: border-box;}
    #page_landing_c input[type="checkbox"] + span:before{border-color:#fff;}
    #page_landing_c .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

    #page_landing_c ul.table_box{width:90%;}
    #page_landing_c ul.table_box li{display: flex; margin-bottom:2%;   }
    #page_landing_c ul.table_box li  >*{background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c ul.table_box li .th{width:20%;}
    #page_landing_c ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}

    .question_container {padding: 3% 0;}

    #page_landing_c .agBox {color: #fff; margin-top: -2%;}
    #page_landing_c input[type="checkbox"] + span {color: #fff;}
    #page_landing_c input[type="checkbox"]:checked + span:after {border-color: #fff;}
    #page_landing_c .agBox label {display: flex; align-items: center;} 
    #page_landing_c .agBox label span {color: #fff;} 

    #page_landing_c .description {width: 100%; padding: 3.37% 3.9% 5.37%; background-color: #000; text-align: left;}
    #page_landing_c .description p {color: #fff; padding: 0; font-weight: 300; font-size: 175%; letter-spacing: -0.02em;}
    #page_landing_c .description .ad_txt {color: #fff; font-size: 175%; padding: 0; letter-spacing: -0.02em; font-weight: 300;}
    #page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}

    .btn-area {position: relative;}
    .btn-area .db_btn {position: absolute; bottom: 3.07%; padding: 0 3.7%;}

    .gif-area {overflow: hidden;}
    .gif-area img {width: calc(100% + 1px); margin: -1px;}

    .mr-1 {width: calc(100% + 1px);}

    #page_landing_c .wrap_curd .submit {margin: 1em auto 0; padding: 0; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png') no-repeat center center / 100%;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }

    #page_landing_c input[type="checkbox"]:checked + span:after {
        border-color: #fff;
    }
        
    @keyframes pulsating {
        50% {
            transform: scale(0.95);
        }
    }

@media screen and (max-width: 768px){
    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}

    #page_landing_c .formGroup .user_info {font-size: 4vw; padding: 2.9% 3.95% 3%;}
    #page_landing_c .wrap_form .submit .submit-box {padding-top: 4%; font-size: 5.5vw;}

    .wrap_form .agBox {width: 100%;}
    #page_landing_c .wrap_curd label {font-size: 12px;}
    #page_landing_c .legend {max-width: 14vw; padding-right: 7%; height: 27px; line-height: 27px;}
    #page_landing_c .formGroup .user_info + .user_info {margin-top: 3%;}
    #page_landing_c .formGroup .user_info input {margin-left: 5px;}

    .wrap_form .description p, .wrap_form .description .ad_txt {font-size: 3.85vw;}
    #page_landing_c .question_box .q_select label, label.selected_label {font-size: 85%;}
}

@media screen and (max-width: 480px){
    #page_landing_c .description p {font-size: 105%;}
    #page_landing_c .description .ad_txt {font-size: 105%;}
    #page_landing_c .agBox label span, #page_landing_c .agBox a {font-size: 85%;}
    #page_landing_c .wrap_form {padding: 0 23px 30px !important;}
    #page_landing_c .legend {font-size: 125%;}
    #page_landing_c .question_box .q_select label {height: 56px;}
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
        <!-- <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png" alt="landing_top" class="landing_top"> -->

            <div class="img-area gif-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
            <div class="img-area mr-1"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
            <div class="img-area mr-1">
                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_06.jpg">
                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_07.jpg">
            </div>

            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">
                    꼭! 기억하세요. 본인만 신청 가능!<br />
                    정확한 정보를 기입하셔야 <b>사은품 제공 및 안내 가능합니다.</b><br />
                    안내 후 개인정보는 <b>즉시 파기</b>됩니다.
                </div>
                
                <!-- <span class="target">대상 : ${resVo.target}</span> -->

            </div>
            
            
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                    <div class="formGroup">
                        <div class="form_inner">
                            <div class="question_container">
                                <div class="question_box">
                                    <div class="question">
                                        <span class="legend">연령대</span>
                                        <div class="q_select">
                                            <label>50대<input type="radio" name="tadd1" value="50대"></label>
                                            <label>60대<input type="radio" name="tadd1" value="60대"></label>
                                            <label>70+<input type="radio" name="tadd1" value="70+"></label>
                                        </div>
                                    </div>
                                    <div class="question">
                                        <span class="legend">고민사항</span>
                                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.png"></div> -->
                                        <div class="q_select">
                                            <label>전립선<input type="radio" name="tadd2" value="전립선"></label>
                                            <label>남성기능<input type="radio" name="tadd2" value="남성기능"></label>
                                            <label>전립선<br/>남성기능<input type="radio" name="tadd2" value="전립선 + 남성기능"></label>
                                        </div>
                                    </div>        

                                    <div class="user_name">
                                        <span class="legend">이름</span>
                                        <input type="text" name="name" id="name" class="inp" required autocomplete="off">
                                    </div>
                                    <div class="user_phone">
                                        <span class="legend">연락처</span>
                                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                    </div>
                                </div>   
                            </div>
    
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_txt.png" /></div>	
                    </div>


                    <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
                    <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
                    <input type="hidden" id="site" 			name="site" value="${site}"/>
                    <input type="hidden" id="media" 		name="media" value="${media}"/>
                    <input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
                    <input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
                    <input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
                    <input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
                    <input type="hidden" id="add1" 			name="add1" value=""/>
                    <input type="hidden" id="add2" 			name="add2" value=""/>
                    <input type="hidden" id="add3" 			name="add3" value=""/>
                    <input type="hidden" id="add4" 			name="add4" value=""/>
                    <input type="hidden" id="add5" 			name="add5" value=""/>
                    <input type="hidden" id="add6" 			name="add6" value=""/>
                    
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
                
            <div class="subscribe_container">
                <div class="title">
                    실시간 신청현황
                </div>
                <div class="subscribe_bg">
                    <div class="subscribe" data-limit="10">
                    </div>
                </div>
            </div>

            <div class="container">
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
            </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    개인정보처리방침<br>
                    자사 제휴의 요청 개인정보 수집 및 이용 동의<br>
                    <br>
                    [개인정보 수집 및 이용 동의]<br><br />
                    - 수집 · 이용 주체 : 이벤트 신청<br />
                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br />
                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                    - 보유 및 이용 기간 : 관련 법령에서 정한 보존 기간<br />
                    <br>
                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다<br>
                    * 고객 동의 철회 시 지체없이 파기합니다.<br>
                    <br>
                    [개인정보 처리위탁 동의]<br><br />
                    - 수탁자 : 자사 제휴의 요청<br />
                    - 위탁 업무 내용<br />
                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                    └ 고객정보 서버 운영 및 관리<br />
                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        
        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    let dataNum;

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">'+ data[v].phone +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
            
		});

        if(resultData.length >= 10){
            $('.subscribe_container').show();
            return;
        } else {
            $('.subscribe_container').hide();
            return;
        }
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);
	
	var modal2 = document.getElementById("modal2");
	var agree = document.querySelector(".agBox .btn-agreement");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.getElementById('phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	});

    $('li.btn_submit').bind('click',function() {
		$('#form-1').submit();
	})

	$('input[name*="tadd"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

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
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("연령대를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("고민사항을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		// procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		// procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			//,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>