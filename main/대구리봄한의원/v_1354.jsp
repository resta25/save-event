<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
.hide{display:none;}

.floatingImg{z-index:1; position:absolute; top:10%; left:9%; margin-left:2%; width:30%; max-width:150px; cursor: pointer;/*  animation: upDown 1s infinite; */}

/* 설문영역 */
.form .question_box {background: #f6f6ef;}
.form .question_box .question {width: 45%; margin: 0% auto; padding: 5% 0;}
.form #page-2 .question_box .question {width: 60%;}
.form #page-3 .question_box .question {width: 60%;}
.form .question_box .question img {width: 100%;}
.form .question_box .q_select {display: flex; gap: 2%; justify-content: center; padding: 5% 0;}
.form .question_box .q_select label {width: 30%;}
.form .question_box .q_select label img {width: 100%;}

/* page-3 */
.result_btn {width: 70%; margin: 0 auto; padding-bottom: 5%;}
.result_btn img {width: 100%;}
.popup_box {background: #fff; display: flex; flex-flow: column; border-radius: 1rem; width: 80%; position: absolute; top: 30%; left: 50%; transform: translateX(-50%); padding: 5% 0; z-index: 999;}
.popup_box .img-area:nth-child(1) {width: 15%; margin: 0 auto;}
.popup_box .img-area:nth-child(2) {width: 60%; margin: 2% auto;}
.popup_box .img-area:nth-child(3).next_btn {width: 60%; margin: 2% auto;}

/* page-4 */
.form #page-4 {background-color: #eeeced;}

/* db단 */
.form .formGroup {width: 80%; margin: 0 auto; padding: 5% 0;}
.form .formGroup .notice_txt {margin-bottom: 2%;}
.form .table_box {width: 100%; display: flex; flex-flow: column;}
.form .table_box .user_info.info_row {display: flex;}
.form .table_box .user_info.info_row input {width: 50%;}
.form .table_box .user_info.info_row input:nth-child(1) {border-right: none; border-top-left-radius: 1rem;}
.form .table_box .user_info.info_row input:nth-child(2) {width: 50%; border-top-right-radius: 1rem;}
.form .table_box .user_info.phone input{border-top: none; border-bottom-left-radius: 1rem; border-bottom-right-radius: 1rem;}
/* 공통 input */
.form .table_box .user_info input {border: 1px solid #dadde5; padding: 4% 0; font-size: 120%; text-align: center; background: #fff;}

.form .submit_box {display: flex; justify-content: center; gap: 2%;}
.form .submit_box .submit {width: 49%;}
.form .submit input[type="image"] {width: 100%;}

.form .agBox{margin: 3% auto;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before,
.form input[type="checkbox"]:hover + span:before, .form input[type="checkbox"]:focus + span:before, .form input[type="radio"]:hover + span:before, .form input[type="radio"]:focus + span:before{border-color: #aaa;}

/* 안심문구, 대상, 이벤트기간 */
.form .description {padding: 3% 0;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 80%; font-weight: normal;}

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

@keyframes upDown {
    0% { transform: translateY(0); }
    50% { transform: translateY(7%); }
    100% { transform: translateY(0); }
}

@media screen and (max-width: 640px) {
    .floatingImg {max-width: 120px;}
}

@media screen and (max-width: 480px) {
    .floatingImg {max-width: 100px;}
}

@media screen and (max-width: 390px) {
    .floatingImg {max-width: 80px; top: 9%;}
    .form .formGroup {width: 90%;}
    .form .description p, .form .description .ad_txt, .form .description span {font-size: 70%;}
}

</style>
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
		<h3>개인정보처리방침</h3>
		<ol>
            <li>개인정보 수집주체 : ${resVo.agent}</li>
            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
        </ol><br/>
        <h3>개인정보 취급 위탁</h3>
        <ol>
            <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<div id="wrap">
	<div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">
        
        <div class="formContents">
            <section class="page" id="page-1">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                        <div class="container">
                            <video id="location_01" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
                            <script>setTimeout(function(){ $('#location_01').trigger('play'); },500);</script>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="O" onclick="pageSelFuc(1,$(this))"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" value="X" onclick="pageSelFuc(1,$(this))"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    </div>
                </div>
            </section>

            <section class="page hide" id="page-2">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                        <div class="container">
                        <video id="location_02" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video_02.mp4" type="video/mp4"></video>
                        <script>setTimeout(function(){ $('#location_02').trigger('play'); },500);</script>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd2" value="O" onclick="pageSelFuc(2,$(this))"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd2" value="X" onclick="pageSelFuc(2,$(this))"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    </div>
                </div>
            </section>

            <section class="page hide" id="page-3">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                    <div class="container">
                        <video id="location_03" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video_03.mp4" type="video/mp4"></video>
                        <script>setTimeout(function(){ $('#location_03').trigger('play'); },500);</script>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd3" value="O"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd3" value="X"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    </div>
                    <!-- <div class="img-area result_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div> -->
                </div>

                <div class="popup_box" style="display: none;">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/icon.png"></div>
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
                    <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
                </div>
            </section>

            <section class="page hide" id="page-4">
                <div class="container">
                    <video id="location_04" playsinline="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video_04.mp4" type="video/mp4"></video>
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
                    <a href="javascript:void(0);"><img class="floatingImg" src="//static.resta.co.kr/event/v_${eventSeq}/icon_02.png"></a>
                </div>

                <div class="formGroup">
                    <div class="notice_txt img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_02.png"></div>

                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
                    </div>

                    <div class="table_box">
                        <div class="user_info info_row">
                            <input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="이름">
                            <input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="user_info phone">
                            <input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호">
                        </div>
                        <input type="hidden" id="branch" name="branch" required="" value="대구">
                    </div>

                    <div class="submit_box">
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_04.png"></div>
                    </div>

                    <div class="description">
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <p id="event-period"></p>
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </div>
            </section>
            
            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.png"></div>	
            </div>
        </div>
        <!-- common input start-->
        <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
        <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
        <input type="hidden" id="site" 			name="site" value="${site}"/>
        <input type="hidden" id="media" 		name="site" value="${media}"/>
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
        <!-- common input end-->
		</form>
	</div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
    })

    //페이지 이동함수
    function pageSelFuc(num, obj) {
        if($('input[name="tadd' + num + '"]').is(':checked')) {
            setTimeout(function(){
                $('#page-' + num).fadeOut(function() {
                    $('#page-' + (num + 1)).fadeIn();
                    $(document).scrollTop(0);
                });
            },300)
        } else {
            alert('설문을 체크해 주세요.');
        }
	}

    //설문 on/off
    $('input[name*=add]').bind('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 결과 확인하기 버튼
    $('input[name=tadd3]').on('click',function(){
        if($('input[name=tadd3]:checked').length > 0){
            $('.overlay').fadeIn()
            $('.popup_box').fadeIn()
        }else{
            alert('설문을 선택해주세요.')
        }
    })

    // 체험 버튼 
    $('.next_btn').on('click',function(){
        $('#page-3').fadeOut(function() {
            $('.overlay').fadeOut()
            $('#page-4').fadeIn();
            $(document).scrollTop(0);
        });
    })

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

    $('.floatingImg').on('click', function() {
        $('#location_04').trigger('play');
    });

    function setScreenSize() {
        let vh = window.innerHeight * 0.01;
        document.documentElement.style.setProperty('--vh', `${vh}px`);
    }
    setScreenSize();
    window.addEventListener('resize', setScreenSize);

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio1.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio1.value;
		}

		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}


    
</script>