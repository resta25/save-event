<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: "Noto Sans KR", sans-serif;}
.img-area img {margin: 0;}
.img-area.img-box {position: absolute; top: 0%; left: 0%; width: 100%; height: 100%;}
.img-area.img-box img {position: absolute; display: none;}
.img-area.img-box img:nth-child(1){top: 18%;width: 39%;left: 4.7%; }
.img-area.img-box img:nth-child(2){top: 35%;width: 39%;left: 4.7%;}
.img-area.img-box img:nth-child(3){top: 35%;width: 39%;left: 4.7%;}
.img-area.img-box img:nth-child(4){top: 69%;width: 39%;left: 4.7%;}
.relative{position: relative;}
.form .question_box .question { margin: 0 auto 2%; width: 100%;}
.form .question_box .q_select {padding: 21.4% 3.8% 6.1%; background-color: rgba(255, 255, 255, 0.6); border-radius: 20px; text-align: center; position: absolute; z-index: 1; top: 10.4%; right: 3.1%; width: 42.1%; display: flex; flex-direction: column;}
.form .question_box .q_select .img-area {width: 100%;position: absolute;left: 0;top: 6.83%;}
.form .question_box .q_select .img-area:nth-child(1) {top: -6%;left: -7%; width: 41.9%; height: 41%;}
.form .question_box .q_select .img-area:nth-child(2) img {width: 79.7%; height: 41%;}
.form .question_box .q_select label {padding: 1.5% 1%;}
.form .q_select label img {width: 100%;}

#wrap .formContents {
    width: 71%;
    margin: 0 auto;
    padding: 6.4% 8.5%;
    border-radius: 20px;
    background-color: #dc8e9f;
}
.question_container {
    padding-bottom: 5.9%;
    background-color: #e8e8ea;
}
.form .q_select.place {justify-content: center; align-items: center; position: absolute; top: 30%; left: 9%; width: 100%;}
.form .q_select.place label:nth-child(1) {width: 16%; margin-right: 3%;}
.form .q_select.place label:nth-child(2) {width: 20%;}

/* .form .formContents {position: absolute !important; top:10%; left: 50%; transform: translateX(-50%); width: 80%;} */
.form .description {width: 98%; text-align: center; margin: 0 auto; padding: 0; color: #fff;}
.form .description p { font-weight: normal; font-size: 78%; margin: 0 auto; padding: 0.5% 0; letter-spacing: -0.5px;}
.form .user_info {width: 80%; margin: 0 auto; padding: 5% 0 3%;}
.form .user_info div {margin-bottom: 3%; position: relative;}
.form .user_info div img {width: 100%;}

.form .submit {}
.form .submit input[type="image"] {width: 100%; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.form .agBox {margin: 4% auto; color: #fff;}

/* 상단 카운트 box */
.count-box {background:rgba(164, 164, 164, 0.5); padding: 1% 10%; border-radius: 1.8rem; position: absolute; top: 0.5%; left: 50%; transform: translateX(-50%); font-size: 120%; color: #fff; width: max-content;}
#eventCnt {color: #fffaaf; font-weight: 700; opacity: 1 !important;}

/* db단 이름, 나이, 연락처 */
.db-box .user-info {display: flex; align-items: center; margin: 0 auto; background: #fff; border-radius: 2.5rem; padding: 4% 5%;}
.db-box .user-info:not(:last-child) {margin-bottom: 2%;}
.db-box .user-info .title{width: 25%;}
.db-box .user-info .title img {width: 100%;}
.db-box .user-info input{color: #000; font-size: 150%;}

/* 설문 영역 */
.sel_imgs img{width: 100%;}
.sel_imgs .mark_imgs{position: absolute; top: 0; width: 100%;}
.sel_imgs .mark_img{position: absolute; top: 0; width: 100%; display: none;}

/* result 영역 */
.form .result_box {padding: 2% 0; border: 2px dashed #fff; border-radius: 0.8rem; color: #fff; text-align: center; font-size: 180%; margin: 2% auto;}
#addArray, #addArray2 {font-weight: 700;}

/* 신청현황 */
/* .subscribe {display: none;} */

/* 개인정보 처리 영역 */
.form input[type="checkbox"] + span:before,
.form input[type="checkbox"]:hover + span:before,
.form input[type="checkbox"] + span:after {border-color: #fff;}

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

/* 버튼 효과 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 500px){
    .form .formContents {top: 7%;}
    .count-box {font-size: 100%;}
    .db-box .user-info input {font-size: 120%;}
    .form .agBox {font-size: 80%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {padding: 0; font-size: 80%;}
}
@media screen and (max-width: 450px){
    .count-box {font-size: 90%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {padding: 0; font-size: 70%;}
    .form .submit {padding: 0;}
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
			<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
		</ol><br/>
		<h3>개인정보 취급 위탁</h3>
		<ol>
			<li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
			<li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li><br/>
			<li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
		</ol>
	</div>	
</div>
<div id="wrap">
    <div class="form form-1">
		<form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>

                <div class="count-box">현재까지 <span id="eventCnt"></span>명이 참여했습니다.</div>

                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>

                <div class="question_box relative">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_00.jpg"></div>
                    <div class="img-area img-box">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/img_01.png">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/img_03.png">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/img_04.png">
                    </div>
                    <div class="q_select">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                        <label><input type="checkbox" name="add1[]" value="팔뚝" data-value="01"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="checkbox" name="add1[]" value="뱃살" data-value="02"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="checkbox" name="add1[]" value="옆구리, 러브핸들" data-value="03"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="checkbox" name="add1[]" value="허벅지" data-value="04"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                    </div>
                </div>
            </div>

            <div class="question_container relative">
                <div class="formContents">
                    <div class="formGroup">
                        <div class="db-box result_box1">
                            <div class="user-info user-name">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png"></span>
                                <input type="text" name="name" id="name" class="inp" required="" autocomplete="off">
                            </div>
                            <div class="user-info user-age">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/age_01.png"></span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2">
                            </div>
                            <div class="user-info user-phone">
                                <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/number_01.png"></span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11">
                            </div>
                        </div>
                    </div>

                    <div class="agBox">
                        <label><input name="agBox" type="checkbox" id="agBox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>

                    <!-- <div class="result_box">
                        <span id="userName"></span>님이 빼고 싶은 부위는<br>
                        <span id="addArray"></span> 입니다.
                        <script>$('.result_box1 input[name="name"]').keyup(function(){$("#userName").text($(this).val());});</script>
                    </div> -->
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>

                    <div class="description">
                        <div class="description ">
                            <span>대상 : ${resVo.target} </span>
                            <p id="event-period"></p>
                            <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        </div>	
                    </div>
                </div>
            </div>
			<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
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
    
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
    </div>

    <div class="subscribe" data-limit=""></div>

    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		eventCount('1356');
		initDate();
		getComment('1356');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1356');
		});
	});
	
	function returnComment(resultData, meoreData){
		var today = new Date();   
			var month = today.getMonth() + 1;
			var dateNum;
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			if(meoreData > 10) {
				$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
			}
		});
	}
	
    // 설문 이미지 Click 이벤트
    //첫번째 form
    $('.form-1 input[name="add1[]"]').on('change', function() {
    // 현재 상태에 따라 해당 이미지를 ON/OFF 상태로 변경
    var selectedImg = $(this).parent().children('img');
    
    var index = $(this).closest('label').index('.q_select label');

    var imgBox = $(this).closest('.question_box').find('.img-box');

    if ($(this).prop('checked')) {
        selectedImg.attr('src', selectedImg.attr('src').replace('_off', '_on'));
        imgBox.children('img').eq(index).css('display', 'block');
    } else {
        // If unchecked, hide the corresponding image
        selectedImg.attr('src', selectedImg.attr('src').replace('_on', '_off'));
        imgBox.children('img').eq(index).css('display', 'none');
    }
});

    
    // form-1 체크박스 change 이벤트 핸들러 (초기 1회만 등록)
    $('.form-1 input[name="add1[]"]').on('change', function() {
        displayChecked(name); // 중복 이벤트 방지
    });

    //최대 3개까지 선택가능
    //첫번째 form
    function displayChecked(name) {
        // const checkboxes = $(`.form-1 input[name="${name}"]`);
        // 선택된 체크박스들의 value 값 배열로 가져오기
            checkedValues = $('.form-1 input[name="add1[]"]:checked').map(function() {
                return $(this).val();
            }).get();

            // result영역에 배열 출력
            // $('#addArray').text(checkedValues.join(', '));

            // 선택된 체크박스가 3개 이상이면
            // if (checkedValues.length > 3) {
            //     // 경고창 띄우기
            //     alert("3부위까지 선택 가능합니다.");

            //     // 마지막에 체크된 체크박스를 해제
            //     event.preventDefault();
            //     $(this).prop('checked', false);
            //     var selectedImg = $(this).parent().children('img');
            //     selectedImg.attr('src',  selectedImg.attr('src').replace('_on', '_off'));
            // }

    }

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.overlay').fadeIn();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.overlay').fadeOut();
        $('.agreeModalBox').fadeOut();
    });

    
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let checkedValues;

		checkedValues = $('#' + formId + ' input[name="add1[]"]:checked').map(function() {
		    return $(this).val();
		}).get();
		
		if (!checkedValues.length >= 1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = checkedValues;
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
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
