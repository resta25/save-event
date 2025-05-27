<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
/* 공통 */
.page_inner {background: #fff; padding-top: 15%;}
.namePrintBox {font-size: 250%; text-align: center; font-weight: bold; color: #191919;}
.question_box .text {display: flex; flex-flow: column; align-items: center;}
.question_box .text span:nth-child(2) {font-size: 200%; margin: 5% 0; line-height: 1.5; text-align: center;}
.paging {text-align: center;}
.paging button {cursor: pointer; background: none; width: 45%;}
.paging button img {width: 100%;}
.boldText {color: #191919;}
.pointColor {color: #078b42;}
.page:not(#page-1){display:none;}
#wrap {height: 100vh; max-width: 600px; background: #fff; font-family: 'Pretendard-Regular'; letter-spacing: -1px;}

/* 첫번째 페이지 */
#page-1 {padding: 5%;}
#page-1 .img-area:nth-child(1) {margin-bottom: 5%;}
#page-1 .img-area:nth-child(2) {margin-bottom: 5%;}
#page-1 .question {font-size: 150%; text-align: center; font-weight: bold; color: #9a9a9a;}
#page-1 .inputBox input {background: #f1f1f1; border: 1px solid #aaaaaa; font-size: 150%; padding: 3% 0; text-align: center; border-radius: 0.8rem; margin: 3% 0;}
#page-1 .inputBox input::placeholder {color: #9a9a9a;}

/* 설문 영역 */
.question_box {}
.question_box .q_select {width: 85%; margin: 0 auto; display: flex; flex-flow: row wrap; gap: 2%;}
.question_box .q_select label {width: 49%; cursor: pointer;}
.question_box .q_select label:nth-child(odd) {margin-bottom: 2%;}
.question_box .q_select label img {width: 100%;}

/* 마지막 페이지 db 단 */
.form .formGroup {}
.form .formGroup .table_box {width: 80%;}
.form .formGroup .table_box input {background: #f1f1f1; border: 1px solid #aaa; border-radius: 0.8rem; padding: 3% 0; font-size: 150%; text-align: center; margin-bottom: 3%;}
.form .formGroup .table_box input::placeholder {color: #9a9a9a;}

/* 이벤트기간, 대상, 안심문구 */
.form .description {padding-top: 5%;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 80%; font-weight: normal;}

.form .submit {width: 60%; margin: 0 auto;}

/* 개인정보처리방침 */
.form .agBox {font-size: 120%; margin-bottom: 10%;}
.form .agBox a {font-weight: normal;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 640px){
    .form .submit {width: 50%;}
}
@media screen and (max-width: 480px){
    .form .description {padding-top: 2%;}
}

@media screen and (max-width: 395px){
    .namePrintBox {font-size: 200%;}
    .question_box .text span:nth-child(2) {font-size: 150%;}
}
@media screen and (max-width: 375px){
    .paging button {width: 50%;}
    .namePrintBox {font-size: 250%;}
    .question_box .text span:nth-child(2) {font-size: 180%;}
}
</style>
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
        <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침</a></div>
		<h3>개인정보처리방침</h3>
        <ol>
			<li>개인정보 수집주체 : ${resVo.agent}</li>
			<li>개인정보 수집항목 : ${resVo.objectItems}</li>
			<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li><br>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<div id="wrap">
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <audio id="location" playsinline><source src="//static.resta.co.kr/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></source></audio> 

            <div class="formContents">
                <section class="page" id="page-1">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.png"></div>
                    
                    <div class="question_box">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
                        <div class="answer">
                            <div class="question">지원 받으실 분</div>
                            <div class="inputBox"><input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/></div>
                        </div>
                    </div>
                    <div class="paging">
                        <button type="button" class="next"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></button>
                    </div>
                </section>

                <section class="page" id="page-2">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="text">
                                <span class="namePrintBox nameColor">000님 안녕하세요!</span>
                                <span>
                                    <b class="boldText">전체 임플란트 지원</b> 안내를 위한<br>
                                    개인정보 처리방침 동의 해주세요
                                </span>
                            </div>
                        </div>
    
                        <div class="agBox">
                            <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>

                        <div class="paging">
                            <button type="button" class="agree"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></button>
                        </div>
                    </div>
                </section>

                <section class="page" id="page-3">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="text">
                                <span class="namePrintBox nameColor">000님</span>
                                <span>
                                    <b class="boldText">임플란트 시술을</b> <b class="pointColor">희망하는 시기</b>는<br>
                                    어떻게 될까요?
                                </span>
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="가능한 빨리"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" value="2주 이내"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" value="1개월 이내"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                                <label><input type="radio" name="tadd1" value="상담 후 결정"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="page" id="page-4">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                    <div class="page_inner">
                        <div class="question_box">
                            <div class="text">
                                <span class="namePrintBox nameColor">000님</span>
                                <span>마지막으로 <b class="pointColor">연령과 연락처</b>를<br>입력해주시면<br><b class="boldText">임플란트 지원이 완료</b> 됩니다</span>
                            </div>
                        </div>
                        <div class="formGroup">
                            <div class="table_box">
                                <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이">
                                <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                            </div>
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png" /></div>
                        <div class="description">
                            <p id="event-period"></p>
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 : ${resVo.target} </span>
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
			<input type="hidden" id="age" 			name="age" value=""/>
			<input type="hidden" id="add1" 			name="add1" value=""/>
			<input type="hidden" id="add2" 			name="add2" value=""/>
			<input type="hidden" id="add3" 			name="add3" value=""/>
			<input type="hidden" id="add4" 			name="add4" value=""/>
			<input type="hidden" id="add5" 			name="add5" value=""/>
			<input type="hidden" id="add6" 			name="add6" value=""/>
        </form>
    </div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
	});

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    // 첫페이지 음성 재생
    document.getElementById("wrap").addEventListener("click", () => {
        var page_num = $('.page:visible').index() + 1;
        if(page_num == 1){
            setTimeout(function(){
                setTimeout(function(){ $('#location').trigger('play'); },500);
            },500); 
        }  
    }, {once: true});   

    // 입력된 이름 출력
    $('input[name="name"]').change(function(){
        let userName = $(this).val();
        $('.namePrintBox').eq(0).html(userName + '님 안녕하세요!');
        $('.namePrintBox').not(':first').html(userName + '님');
    });

    //add1 이미지 on/off 변경
    $('input[name="tadd1"]').bind('click', function() {
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
            $section.next().show();
            setTimeout(function(){ $('#location').trigger('play'); },100);
            $('#location').attr('src', '//static.resta.co.kr/event/v_${eventSeq}/audio_0' + (page_num + 1) + '.mp3');
        }, 300);
    }

    // 페이지 경우의 수에 따른 클릭 이벤트
    $('button.next, button.agree, input[name="tadd1"]').on('click', function(){
        var page_num = $('.page:visible').index() + 1;
        if(page_num == 1){
            if($(this).parents('.page').find('input').val() !== ""){
                moveNextPage(page_num);
            }
            else{
                alert("이름을 입력해주세요");
                $(this).parents('.page').find('input').focus();
            }
        }
        else if(page_num == 2){
            moveNextPage(page_num);
        }
        else if(page_num == 3){
            if($(this).parents('.page').find('input').is(':checked') == true){
                moveNextPage(page_num);
            }
            else{
                alert("항목을 선택해주세요");
            }
        }
    });

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);

		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>