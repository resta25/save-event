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
    #page_landing_c .wrap_form {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    #page_landing_c .wrap_form .submit {position: relative; width: 100%; max-width: 491px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png') no-repeat center center / 100%; margin: 0 auto; padding: 0;}
    #page_landing_c .wrap_form .submit .submit-box {display: flex; flex-direction: column; align-items: center; justify-content:  center; text-align: center; font-family: 'GangwonEducationTteontteon'; font-size: 400%; height: 100%;}
    #page_landing_c .wrap_form .submit input {margin: 0; padding: 0 !important; width: 100%; height: 100% !important; position: absolute; top: 0; left: 0; cursor: pointer;}

    #wrap{font-family: 'noto sans kr'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
   
    /* user db입력칸 (이름) */
    #page_landing_c .wrap_form .user_info {}
    #page_landing_c .wrap_form .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .wrap_form .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .formGroup {padding: 6.02% 3.43% 2.95%; background-color: #2f2d2d;}
    #page_landing_c .formGroup .form_inner {display: flex; gap: 1.9%; width: 100%;}
    #page_landing_c .formGroup .info-box {width: 50%;}
    #page_landing_c .formGroup .user_info {display: flex; align-items: center; padding: 4.9% 5.95% 5%; font-size: 2.85rem; background-color: #fff;}
    #page_landing_c .formGroup .user_info + .user_info {margin-top: 1.57rem; }
    #page_landing_c .legend {flex-shrink: 0; font-weight: 500; font-size: 100%; width: 150px; height: 42px; line-height: 42px; border-right: 2px solid #000; text-align: justify; padding-right: 12.5%;}
    #page_landing_c .legend::after { content: ""; display: inline-block; width: 100%;}
    /* .legend::after {display: inline-block; content: '*'; color: #22ab41; position: relative; top: -2px; left: 2px;} */
    #page_landing_c .formGroup .user_info input {font-size: 100%; width: 100%; padding-right: 0;}
    #page_landing_c .formGroup .user_info input::placeholder {font-size: 100%; color: #7c7c7c;}

    .change-color {animation: colorChange 0.4s linear infinite;}
    .change-color.deley {animation: colorChange2 0.4s linear infinite;}

    .wrap_form .agBox {color: #fff;}
    .wrap_form input[type="checkbox"] + span {color: #fff;}
    .wrap_form input[type="checkbox"]:checked + span:after {border-color: #fff;}
    .wrap_form .agBox a {margin: 10px 5px 0 0px;}

    .wrap_form .description {width: 100%; padding: 5.37% 3.9%; background-color: #000; text-align: left;}
    .wrap_form .description p {color: #fff; padding: 0; font-weight: 300; font-size: 175%; letter-spacing: -0.02em;}
    .wrap_form .description .ad_txt {color: #fff; font-size: 175%; padding: 0; letter-spacing: -0.02em; font-weight: 300;}
    .wrap_form .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 500;}

    .btn-area {position: relative;}
    .btn-area .db_btn {position: absolute; bottom: 3.07%; padding: 0 3.7%;}

    .gif-area {overflow: hidden;}
    .gif-area img {width: calc(100% + 1px); margin: -1px;}

    .mr-1 {width: calc(100% + 1px);}

    /* submit 버튼 애니메이션 */
    @keyframes pulsating {
        0% {transform: scale(1);}
        50% {transform: scale(0.95);}
        100% {transform: scale(1);}
    }
    @keyframes blink-effect {
        50% {opacity: 0;}
    }

    /* 텍스트 색상 변경 애니메이션 */
    @keyframes colorChange {
        0% {color: #a49a01}
        100% {color: #ff0000;}
    }
    @keyframes colorChange2 {
        0% {color: #ff0000;}
        100% {color: #a49a01}
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
    #page_landing_c .wrap_form .submit {max-width: 44vw;}
    #page_landing_c .wrap_form .submit .submit-box {padding-top: 4%; font-size: 5.5vw;}

    .wrap_form .agBox {width: 100%;}
    #page_landing_c .wrap_curd label {font-size: 12px;}
    #page_landing_c .legend {max-width: 14vw; padding-right: 7%; height: 27px; line-height: 27px;}
    #page_landing_c .formGroup .user_info + .user_info {margin-top: 3%;}
    #page_landing_c .formGroup .user_info input {margin-left: 5px;}

    .wrap_form .description p, .wrap_form .description .ad_txt {font-size: 3.85vw;}

}

@media screen and (max-width: 480px){
        #page_landing_c .wrap_form .question_box .q_select label, 
    label.selected_label, 
    #page_landing_c .wrap_form .agBox .disagree {width: 31%; font-size: 60%;}
    #page_landing_c .wrap_form .agBox .ag_btn {width: 45%;}
    #page_landing_c .wrap_form .agBox .disagree {width: 45%; margin-left: 0;}
    #page_landing_c .wrap_form .result .value .add_value {font-size: 90%; padding: 0.5em;}
    /* #page_landing_c .wrap_form .legend {font-size: 100%; max-width: 50px;} */
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 95%;}
    #page_landing_c .wrap_form .inp {font-size: 13px;}
    .wrap_form .agBox a {margin-top: 0; white-space: nowrap;}

    #page_landing_c .wrap_curd .btn-agreement {font-size: 12px;}
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
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="formGroup">
                        <div class="form_inner">
                            <div class="info-box">
                                <div class="user_info name">
                                    <span class="legend">이 름</span>
                                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                                </div>
                                <div class="user_info age">
                                    <span class="legend">나 이</span>
                                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                                </div>
                                <div class="user_info phone">
                                        <span class="legend">연락처</span>
                                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                                </div>
                            </div>
    
                            <div class="submit">
                                <span class="submit-box">
                                    <span class="change-color">무료 비밀상담</span>
                                    <span>
                                        이벤트 <span class="change-color deley">신청하기</span> 
                                    </span>
                                </span>
                                <input type="submit" onclick="fnForm('form-1')" value="" class="btn_submit" />
                            </div>	
                        </div>


                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
    
                        
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
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">
                        꼭! 기억하세요. 본인만 신청 가능!<br />
                        정확한 정보를 기입하셔야 <b>사은품 제공 및 안내 가능합니다.</b><br />
                        안내 후 개인정보는 <b>즉시 파기</b>됩니다.
                    </div>
                    <!-- <span class="target">대상 : ${resVo.target}</span> -->
                </div>
            </div>

            <div class="img-area gif-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
            <div class="img-area mr-1"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
            <div class="img-area btn-area mr-1">
                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_06.jpg">
                <img class="db_btn" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png">
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

        $('.subscribe_container').show();
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

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.formGroup').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        /*
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
			alert("필요한 개수를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>