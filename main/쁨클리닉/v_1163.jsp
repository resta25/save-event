<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.bg_wh{background-color: #fff;}
.mb-1{margin-bottom: 1% !important;}
.mb-3{margin-bottom: 3% !important;}
.relative{position: relative;}

.basic_box{margin: 1% 3%; padding: 3% 2%; border: 1px solid #3e74e4 !important; background-color: #fff;}

.form .formContents{padding:2% 0 4%;}

.subscribe .btn_moreSubscribe {display: none;}

.txt01{margin:6% 0 0 3%; width: 42%;}

.formGroup{display: grid; grid-template-columns: 1fr 1fr; padding: 0 3% 3%;}
.formGroup input{padding: 6% 4%; text-align: center; font-size: 20px !important; background: #f2f2f2 !important; border: 1px solid #a3a3a3 !important; border-radius: 0.5rem;}
.formGroup input::placeholder{color: #fa3e9d; font-weight: 700;}
.formGroup input:nth-child(1) {border-top-right-radius: 0; border-bottom-right-radius: 0; border-right: none !important;}
.formGroup input:nth-child(2) {border-top-left-radius: 0; border-bottom-left-radius: 0;}

.form input[type="radio"] + span:before,.form input[type="checkbox"] + span:before{border: 2px solid #fa3e9d;}

.grid_box{display: grid; grid-template-columns: 1.1fr 1fr; gap: 5%; align-items: top;}

.form .question_box{margin: 0 3%; padding:3%; text-align:center; font-size: 24px; border: 1px solid #fa3e9d;}
.form .question_box .question{margin-bottom: 2%; width: 100%; text-align: left; color: #fa3e9d; font-weight: 600;}
.form .question_box .q_select{display: flex; align-items: center; justify-content: center;}
.form .question_box .q_select label{margin-right: 4%; color: #fa3e9d;}
.form .question_box .q_select label:last-child{margin-right: 0;}
.form input[type="radio"] + span {font-weight: 600;}

.result_box{margin: 1% 3%;}
.result_box .result_vals{text-align: center; font-size: 33px; font-weight: 600; color: #fa3e9d;}
.result_box .result_vals li .output{position: absolute; top: 50%; left: 53%; width: 26%; transform: translateY(-50%);}

.form .submit_box {display: flex; justify-content: center; margin: 3% 0;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

/* 대상 */
.form .description.bottom {margin-top: 1%;}

/* 실시간 신청 현황 */
.subscribe {height: 220px; overflow: hidden; padding: 2% 5%;}
.subscribe_bg {background-color:#1c1c34 ;}
.subscribe .content {padding: 0; display: flex; align-items: center; font-size: 100%; margin: 1% 0; justify-content: flex-start; border-bottom: none;}
.subscribe .content > div {}
.subscribe .content .date {width: 20%;}
.subscribe .content .name {margin-right: 3%; display: flex; align-items: center; width: 30%;}
.subscribe .content .add2 {width: 50%;}
.subscribe .content .text.yellow-bg {width: 13%;}
.subscribe .content .name::after {
    display: inline-block;
    width: 2px;
    height: 30px;
    content: '';
    background-color: #dcdcdc;
    margin-left: 20px;
}
.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content:last-child {font-size: 100%;}
.subscribe .content .text { text-align: center; width: 10%;}
.yellow-bg {
        background-color: #99ffef;
        border: 1px solid #fa3e9d;
        font-weight: 700;
    }

@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 500px){
	.form .question_box .question, .form .question_box .q_select label, .formGroup input{font-size: 3.4vw!important;}
    .result_box .result_vals{font-size: 4vw;}

    .subscribe .content,
    .subscribe .content:last-child { font-size: 80%;}
    .subscribe .content .name {width: 55%;}
    .subscribe .content .add2 {width: 35%;}
    .subscribe .content .text.yellow-bg {width: 20%;}
}
</style>

<div id="wrap" class="bg_wh"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="img-area txt01"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.jpg"></div>            
        <div class="formContents">
            <div class="question_box mb-3">
                <div class="question">본인의 연령대는?</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="20대"><span>20대</span></label>
                    <label><input type="radio" name="tadd1" value="30대"><span>30대</span></label>
                    <label><input type="radio" name="tadd1" value="40대"><span>40대</span></label>
                    <label><input type="radio" name="tadd1" value="50대"><span>50대</span></label>
                    <label><input type="radio" name="tadd1" value="60대"><span>60대</span></label>
                </div>
            </div>

            <div class="question_box mb-3">
                <div class="question">체험을 희망하는 부위는?</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="턱라인"><span>턱라인</span></label>
                    <label><input type="radio" name="tadd2" value="볼살"><span>볼살</span></label>
                    <label><input type="radio" name="tadd2" value="목주름"><span>목주름</span></label>
                    <label><input type="radio" name="tadd2" value="눈가"><span>눈가</span></label>
                </div>
            </div>

            <div class="result_box mb-3">
                <ul class="result_vals">
                    <li class="relative mb-1">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
                        <span id="tadd1-output" class="output"></span>
                    </li>
                    <li class="relative mb-1">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                        <span id="tadd2-output" class="output"></span>
                    </li>
                </ul>
            </div>

			<div class="formGroup">
                <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"> <!-- 이름 -->
                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처"> <!-- 전화번호 -->
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

            <div class="submit_box">
                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div>
            </div>
            <div class="description">
                <span>대상 : ${resVo.target} </span>
            </div>
            <div class="description bottom">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! ${resVo.agent} 에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
		</form>
	</div>

    <div class="subscribe" data-limit="10"></div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function() {
		// 우클릭 방지
		blockSourceView();
		
		initDate();

    	// Comment Start
		getComment('1163');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1163');
		});

		setInterval(function(){
	        $('.subscribe .content:first').slideUp(function(){
	            $(this).show().parent().append(this)
	        })
	    },2000);
	});
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var statusText = '신청완료';
				var backgroundClass = statusText === '신청완료' ? 'yellow-bg' : '';
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '	<div class="name">'+ data[v].name + '님 혜택을 받았어요' + '</div>';
					html += '	<div class="add2">'+ '희망부위 : ' + data[v].add2 +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; 
					html += '</div>';
				$(obj).append(html);
			}
		});
	}
	
    // 선택 값 출력
	function displayChecked(name, outputSelector) {
		console.log(outputSelector)
	    const checkboxes = $('input[name="' + name + '"]');
	    const checkedValues = checkboxes.filter(':checked').map(function() {
	        return this.value;
	    }).get();

	    // 3개 이상부터 줄바꿈
	    let output = '';
	    for (let i = 0; i < checkedValues.length; i++) {
	        output += checkedValues[i];
	        if (i < checkedValues.length - 1) {
	            output += ', ';
	            if (i === 1 && checkedValues.length > 2) {
	                output += '<br>';
	            }
	        }
	    }

	    $(outputSelector).html(output);
	}

	$('input[name^="tadd"]').on('click', function() {
	    const name = $(this).attr('name');
	    const outputSelector = '#' + name.replace('[]', '') + '-output';
	    displayChecked(name, outputSelector);
	});
	
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문2 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		/*
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'phone': '전화번호'
			//, 'age': '나이'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>