<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: 'noto sans kr';}
.txt{padding:6% 0 2% 3%; font-size:120%; color:#f00;}

.form .formContents{padding:5% 0;}
.form .formContents .table_box.rowBorder{width:94%;}
.form .formContents .table_box.rowBorder tr td{padding:4% 3%; height:auto; border-color:#0055b4;}
.form .formContents .table_box.rowBorder tr td:last-child{border-width:1px 1px 1px 1px !important;}
.form .formContents .table_box.rowBorder tr td:nth-of-type(2){width:14px; border-width:0 0 0 0; background-color:transparent; padding:0;}

.form .formContents .table_box.rowBorder tr td input{font-size:120%;}
.form .formContents .table_box.rowBorder tr td input::placeholder{color:red; padding:0 2% 0;}

/* 설문사항:연령,개수 */
.form .question_box{display: flex; align-items: center; text-align:center; font-size: 23px; margin: 1% 3%; padding: 3% 4%; border: 1px solid #0055b4;}
.form .question_box .question{width: 25%; text-align: left; color:#f00;}
.form .question_box .q_select{display: flex; align-items: center; flex-wrap: wrap; margin-left: 2%; width: 85%; text-align: left;}
.form .question_box .q_select label{margin-right: 5%; vertical-align: middle; color:#f00;}
.form .question_box .q_select label:last-child{margin-right: 0;}

.form input[type="radio"] + span:before, .form input[type="checkbox"] + span:before{border-color:#f00;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

/* 성별,연령,고민사항 */
.result_box{width:94%; margin:0 auto; padding:4% 5%; box-sizing:border-box; border:1px solid #0055b4; }
.result_box .img-area {width: 123%; position: relative; left: -11%;}
.result_box .img-area img {width: 100%;}
.result_box .result_vals{margin-bottom:3%; padding: 6% 7%; font-size: 38px; font-weight: 600; background-color:#feffe5; border:inherit;}
.result_box .result_vals li {display: flex; justify-content: space-between; letter-spacing: -2px;}
.result_box .result_vals li:not(:last-child){margin-bottom: 3%;}
.result_box .result_vals .output{text-align:right; color:#f00;}

/* 커서 */
.cursor_box{position: relative; background-color:#f2fbff; padding:3% 4%; letter-spacing: -1px; text-align: center; font-size:38px; font-weight:700;
 border:1px solid #4683c8}
.cursor_box .point{color:#4683c8; font-weight: 700;}
.cursor_box span:nth-of-type(2){display:inline-block; padding-left:20%;}
.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 30px; background-color: #000; animation: blink-effect 1s step-end infinite;}

/* new db */
.formContents {padding:0 0 5%; background-color: #fff; position: relative; z-index: 5;}
.formContents .bg-box {position: relative; padding:5% 0; margin-top: 2%;}
/* form box 테두리 */
.formContents .bg-box::after {display:block; content:''; width:93.5%; height: 100%; background-color: #fff; top: 0; position: absolute;    left: 3%;    z-index: -1; border: 1px solid #1462ba;}
.formContents .bg-box .description {background-color: #f4f4f4; width: 80%; border-radius: 20px; text-align: left; padding: 2% 0 2% 2%;}
.formContents .bg-box .description p {color: #000; font-size: 120%;}
.formContents .bg-box .description.bottom {background-color: #fff; text-align: center;}
.formContents .bg-box .description .ad_txt {font-size: 103%; line-height: 1.5;}
.formContents .bg-box .img-area.line {width: 93.5%; margin: 0 auto; margin-top: 4%;}
.formContents .bg-box .img-area.line img {}
.formContents .bg-box .formGroup {}
/* 테이블 공통 */
.formGroup {width: 100%;}
.form .table_box {width: 75%; background: #f4f4f4; display: flex; align-items: center; border-radius: 15px; margin-bottom: 2%; padding: 3%;}
.form .table_box span {font-size: 120%; width: 10%;}
.form .table_box input {}
/* 테이블 TOP */
.formContents .bg-box .formGroup .table_box.top {}
/* 테이블 BOTTOM */
.formContents .bg-box .formGroup .table_box.bottom {}
.formContents .bg-box .formGroup .table_box.bottom span {width: 19%;}
/* 개인정보처리방침 체크박스 */
.formContents .bg-box .agBox label {}
.formContents .bg-box .agBox label input[name="agBox"] {}
.formContents .bg-box .agBox label input[name="agBox"] span {}
.formContents .bg-box .agBox .btn-agreement {}

/* submit 버튼 */
.formContents .bg-box .submit {width: 100%; margin: 0 auto;}
.formContents .bg-box .submit input {}
.form .submit input[type="image"] { width: 80%; padding: 0 5%;}
/* 대상 */
.formContents .bg-box .description.bottom {}


/* form 테이블 공통 */
.form .table_box table th img {height:65%;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color:#000;}

.form .inp {font-size: 150%;}
.form .table_box table th, .form .table_box table td {padding: 7px 15px;}
.form .table_box table th, .form .table_box table td span {font-size: 140%; font-weight: 700; position: relative; top: -2px;}
.form .table_box table th, .form .table_box table tr:first-child td {background-color: #f4f4f4; border-top-right-radius: 20px; border-top-left-radius: 20px; font-weight: 700; padding-bottom: 0;}
.form .table_box table th, .form .table_box table tr:last-child td {background-color: #f4f4f4; border-bottom-right-radius: 20px; border-bottom-left-radius: 20px; display: flex; align-items: center; padding-top: 0;}


@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

@media screen and (max-width: 500px){
	.form .question_box, .formGroup input{font-size: 3vw;}
    .form .question_box .q_select label{margin-right:2%;}

    .result_box .result_vals,.cursor_box{font-size: 5.5vw;}    

    .cursor_box::after{width: 1px; height: 21px;}
	.form .table_box span {width: 20%;}
	.formContents .bg-box .formGroup .table_box.bottom span {width: 45%;}
}

@media screen and (max-width: 415px){
    .cursor_box::after{height: 17px;}
	.formContents .bg-box .description p { font-size: 89%;}
	.formContents .bg-box .description .ad_txt {font-size: 70%;}
}

@media screen and (max-width: 375px){
}
/* 버튼 효과 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}
@keyframes blink-effect {
    50% {opacity: 0;}
}
</style>

<!--------------------- 푸터 없는 랜딩입니다 !!!! 복사 시 유의하세요 !!!! --------------------->
<div id="wrap"> 
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>      
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div> 
	</div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
        <div class="txt">※ 빨간 글씨 칸은 필수로 입력해 주세요.</div>
        <div class="formContents">            
            <div class="question_box">
                <div class="question">연령 :</div>
                <div class="q_select">
				    <label><input type="radio" name="tadd1" value="20대" data-output="#output1"><span>20대</span></label>
                    <label><input type="radio" name="tadd1" value="30대" data-output="#output1"><span>30대</span></label>
                    <label><input type="radio" name="tadd1" value="40대" data-output="#output1"><span>40대</span></label>
                    <label><input type="radio" name="tadd1" value="50대 이상" data-output="#output1"><span>50대 이상</span></label>
                </div>
            </div>

            <div class="question_box">
                <div class="question">모발 유형 :</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd2" value="곱슬" data-output="#output2"><span>곱슬</span></label>
                    <label><input type="radio" name="tadd2" value="반곱슬" data-output="#output2"><span>반곱슬</span></label>
                    <label><input type="radio" name="tadd2" value="직모" data-output="#output2"><span>직모</span></label>
				    <label><input type="radio" name="tadd2" value="모름" data-output="#output2"><span>모름</span></label>
                </div>
            </div>           

            <div class="question_box">
                <div class="question">가족력  :</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd3" value="부계" data-output="#output3"><span>부계</span></label>
                    <label><input type="radio" name="tadd3" value="모계" data-output="#output3"><span>모계</span></label>
                    <label><input type="radio" name="tadd3" value="없음" data-output="#output3"><span>없음</span></label>
                </div>
            </div>   

            <div class="question_box">
                <div class="question">관리 여부 :</div>
                <div class="q_select">
                    <label><input type="checkbox" name="tadd4[]" value="없음" data-output="#output4"><span>없음</span></label>
                    <label><input type="checkbox" name="tadd4[]" value="두피케어" data-output="#output4"><span>두피케어</span></label>
                    <label><input type="checkbox" name="tadd4[]" value="문신" data-output="#output4"><span>문신</span></label>
					<label><input type="checkbox" name="tadd4[]" value="가발" data-output="#output4"><span>가발</span></label>
                    <label><input type="checkbox" name="tadd4[]" value="약" data-output="#output4"><span>약</span></label>
                </div>
            </div> 

			<div class="question_box">
                <div class="question">희망 부위 :</div>
                <div class="q_select">
                    <label><input type="radio" name="tadd5" value="이마" data-output="#output5"><span>이마</span></label>
                    <label><input type="radio" name="tadd5" value="정수리" data-output="#output5"><span>정수리</span></label>
                    <label><input type="radio" name="tadd5" value="헤어라인" data-output="#output5"><span>헤어라인</span></label>
					<label><input type="radio" name="tadd5" value="그 외" data-output="#output5"><span>그 외</span></label>
                </div>
            </div> 


            <div class="result_box basic_box">
                <ul class="result_vals">
                    <li>
                        <span class="result_subtitle">연령 :</span>
                        <span id="tadd1-output" class="output"></span>
                    </li>
                    <li>
                        <span class="result_subtitle">모발 유형 :</span>
                        <span id="tadd2-output" class="output"></span>
                    </li>
					<li>
                        <span class="result_subtitle">가족력 :</span>
                        <span id="tadd3-output" class="output"></span>
                    </li>
                    <li>
                        <span class="result_subtitle">관리여부 :</span>
                        <span id="tadd4-output" class="output"></span>
                    </li>
					<li>
                        <span class="result_subtitle">희망 부위 :</span>
                        <span id="tadd5-output" class="output"></span>
                    </li>
                </ul>
				<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div> -->
                <div class="cursor_box">
                    <span class="point">예상</span> 비용: <span>원</span>
                </div>
            </div>            

			<div class="bg-box">
				<div class="description">
					<p id="event-period"></p>
					<div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 상담 외 어떠한<br> 목적으로도 사용하지 않습니다.</div>
				</div>

				<div class="img-area line"><img src="//static.resta.co.kr/event/v_${eventSeq}/dB_line.png"></div>

				<div class="formGroup">
					<div class="table_box top">
						<span>이름</span>
						<input type="text" name="name" id="name" value="" class="inp" required autocomplete="off"/>
					</div>
					<div class="table_box bottom">
						<span>전화번호</span>
						<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11"/>
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
						<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
						<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
					</ol><br/>
					<h3>개인정보 취급 위탁</h3>
					<ol>
						<li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
						<li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
						<br/>
						<li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
					</ol>
				</div>

				<div class="submit"><input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"/></div>


				<div class="description bottom">
					<span>대상 : ${resVo.target} </span>
				</div>
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

    <div class="container">
		<div class="subscribe" data-limit="10"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
		<!--------------------- 푸터 없는 랜딩입니다 !!!! 복사 시 유의하세요 !!!! --------------------->
		<!---<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>--->
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		getComment('465');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('465');
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
	
   // 선택 값 출력
   function displayChecked(name, outputSelector) {
       const checkboxes = $('input[name="' + name + '"]');
       const checkedValues = checkboxes.filter(':checked').map(function() {
           return this.value;
       }).get();

       let output = '';
       for (let i = 0; i < checkedValues.length; i++) {
           output += checkedValues[i];
           if (i < checkedValues.length - 1) {
               output += ', ';
               // 한 줄에 두 단어 이상일 경우 줄바꿈
               if ((i + 1) % 3 === 0 && checkedValues.length > 2) {
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
	
	let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
	if (!selectedRadio3) {
		alert("설문3 항목을 선택해주세요.");
		return;
	} else {
		procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
	}
	//name.replace('[]', '')
	let selectedRadio4 = procForm.querySelector(`input[name="tadd4[]"]:checked`);
	if (!selectedRadio4) {
		alert("설문4 항목을 선택해주세요.");
		return;
	} else {
		procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
	}
	
	let selectedRadio5 = procForm.querySelector(`input[name="tadd5"]:checked`);
	if (!selectedRadio5) {
		alert("설문5 항목을 선택해주세요.");
		return;
	} else {
		procForm.querySelector("input[name='add5']").value = selectedRadio5.value;
	}

   	/*
   	let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
   	procForm.querySelector("input[name='add2']").value = selectedRadio2;
   	
   	let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
   	procForm.querySelector("input[name='add3']").value = selectedRadio3;
   	*/
   	
   	var required = {
   		'name': '이름'
   		// ,'age': '나이'
   		,'phone': '전화번호'
   		,'add1': '설문1'
   		,'add2': '설문2'
   		,'add3': '설문3'
   		,'add4': '설문4'
   		,'add5': '설문5'
   		,'agBox': '개인정보'
   	};
   	
   	validateForm(procForm, required);
   }
</script>