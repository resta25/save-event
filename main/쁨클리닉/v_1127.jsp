<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: 'Noto Sans KR', sans-serif;}

:root {
    --inp-font-size: 27px;
    --inp-border-radius: 0.4em;
}

.form .formContents{padding: 5% 8%;}

.input_box {margin-top: 4%;}
.input_box .input_row {display: grid; grid-template-columns: 1.3fr 3fr; gap: 0.6em; align-items: center;}
.input_box .input_row:not(:last-child) {margin-bottom: 1.5%;}
.input_box .input_row .label_txt {padding: 0.7em 0; width: auto; text-align: center; border-radius: var(--inp-border-radius); font-size: var(--inp-font-size); font-weight: bold; color: #fff; background-color: #616161;}
.input_box .input_row .inp {padding-left: 1em; font-size: var(--inp-font-size); border-radius: var(--inp-border-radius); background-color: #f5f5f5;}
.input_box .input_row .inp::placeholder {color: #ccc;}

.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border: 1px solid #000;}
.form .agBox {width: 100%; margin: 2em auto;}
.form .agreement {width: 100%;}
.form .submit {padding-top: 0; display: grid; grid-template-columns: repeat(2, 1fr); gap: 2%;}
.form .submit input[type="image"] {width: 100%;}

.form .branch {display: flex; gap: 2%;}
.form .branch > div {display: block; background: #616161; text-align: center; font-size: 150%; padding: 5%; border-radius: 0.8rem; color: #fff; width: 27%; font-weight: 700;}
.form .branch .label_box {background: #f5f5f5; color: #000; width: 80%; text-align: left;}

@media screen and (max-width: 768px){
    :root {
        --inp-font-size: 4vw;
    }
    .form .branch > div {font-size: 110%; border-radius: 0.5rem;}
}
</style>
<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/240124.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
	</div>

    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

		<div class="formContents">
            <div class="description top">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			</div>

            <div class="input_box">
                <label class="input_row">
                    <div class="label_txt">이름</div>
                    <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름을 입력해 주세요">
                </label>
                <label class="input_row">
                    <div class="label_txt">나이</div>
                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해 주세요" data-min="20" data-max="99">
                </label>
                <label class="input_row">
                    <div class="label_txt">휴대폰 번호</div>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="'-'없이 번호를 입력해 주세요">
                </label>
                <div class="branch">
                    <div>지점</div>
                    <div class="label_box">
                        <label><input type="radio" id="branch" name="branch" value="강남"><span>강남</span></label>
                        <label><input type="radio" id="branch" name="branch" value="신논현"><span>신논현</span></label>
                    </div>
                </div>
            </div>
            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
            </div>
            <div class="agreement">
				<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
				<div class="agreementContent">
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
			<div class="submit">
                <input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                <input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png">
            </div>
			<div class="description bottom">
                <span>대상 : ${resVo.target}</span>
			</div>
		</div>
		<!-- Form 필수값 start -->
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
		<!-- Form 필수값 end -->
		</form>
	</div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="subscribe" data-limit="10"></div>
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
		
		getComment('1127');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1127');
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
	
	function fnForm(formId){

		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="branch"]:checked`);
		if (!selectedRadio1) {
			alert("지점 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='branch']").value = selectedRadio1.value;
		}
	
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			//,'add1': '설문'
			,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script> 