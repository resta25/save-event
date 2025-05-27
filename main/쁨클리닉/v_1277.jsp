<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: "Noto Sans KR", sans-serif;}
.img-area img {margin: 0;}
.relative{position: relative;}
.form .question_box {
    padding: 1% 0 3%;
}
.form .question_box .question {
    margin: 0 auto 2%;
    width: 100%;
}
.form .question_box .q_select {
    text-align: center;
}
.form .question_box .q_select label {
    padding: 1%;
    width: 20%;
}
.form .q_select label img {width: 100%;}

.form .q_select.place {justify-content: center; align-items: center; position: absolute; top: 30%; left: 9%; width: 100%;}
.form .q_select.place label:nth-child(1) {width: 16%; margin-right: 3%;}
.form .q_select.place label:nth-child(2) {width: 20%;}

.form .formContents {padding: 2% 0;}
.form .description {
    width: 98%;
    text-align: center;
    margin: 0 auto;
    padding: 0;
}
.form .description p {
    font-weight: bold;
    font-size: 95%;
    margin: 0 auto;
    padding: 0.5% 0;
    letter-spacing: -0.5px;
}
.form .user_info {width: 80%; margin: 0 auto; padding: 5% 0 3%;}
.form .user_info div {margin-bottom: 3%; position: relative;}
.form .user_info div img {width: 100%;}

.form .submit {width: 70%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

.form .agBox {font-family: 'noto sans kr'; margin: 2% auto;}

/* 상단 카운트 box */
.count-box {position: absolute; top: 0.5%; left: 50%; transform: translateX(-50%); width: 80%;}
.remaining-count {position: absolute; top: 43%; transform: translateY(-50%); left: 51%; font-size: 200%; font-weight: 700; color: #0030ff;}

/* db단 이름, 나이, 연락처 */
.db-box {width: 80%; margin: 0 auto;}
.db-box .user-info {display: flex; align-items: center; width: 87%; margin: 0 auto;}
.db-box .user-info:not(:last-child) {margin-bottom: 1%;}
.db-box .user-info .title{display: block; width: 15%; font-size: 120%; color: #575757; font-weight: 700;}
.db-box .user-info input{background: #ededed; border-radius: 0.8rem; padding: 3%; text-align: center;}

/* 설문 영역 */
.sel_imgs img{width: 100%;}
.sel_imgs .mark_imgs{position: absolute; top: 0; width: 100%;}
.sel_imgs .mark_img{position: absolute; top: 0; width: 100%; display: none;}
.question_container_img .question_box .q_select label{position: absolute; width: 23%;}
.question_container_img .question_box .q_select label:nth-child(1){left: 8%; top: 37.5%;}
.question_container_img .question_box .q_select label:nth-child(2){left: 9%; top: 53%;}
.question_container_img .question_box .q_select label:nth-child(3){left: 9%; top: 69%;}
.question_container_img .question_box .q_select label:nth-child(4){right: 8%; top: 26.5%;}
.question_container_img .question_box .q_select label:nth-child(5){right: 9%; top: 46.5%;}
.question_container_img .question_box .q_select label:nth-child(6){right: 8%; top: 66%;}

/* 신청현황 */
.subscribe .content {border: 1px solid #000 !important; padding: 2% 3% !important;}
.subscribe .content:not(last-child) {margin-bottom: 2%;}
.subscribe .content div {padding: 0.5% 0;}
.subscribe .content .name {font-weight: 700;}

@media screen and (max-width: 500px){
	.form .question {top: 14%;}
	.form .inp {top: 13%;}
	.form .description {font-size: 85%;}
    .remaining-count {font-size: 110%; top: 45%;}
    .db-box .user-info .title {width: 20%;}
}
</style>

<div id="wrap">
    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
                <div class="count-box">
                    <div class="img-area">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/floating.png">
                        <span class="remaining-count">30</span>
                    </div>
                </div>
                <div class="question_container_img relative">
                    <div class="sel_imgs relative">
                        <div class="img-area sel_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_00.jpg"></div>
                        <div class="mark_imgs">
                            <div class="img-area mark_img" data-value="01"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_01.png"></div>
                            <div class="img-area mark_img" data-value="02"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_02.png"></div>
                            <div class="img-area mark_img" data-value="03"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_03.png"></div>
                            <div class="img-area mark_img" data-value="04"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_04.png"></div>
                            <div class="img-area mark_img" data-value="05"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_05.png"></div>
                            <div class="img-area mark_img" data-value="06"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_06.png"></div>
                        </div>
                    </div>
                    <div class="question_box">
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="꺼진 광대" data-value="01"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_01_off.png"></label>
                            <label><input type="radio" name="tadd1" value="볼꺼짐" data-value="02"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_02_off.png"></label>
                            <label><input type="radio" name="tadd1" value="팔자 주름" data-value="03"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_03_off.png"></label>
                            <label><input type="radio" name="tadd1" value="이마주름" data-value="04"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_04_off.png"></label>
                            <label><input type="radio" name="tadd1" value="낮은 콧대" data-value="05"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_05_off.png"></label>
                            <label><input type="radio" name="tadd1" value="턱끝" data-value="06"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_06_off.png"></label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="question_container">
                <div class="formContents">
                    <div class="formGroup">
                        <div class="db-box">
                            <div class="user-info user-name">
                                <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름을 입력해주세요.">
                            </div>
                            <div class="user-info user-age">
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요.">
                            </div>
                            <div class="user-info user-phone">
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요. (-제외)">
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

                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>

                    <div class="description">
                        <div class="description orage-box">
                            <p id="event-period"></p>
                        </div>	
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 : ${resVo.target} </span>
                    </div>
                    
                </div>
            </div>

            <input type="hidden" id="branch" name="branch" value="잠실"/> <!-- 지점 고정값 1/4 -->
			
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
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		
		getComment('1277');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1227');
		});
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
	
    // 신청 인원 카운트다운 기능
    let remainingCount = 30; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 1) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount ); // 새로운 값 표시
        }
    }, 5000); // 5000ms = 5초 간격

	// 설문 이미지 Click 이벤트 수정
	$('input[name="tadd1"]').on('click', function(){    
	    // 모든 이미지 OFF 상태로 변경
	    $('input[name="tadd1"]').each(function() {
	        var img = $(this).parent().children('img');
	        var src = img.attr('src');
	        
	        // src가 존재하는 경우에만 replace 호출
	        if (src && src.includes('_on')) {
	            img.attr('src', src.replace('_on', '_off'));
	        }
	    });

	    // 클릭한 라디오 버튼에 해당하는 이미지 ON으로 변경
	    var selectedImg = $(this).parent().children('img');
	    var selectedSrc = selectedImg.attr('src');

	    // selectedSrc가 존재하는 경우에만 replace 호출
	    if (selectedSrc && selectedSrc.includes('_off')) {
	        selectedImg.attr('src', selectedSrc.replace('_off', '_on'));
	    }

	    // 마크 이미지 변경
	    var selectedValue = $(this).attr('data-value');
	    $('.mark_img').hide(); // 모든 mark_img 숨김
	    $('.mark_img[data-value="'+selectedValue+'"]').fadeIn(); // 선택된 mark_img만 표시
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
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}
		*/


		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
