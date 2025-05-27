<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
button{background-color: transparent; padding: 0;}
input{font-family: 'Noto Sans KR', sans-serif;}
.img-area img {margin:0;}

#wrap .formContents {position: absolute; top: 50%; left: 50%; transform: translateX(-50%); width: 90%;}
.floating {position: absolute; top: 25%; left: 60%; z-index: 1; width: 35%;}

/* 비디오 영역 */
.video_box {position: absolute; top: 26%; left: 57%; transform: translateX(-50%); width: 60%;}
.video_box_inner {position: relative;}
.video_box_inner video {position: absolute; top: 0; left: 0%; border-radius: 50%; width: 80% !important; border: 8px solid #000; box-sizing: border-box;}
.video_box_inner img {position: absolute; z-index: 99; width: 80%; }

/* .video_box video, .video_box img {width: 100%;} */

/* 설문 영역 */
.form .question_box {width: 100%; margin: 0 auto;}
.form .question_box img {width: 100%;}
.form .q_select {display: flex; width: 100%; margin: 5% 0;}
.form .q_select label {width: 24%;}
.form .q_select label:nth-child(3) {width: 26%;}
.form .q_select label:nth-child(4) {width: 29%;}
.form #page-2 .q_select label {width: 23%;}
.form #page-2 .q_select label:nth-child(2) {width: 26%;}
.form #page-2 .q_select label:nth-child(3) {width: 26%;}
.form .q_select label img {width: 100%;}
.form .user_info input {background: #fff; border-radius: 0.8rem; text-align: center; padding: 3% 0; font-size: 120%; border: 2px solid #949494;}
.form .user_info.row {display: flex; gap: 1%; margin-bottom: 1%;}

/* db영역 */
.form .db_inner {background: #cbcfe5; padding: 4% 7%; border-radius: 1rem;}

.form .agBox {margin: 3% auto;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before,
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border-color: #aaa;}

/* 안심문구, 대상, 이벤트기간 */
.form .description {color: #fff; margin: 3% 0;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 70%; font-weight: normal;}

/* 공통 */
#wrap{min-height:100vh; background-color:#fdfdff; font-family: 'Noto Sans KR', sans-serif;}
.hide {display: none;}
.page:not(#page-1){display:none;}
.pointColor{color: #fb157c;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 640px){

}
@media screen and (max-width: 480px){
    .form .db_inner {padding: 3% 7%;}
    .form .agBox {margin: 1% auto; font-size: 75%;}
    .form .submit {padding: 0;}
    .form .description {margin-top: 2%;}
    .form .description p, .form .description .ad_txt, .form .description span {padding: 0;}
    .video_box_inner video {border: 4px solid #000;}

}
@media screen and (max-width: 390px){
    .video_box {top: 23.5%;}
    .floating {top: 23%;}
    #wrap .formContents{top: 45%;}
    .form .user_info input {padding: 2% 0; font-size: 110%;} 
}

@media screen and (max-width: 375px){
    .video_box {}
    .video_box {top: 26.5%;}
    .floating {top: 26%;}
    #wrap .formContents{top: 51%;}
}

</style>
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target); return false;"  target="_blank">개인정보 처리방침</a></div>
		<h3>개인정보처리방침</h3>
		<ol>
			<li>개인정보 수집주체 : ${resVo.agent}</li>
			<li>개인정보 수집항목 : ${resVo.objectItems}</li>
			<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
            <br>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area floating"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif"></div>
        <div class="video_box">
            <div class="video_box_inner">
                <img class="thum_img" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png">
                <video id="location" playsinline autoplay muted src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                <!-- <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script> -->
            </div>
        </div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">
            <div class="formContents">

                <section class="page" id="page-1">
                    <div class="question_box"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" onclick="moveNextPage(1)" value="1~3개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" onclick="moveNextPage(1)" value="4~6개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="radio" name="tadd1" onclick="moveNextPage(1)" value="7개 이상"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="radio" name="tadd1" onclick="moveNextPage(1)" value="상담 후 결정"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                    </div>
                </section>

                <section class="page" id="page-2">
                    <div class="question_box"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd2" value="비용"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                        <label><input type="radio" name="tadd2" value="의료진 경력"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                        <label><input type="radio" name="tadd2" value="병원 위치"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                        <label><input type="radio" name="tadd2" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png"></label>
                    </div>

                    <div class="formGroup hide">
                        <div class="db_inner">
                            <div class="user_info row">
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                <input type="tel" name="age" id="age" value="" class="inp" data-min="<?=$this->landing['check_age_min']?>" data-max="<?=$this->landing['check_age_max']?>" required autocomplete="off" maxlength="2" placeholder="나이">
                            </div>
                            <div class="user_info phone">
                                <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                            </div>
    
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="agree_txt">[자세히 보기]</a>
                            </div>
                            <div class="submit" onclick="fnForm('form-1')"><input type="image" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                        </div>

                        <div class="description">
                            <p id="event-period"></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 :  ${resVo.target} </span>
                        </div>
                    </div>
                </section>
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
        </form>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
	});

    //add 이미지 on/off 변경
    $('input[name*="tadd"]').bind('click', function() {
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 다음페이지 이동
    function moveNextPage(page_num){
        var $section = $('#page-'+page_num).closest('section');
        setTimeout(function() {
            $section.hide();
            $section.next().show().effect('slide', {'direction':'right'}, 'fast');
        }, 300);
    }
    // 설문2 클릭시 db 오픈
    $('input[name="tadd2"]').on('click',function(){
        $('.formGroup').fadeIn()
    })

    // 상단 이미지 클릭 비디오 재생
    $('.thum_img, .floating').on('click',function(){
        $('.thum_img').hide();
        $('.floating').hide();

        setTimeout(function () {
            $('#location').trigger('play');
        }, 500);
    })

    // 비디오가 끝나면 formContents 영역으로 스크롤
    $('#location').on('ended', function() {
        $('html, body').animate({
            scrollTop: $('.formContents').offset().top
        }, 1000);  // 500ms로 부드럽게 스크롤
    });

    // 개인정보처리방침 팝업 관련
	$('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		/*
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}   
</script>