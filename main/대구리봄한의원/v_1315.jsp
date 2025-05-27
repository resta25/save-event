<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
/* @import url(../../common_new.css); */
* {font-family: 'Gmarket Sans';}
body {overflow-x: hidden;}
.page:not(#page-1){display:none;}
#wrap{
	overflow: hidden;
}
#wrap .formContents {
    padding-top: 65%;
}

.popup {padding: 3% 10%;}
.popup .text {position: absolute; top: 50%; transform: translateY(-50%); left: 25%; font-size: 150%; color: #fff; font-weight: 700;}
#eventCnt {color: #f7dd4b;}
.container .img-area:not(:nth-child(3)){padding: 0 10%;}
.container .img-area:nth-child(2) {padding-bottom: 5%;}

/* 설문 영역 */
.form .question_box {padding: 3% 10%;}
.form .question {padding-bottom: 5%;}
.form .question_box .q_select label {width: 49.5%; cursor: pointer;}
.form .question_box .q_select label img {width: 100%;}
.form .next_btn_inQuestion {width: 35%; margin: 0 auto; padding-bottom: 5%; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* page-1 개별 */
.form #page-1 .question_box .q_select label:nth-child(1) {width: 49.5%;}
.form #page-1 .question_box .q_select label:nth-child(2) {width: 49.5%;}
.form #page-1 .question_box .q_select label:nth-child(3) {width: 100%;}

/* 이름, 전화번호 box */
.form .formGroup {padding: 0 5% 3%;}
.form .db_box {padding: 3% 10% 0;} 
.form .table_box {display: flex; align-items: center; justify-content: center; gap: 1%; width: 100%; padding: 0;}
.form .table_box.top {margin-bottom: 1%;}
.form .table_box .title {width: 28%; display: block;}
.form .table_box .title img {width: 100%;}
.form .table_box .user_input {width: 77%; position: relative;}
.form .table_box .user_input img {width: 100%;}
.form .table_box .user_input input {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); text-align: center; font-size: 120%;}

.form .description {padding-bottom: 2%;}

.page {
    position: absolute; /* 페이지를 화면 밖으로 이동시키기 위해 absolute 위치 설정 */
    width: 100%;
    top: 0;
    left: 0;
    display: none;  /* 처음에는 숨겨짐 */
}

#page-1 {
    display: block; /* 첫 번째 페이지는 처음에 표시 */
}

/* 개인정보 처리방침 */

/* submit btn */
.form .submit {width: 70%; height: 50%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}
.form input {width: 100%; height: 100%;}

/* 신청자 현황 */
.form .subscribe {display: none;}

@media screen and (max-width: 500px){
    .popup .text {font-size: 100%;}
    .form #page-1 .question_box .q_select label:nth-child(1),
    .form #page-1 .question_box .q_select label:nth-child(2){width: 49.2%;}
    .form .question_box .q_select label {width: 49%;}
}

</style>

<div id="wrap">
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="popup">
            <div class="img-area">
                <img src="//static.resta.co.kr/event/v_${eventSeq}/popup.png">
                <span class="text">현재까지 <span id="eventCnt"></span>명이 체험하셨습니다</span>
            </div>
        </div>
        
        <div class="container">
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
        </div>

		<div class="formContents"> 
			<div class="clock-work"></div>

			<section class="page" id="page-1">
                <div class="question_box">
                    <div class="img-area question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
					<div class="q_select">
						<label>
                            <input type="radio" name="tadd1" value="예">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png">
                        </label>
						<label>
                            <input type="radio" name="tadd1" value="아니오">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png">
                        </label>
						<label>
                            <input type="radio" name="tadd1" value="모르겠어요">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png">
                        </label>
					</div>
				</div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png" onclick="pageSelFuc(1,$(this))"></div> 
			</section>

			<section class="page" id="page-2">
                <div class="question_box">
                    <div class="img-area question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                    <div class="q_select">
						<label>
                            <input type="radio" name="tadd2" value="허리">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png">
                        </label>
						<label>
                            <input type="radio" name="tadd2" value="골반">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png">
                        </label>
						<label>
                            <input type="radio" name="tadd2" value="전부">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png">
                        </label>
						<label>
                            <input type="radio" name="tadd2" value="그 외">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png">
                        </label>
					</div>
				</div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png" onclick="pageSelFuc(2,$(this))"></div> 
			</section>

			<section class="page" id="page-3">
                <div class="question_box">
                    <div class="img-area question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                    <div class="q_select">
						<label>
                            <input type="radio" name="tadd3" value="20대">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png">
                        </label>
						<label>
                            <input type="radio" name="tadd3" value="30대">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_09.png">
                        </label>
						<label>
                            <input type="radio" name="tadd3" value="40대">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_10.png">
                        </label>
						<label>
                            <input type="radio" name="tadd3" value="50대 이상">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_11.png">
                        </label>
					</div>
				</div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png" onclick="pageSelFuc(3,$(this))"></div> 
			</section>

			<section class="page" id="page-4">
                <div class="db_box">
                    <div class="img-area question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_04.png"></div>
                    <div class="formGroup">
                        <div class="table_box top">
                            <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png"></span>
                            <span class="user_input">
                                <img src="//static.resta.co.kr/event/v_${eventSeq}/namber_02.png">
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="홍길동"/>
                            </span>
                        </div>
                        <div class="table_box bottom">
                            <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/namber_01.png"></span>
                            <span class="user_input">
                                <img src="//static.resta.co.kr/event/v_${eventSeq}/namber_02.png">
                                <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="01012345678"/>
                            </span>
                        </div>
                    </div>
    
                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>
    
                    <div class="agreement">
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
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우  ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>
    
                    <div class="submit"><input type="submit" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.resta.co.kr/event/v_${resVo.objectName}/btn_newSb_02.png" /></div>
    
                    <div class="description">
						<p id="event-period"></p>
                        <!--<p>이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>-->
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 : ${resVo.target}</span>
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
        <div class="subscribe" data-limit=""></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>	
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
	</div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->

<!-- jQuery UI 추가 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
	/* 이벤트 카운트 */
	let eventCnt = eventCount('1315');
	
    // 버튼 페이지 이동 함수 (설문)
	var paging_start = false; // 페이지 시작 상태를 추적

	function pageSelFuc(num, obj) {
	    var currentForm = obj.closest('form'); 
	    
	    // 무한 루프 방지, 이미 슬라이드가 진행 중이면 동작하지 않도록 설정
	    if (paging_start) {
	        return;
	    }
	    
	    if ($('input[name="tadd' + num + '"]').is(':checked')) {
	        paging_start = true;  // 슬라이드 효과가 시작되면 상태 변경

	        // 현재 페이지를 왼쪽으로 슬라이드 아웃하여 숨기기
	        currentForm.find('#page-' + num).delay(300).animate({
	            left: '-100%'  // 왼쪽으로 슬라이드 아웃
	        }, 300, function() {
	            $(this).hide();  // 슬라이드 아웃 후에 숨기기

	            // 유효한 다음 페이지가 있으면 오른쪽으로 슬라이드 인하여 표시하기
	            var nextPage = currentForm.find('#page-' + (num + 1));
	            if (nextPage.length) {
	                nextPage.css('left', '100%')  // 처음에는 오른쪽 밖에 위치하도록 설정
	                    .show()  // 표시
	                    .animate({
	                        left: '0%'  // 오른쪽에서 왼쪽으로 슬라이드 인
	                    }, 300, function() {
	                        // $(document).scrollTop(0);
	                        paging_start = false; // 슬라이드가 완료되면 상태 초기화
	                    });
	            } else {
	                paging_start = false; // 다음 페이지가 없다면 상태 초기화
	            }
	        });
	    } else {
	        alert('설문을 체크해 주세요.');
	    }
	}

    // 버튼 페이지 이동 함수 (설문)
    // function pageFuc(num, obj) {
    //     var currentForm = obj.closest('form'); 

    //     if(currentForm.find('input[name="add' + num + '"]').is(':checked')) {
    //         currentForm.find('#page-' + num).delay(300).hide('slide', {'direction':'left'}, 300, function() {
    //             currentForm.find('#page-' + (num + 1)).effect('slide', {'direction':'right'}, 300, function() {
    //                 paging_start = false;
    //             });
    //         });
    //         paging_start = true;
    //     }
    // }
	
    //설문 on/off
    $('input[name*=tadd]').bind('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

  

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`).value;
		procForm.querySelector("input[name='add1']").value = selectedRadio1;
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		var required = {
			'name': '이름'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>