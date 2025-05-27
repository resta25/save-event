<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr';}
/* 신청자 수 CSS */
.remaining-box {background: #f4f4f4; padding: 2% 0;}
.remaining-box .remaining-box-inner {background: #5b5b5b; padding: 2% 0; width: 80%; margin: 0 auto; border-radius: 2em; text-align: center; color: #fff; font-size: 140%;}
#eventCnt {color: #fefb00;}

.question_container {position: absolute; top: 30%; left: 50%; transform: translateX(-50%); padding: 5% 0; width: 85.5%;}
.question_container img{width: 100%;}
.question_container .question_box .q_select label{position: absolute; width: 20%;}
.question_container .question_box .q_select label:nth-child(1){left: 9%; top: 23%;}
.question_container .question_box .q_select label:nth-child(2){left: 9%; top: 43%; transform: translateY(-50%);}
.question_container .question_box .q_select label:nth-child(3){left: 9%; bottom: 37%;}
.question_container .question_box .q_select label:nth-child(4){right: 8%; top: 30%;}
.question_container .question_box .q_select label:nth-child(5){right: 8%; bottom: 46%;}

.monitor{margin: 0 auto; width: 40%;}

.grid_box{margin: 2% auto; width: 85.5%; display: grid; grid-template-columns: repeat(2, 1fr); gap: 5%; box-sizing: border-box;}
.grid_box .question_box{margin-bottom: 3%; text-align: center;}
.grid_box .question_box:first-child{grid-row: 1/2; grid-column: 1/3;}
.grid_box .question_box img{width: 100%;}
.grid_box .question_box .question{margin-bottom: 3%;}
.grid_box .question_box .q_select{display: flex; flex-wrap: wrap; align-items: center; justify-content: center;}
.grid_box .question_box .q_select label{padding: 0 2%; font-size: 30px;}
.grid_box .question_box .inp{margin-top: 10%; padding: 4%; height: auto; text-align: center; font-size: 20px; border-bottom: 1px solid #111;}

.form {background: #f4f4f4;}
.form .formContents{padding:5% 0;}
.form .agBox{margin: 5% auto;}
.form .agreement{width: 80%;}
.form input[type="radio"] + span:before{border-radius: 0;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border: 2px solid #111;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite;}

/* 이름 출력 */
.txtPrintBox{position:relative; text-align: center;}
.txtPrintBox #result{position:absolute; top:30%; left:12%; width:16%; overflow:hidden; font-size:150%; font-weight:600;}
.txtPrintBox .namePrint{width:100%;}

/* 커서 */
.cursor_box{position: relative;}
.cursor_box::after{position: absolute; top: 43%; right: 15%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 31px; background-color: #111; animation: blink-effect 1s step-end infinite;}

.form .description {margin: 2% auto;}

/* 커서 깜빡임 효과 */
@keyframes blink-effect {
    50% {opacity: 0;}
}

/* 버튼 효과 */
@keyframes pulsating {
    0% {transform: scale(1);}
    50% {transform: scale(0.95);}
    100% {transform: scale(1);}
}

@media screen and (max-width: 640px){
    .form .table_box, .form .submit input[type="image"], .form .agreement{width: 80%;}
    
}

@media screen and (max-width: 500px){

    .grid_box .question_box .q_select label{font-size: 4vw;}
    .grid_box .question_box .inp{font-size: 3.5vw;}

    .cursor_box::after{height: 20px;}
    .remaining-box .remaining-box-inner {font-size: 100%;}
    .txtPrintBox #result {font-size: 110%; top: 25%;}
}

@media screen and (max-width: 415px){
    .cursor_box::after{width: 1px; height: 17px;}
}

@media screen and (max-width: 375px){
    .cursor_box::after{height: 15px;}
}
</style>
<div id="wrap"> 
    <div class="container">
        <div class="remaining-box">
            <div class="remaining-box-inner">
                현재까지 <span id="eventCnt"></span>명이 참여했습니다.
            </div>
        </div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
        <form   form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="img-area">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png">
            <div class="question_container">
                <div class="question_box">
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="M자이마"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" value="높은이마"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="radio" name="tadd1" value="전체이마"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="radio" name="tadd1" value="정수리"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                        <label><input type="radio" name="tadd1" value="여러부위"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                    </div>
                </div>
                <div class="monitor"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_00.png"></div>
            </div>
        </div>

        <div class="grid_box">
            <div class="question_box">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tage" value="20"><span>20대</span></label>
                    <label><input type="radio" name="tage" value="30"><span>30대</span></label>
                    <label><input type="radio" name="tage" value="40"><span>40대</span></label>
                    <label><input type="radio" name="tage" value="50"><span>50대 이상</span></label>
                </div>
            </div>
            <div class="question_box">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름을 입력해 주세요"> <!-- 이름 -->
            </div>
            <div class="question_box">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요"> <!-- 연락처 -->
            </div>
            <input type="hidden" name="branch" id="branch" class="inp" required="" value="gangnam">
        </div>

		<div class="formContents">
            <!-- 이름 출력 -->
            <div class="txtPrintBox cursor_box">
                <div id="result"></div>
                <img class="namePrint" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png">
                <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
            </div>
			<div class="agBox">
				<label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
			</div>
            <div class="agreement">
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
                    <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                    <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                </ol>
            </div>

			<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 : ${resVo.target} </span>
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
		<input type="hidden" id="age" 			name="age" value=""/>
		<input type="hidden" id="add1" 			name="add1" value=""/>
		<input type="hidden" id="add2" 			name="add2" value=""/>
		<input type="hidden" id="add3" 			name="add3" value=""/>
		<input type="hidden" id="add4" 			name="add4" value=""/>
		<input type="hidden" id="add5" 			name="add5" value=""/>
		<input type="hidden" id="add6" 			name="add6" value=""/>
		</form>
	</div>

	<div class="container">
		<div class="subscribe" data-limit=""></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
	
	
	<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
		eventCount('1308');
		getComment('1308');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1308');
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


    // 설문이미지 Click bind
    $('[name*="tadd"]').bind('click', function() {
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
        $('.monitor').children('img').attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_0'+(Number($(this).parents('label').index())+1)+'.png');
    });


	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			$('input[name="tadd1"]').focus();
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let tage = procForm.querySelector('input[name="tage"]:checked');
		if (!tage) {
			alert("나이 항목을 선택해주세요.");
			$('input[name="tage"]').focus();
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
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
			,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>