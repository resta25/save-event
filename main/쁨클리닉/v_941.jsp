<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
#wrap{font-family: 'yg-jalnan';}
.form {background: #f5f4ff;}
.form .question_box {position: relative;}
.form .question {width: 80%; position: absolute; top: 13%; left: 50%; transform: translateX(-50%);}
.form .question .img-area {margin-bottom: 5%;}
/* .form .q_select label:nth-child(odd) { width: 30%;}
.form .q_select label:nth-child(even) { width: 20%;}
.form .q_select label:last-child { width: 21%;} */
.form .q_select {display: flex; justify-content: space-between;}
.form .q_select label:nth-child(1) {width: 25%;}
.form .q_select label:nth-child(2) {width: 15%;}
.form .q_select label:nth-child(3) {width: 30%;}
.form .q_select label:nth-child(4) {width: 18%;}
.form .q_select label img {width: 100%;}

.form .q_select.place {justify-content: center; align-items: center; position: absolute; top: 30%; left: 9%; width: 100%;}
.form .q_select.place label:nth-child(1) {width: 16%; margin-right: 3%;}
.form .q_select.place label:nth-child(2) {width: 20%;}

.form .user_info {width: 80%; margin: 0 auto; padding: 5% 0 3%;}
.form .user_info div {margin-bottom: 3%; position: relative;}
.form .user_info div img {width: 100%;}
.form .inp {position: absolute; top: 20%; left: 28%; width: 60%; padding: 3% 0; height: auto; font-size: 150%;}

.form .submit {width: 70%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

.formContents { font-family: 'noto sans kr';}

/* 룰렛 영역 */
/* .roulette {padding: 5%;} */
.roulette image {width: 100%;}
.count_box {width: 100%; text-align: center; font-size: 200%; position: absolute; top: 15.5%; left: 54%; transform: translateX(-50%);}
/* .count {color: #fff799;} */

/* 시침, 초침 */
.container {position: relative;}
.clock{position: absolute; top: 20.5%; left: 18%; background-color: #434f59; transition : all 0.05s; transition-timing-function : cubic-bezier(0.1, 2.7, 0.58, 1); transform-origin : 100%;}
.hourHand{width: 1.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}
.secondHand{left: 17.5%; width: 2.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}

.form .agBox {font-family: 'noto sans kr';}
.form .description {margin-bottom: 3%;}
.form .agreement {font-weight: normal; font-family: 'noto sans kr';}

@media screen and (max-width: 500px){
	.count_box {font-size: 110%;}
	.form .question {top: 14%;}
	.form .q_select label:nth-child(1) {width: 30%;}
	.form .q_select label:nth-child(2) {width: 18%;}
	.form .q_select label:nth-child(3) {width: 35%;}
	.form .q_select label:nth-child(4) {width: 22%;}
	.form .inp {top: 13%;}
	.form .description {font-size: 85%;}
}
</style>

<div id="wrap">
    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

		<div class="container">
			<div class="img-area roulette"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.gif"></div>
			<div class="count_box">혜택 마감까지 <span class="count"></span> 남았습니다.</div>
			<!-- 시침 -->
			<div class="clock hourHand" style="transform: translate(-50%, -50%) rotate(106.5deg);"></div>
			<!-- 초침 -->
			<div class="clock secondHand" style="transform: translate(-50%, -50%) rotate(162deg);"></div>
		</div>

        <div class="question_container">
            <div class="question_box">
			<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/popup_02.png"></div>
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
					<div class="q_select">
						<label><input type="radio" name="tadd1" value="처진 피부"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
						<label><input type="radio" name="tadd1" value="주름"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
						<label><input type="radio" name="tadd1" value="이중턱,볼살"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
						<label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
					</div>
				</div>

				<div class="formGroup">
					<div class="user_info">
						<div class="user_name">
							<img src="//static.resta.co.kr/event/v_${eventSeq}/name.png">
							<input type="text" name="name" id="name" class="inp" required autocomplete="off">
						</div>
						<div class="user_age">
							<img src="//static.resta.co.kr/event/v_${eventSeq}/age.png">
							<input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2">
						</div>
						<div class="user_phone">
							<img src="//static.resta.co.kr/event/v_${eventSeq}/number.png">
							<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
						</div>
						<!-- <div class="question_box">
							<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/place.png"></div>
							<div class="q_select place">
								<label><input type="radio" name="branch" value="강남"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
								<label><input type="radio" name="branch" value="신논현"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
							</div>
						</div> -->
					</div>
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

			<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png" /></div>
			<div class="formContents">
				<div class="description">
					<div class="description orage-box">
						<p id="event-period"></p>
						<span>대상 : ${resVo.target} </span>
					</div>	
					<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
				</div>
	
				<div class="subscribe" data-limit="10"></div>
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
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 
	$(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();

		initDate();
		
		// count
		getComment('941');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('941');
		});
		
		let count = 45; // 초기 인원 수
		const intervalTime = 3000; // 3초마다 업데이트

		// 인원 수 업데이트 함수
		function updateCount() {
			let countText = count + '명'
			$('.count').text(countText); // 인원 수를 화면에 표시

			count--; // 인원 수 감소
			if (count < 0) {
				count = 45; // 0이 되면 다시 45로 초기화
			}
		}

		// 3초마다 updateCount 함수 실행
		setInterval(updateCount, intervalTime);

		// 페이지 로드 시 초기 인원 표시
		updateCount();
	});
	
	function returnComment(resultData, meoreData){
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
	
	// 설문 클릭시 이미지변경
	$('input[name*=tadd], input[name=branch]').bind('click', function(){
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
	});

	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');

		setTimeout(function(){ 
	        $('input[name=agBox]').trigger('click')
	    }, 500);
	});

	// 시계 시,분,초침 작동 start
	const minuteHand = document.querySelector('.minuteHand');
	const hourHand = document.querySelector('.hourHand');
	const secondHand = document.querySelector('.secondHand');

	function setDate() {
        const now = new Date();
        const seconds = now.getSeconds();
        const minutes = now.getMinutes();
        const hours = now.getHours() % 12; // 12시간제로 계산

        // 초침 각도 계산 (초침은 1초에 6도씩 회전)
        const secondsDegrees = (seconds / 60) * 360 + 90;
        secondHand.style.transform = `translate(-50%, -50%) rotate(${secondsDegrees}deg)`;

        // 분침 각도 계산 (분침은 1분에 6도씩 회전)
        const minutesDegrees = (minutes / 60) * 360 + 90;
        // minuteHand.style.transform = `translate(-50%, -50%) rotate(${minutesDegrees}deg)`;

        // 시침 각도 계산 (시침은 1시간에 30도씩 회전 + 분에 따른 시침 이동 보정)
        const hoursDegrees = (hours / 12) * 360 + (minutes / 60) * 30 + 90;
        hourHand.style.transform = `translate(-50%, -50%) rotate(${hoursDegrees}deg)`;
    }

    // 초침은 1초마다 업데이트
    setInterval(() => {
        setDate();
    }, 1000); // 1000ms = 1초

    // 페이지 로드 시 처음 한 번 설정
    setDate();
    // 시계 시,분,초침 작동 end

    // 신청 인원 카운트다운 기능
    let remainingCount = 45; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 1) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount + '명'); // 새로운 값 표시
        } else {
            clearInterval(countdownInterval); // 0명이 되면 카운트다운 중지
            $countElement.text(1 + '명'); // 0으로 표시
        }
    }, 5000); // 5000ms = 5초 간격
	
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
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
