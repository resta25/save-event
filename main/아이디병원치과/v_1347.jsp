<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    button{background-color: transparent; padding: 0;}
    input{font-family: 'Noto Sans KR', sans-serif;}
    .img-area img {margin:0;}

    /* 공통 */
    #wrap{min-height:100vh; background-color:#fdfdff; font-family: 'Noto Sans KR', sans-serif;}
    .form{background-color: transparent;}
    .page:not(#page-1){display:none;}
    .pointColor{color: #ff3c00;}


    /* 질문 공통 */
    .question_box .text{padding:6% 10%; line-height: 1.5; letter-spacing: -1px; color: #32354a; font-size: 200%;}
    .question_box .text span:first-child{display: inline-block; padding:0 0 5%; font-weight: 700; color: #0052ff;}
    .question_box .text span:not(:first-child){display: block; word-break: keep-all;}
    .question_box .q_select{display: grid; grid-template-columns: 1fr 1fr; padding: 0 10%;}
    .question_box .q_select label{margin: 2%;}
    .question_box .q_select label img{width: 100%;}

    /* daily-count */
    /*.front-content{position: relative;}*/
    /*.front-content .daily-count{position: absolute; top: 5%; z-index: 1; width: 100%; margin: 0; padding: 0 2%; text-align: center; color: #fff; font-size: clamp(11px, 3vmin, 35px); letter-spacing: -1px; box-sizing: border-box;}*/
    /*.front-content .daily-count strong{color: #95faff;}*/

    /* 1페이지 */
    #page-1 .paging{padding: 0 0 10%;}
    #page-1 .question_box .text span:first-child{padding: 0 0 1%;}
    #page-1 .question_box .answer{width: 80%; margin: 0 auto; padding: 2% 0 5%;}
    #page-1 .question_box .answer .question{font-size: 150%; margin: 0 0 2%; font-weight: 700;}
    #page-1 .question_box .answer .inputBox input{padding:2%; background-color: #fff; border-radius: 0.5em; border: 1px solid #0048ff; font-size: 140%;}
    #page-1 .question_box .answer .inputBox input::placeholder{color: #999999;}

    /* 4페이지 */
    #page-4 .question_box .text {padding-bottom:0;}
    /* 페이징 영역 */
    .page:not(#page-1) .paging{padding: 2% 0 0;}
    .paging{margin: 0; text-align: center;}
    .paging img{width: 100%;}
    .paging .next{width: 80%; cursor: pointer;}
    .paging .agree{width: 80%; cursor: pointer;}

    /* db단 */
    .form .table_box {width:80%;}
    .form .table_box table{border-collapse: separate; border-spacing: 0 10px;}
    .form .table_box table tr td{background-color: #fff; border: 2px solid #0048ff;}
    .form .table_box table tr td .inp{padding: 0 0 0 5%; text-align: left;}

    /* 이벤트 기간, 안심문구, 대상 관련 */
    .form .description{width:80%;padding: 2% 0; text-align-last: left;}
    .form .description p{font-weight: 700; color: #004aff;}

    /* cta버튼 */
    .form .submit{width: 80%; margin: 0 auto 2%;}
    .form .submit input[type="image"]{width: 100%;}

    .bottom-content > .img-area{padding: 10vmin 0 0;}

    /* 실시간 신청자 현황 카톡 알림 스타일 */
    .subscribe_chat_box{position: relative; display: flex; justify-content: flex-end; padding: 10% 5% 10%;}
    .subscribe_chat_box .number{display: flex; justify-content: center; align-items: center; width: 30px; height: 30px;margin-right:10px;background-color: #ffe586; border-radius: 50%; color: #004dff; font-size: 100%; font-weight: 700;}
    .subscribe_chat_box .pushAlarm{position: absolute; bottom:50%; width:55%; height: auto; padding:2% 6%; background-color: #004dff !important; border-radius: 0.7em 0 0.7em 0; opacity: 1 !important; font-size:130%; line-height: 1.2; color: #ffffff !important; font-weight: normal;}
    .pushAlarm-inner {display: flex; justify-content: center; align-items: center;}

    @media screen and (max-width: 768px) {
        .subscribe_chat_box .pushAlarm{width:50%;font-size:100% !important;}
    }
    @media screen and (max-width: 640px){
        .form .table_box{width: 80%;}
        .subscribe_chat_box .pushAlarm{width:65%;font-size:100% !important;}

    }
    @media screen and (max-width: 500px){
        .question_box .text {font-size:155%;line-height:1.3;}
        .page:not(#page-1) .paging{padding: 2% 0 5%;}
        .form .description{width: 80%; font-size: 85%;}
        .bottom-content > .img-area{padding: 30vmin 0 0;} /* 모바일 사이즈에서 고지문구 하단쪽에 위치하게 */
        .subscribe_chat_box .pushAlarm{width:70%;font-size:100% !important;}  /* 실시간 신청자 현황 카톡 알림 스타일 */
        .subscribe_chat_box .number{width: 25px; height: 25px; font-size: 85%;} /* 실시간 신청자 현황 카톡 알림 스타일 */
        #page-1 .question_box .answer .inputBox input {font-size:130%;}
    }

    @media screen and (max-width: 415px){
        .subscribe_chat_box .pushAlarm{bottom:60%;}  /* 실시간 신청자 현황 카톡 알림 스타일 */
        .subscribe_chat_box .number{width: 18px; height: 18px; font-size: 85%;;} /* 실시간 신청자 현황 카톡 알림 스타일 */
    }

    @media screen and (max-width: 375px){
        .subscribe_chat_box{padding: 5% 5% 25%;} /* 실시간 신청자 현황 카톡 알림 스타일 */
    }
	.subscribe {display:none;}
</style>
<!-- //INCLUDES -->
<link rel="preconnect" href="https://fonts.googleapis.com"> <!-- 구글폰트 Noto Sans -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- 구글폰트 Noto Sans -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> <!-- 구글폰트 Noto Sans -->
<!-- INCLUDES// -->

<!-- // PUSH_ALARM -->
<script src="//static.resta.co.kr/libs/pushAlarm/pushAlarm.js"></script>
<link rel="stylesheet" href="//static.resta.co.kr/libs/pushAlarm/pushAlarm.css">
<!-- PUSH_ALARM // -->

<div id="wrap">
    <div class="container front-content">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

            <div class="formContents">
                <section class="page" id="page-1">
                    <div class="question_box">
                        <div class="text">
                            <span>이름을 입력해주시면</span>
                            <span><b class="pointColor">임플란트 혜택</b>을 안내 해드릴께요!</span>
                        </div>
                        <div class="answer">
                            <div class="question">혜택 받으실 분</div>
                            <div class="inputBox"><input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/></div>
                        </div>
                    </div>
                    <div class="paging">
                        <button type="button" class="next"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></button>
                    </div>
                </section>

                <section class="page" id="page-2">
                    <div class="question_box">
                        <div class="text">
                            <span class="namePrintBox">000님 안녕하세요!</span>
                            <span>
                            <b class="pointColor">29만원</b>으로 <br>
                            <b class="pointColor">임플란트</b>를 도와드립니다.<br>
                            개인 정보 처리 방침에 동의하시나요?
                        </span>
                        </div>
                    </div>

                    <div class="agBox">
                        <a href="javascript:void(0);" class="btn-agreement">개인정보 처리방침[자세히 보기]</a>
                    </div>
                    <div class="agreement">
                        <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
                        <h3>개인정보 수집 및 이용 동의</h3>
                        <ol>
                            <li>개인정보 수집주체 : ${resVo.agent}</li>
                            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
                            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
                            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>
                    <div class="paging">
                    <label>
                        <input type="checkbox" name="agBox" value="동의" class="first"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></input>
                    </label>
                        <!-- <button type="button" class="agree"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></button> -->
                    </div>
                </section>

                <section class="page" id="page-3">
                    <div class="question_box">
                        <div class="text">
                            <span class="namePrintBox">000님</span>
                            <span>
                            임플란트 시술 시<br>
                            <b class="pointColor">무엇을 중요하게 생각하시나요?</b>
                        </span>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="비용"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                            <label><input type="radio" name="tadd1" value="위치"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                            <label><input type="radio" name="tadd1" value="통증"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                        </div>
                    </div>
                    <div class="paging">
                        <button type="button" class="next"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></button>
                    </div>
                </section>

                <section class="page" id="page-4">
                    <div class="question_box">
                        <div class="text">
                            <span class="namePrintBox">000님</span>
                            <span>연락처 입력 후 <b class="pointColor">혜택</b>을 받아보세요.</span>
                        </div>
                    </div>
                    <div class="formGroup">
                        <div class="table_box rowRadius noHaveLabel">
                            <table>
                                <tr>
                                    <td><input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="submit" onclick="fnForm('form-1')"><input type="image" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" /></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 :  ${resVo.target}</span>
                    </div>
                </section>
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
	<!-- 알람기능 -->
	<div class="container bottom-content">
	    <div class="subscribe_chat_box"></div>
	</div>
	<div class="subscribe" data-limit="10"></div>
	
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

	$(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()

		getComment('1347');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1347');
		});
    })

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
	
			for(v in resultData) {
				console.log()
				$('.subscribe_chat_box').append('<div class="pushAlarm animate__animated animate__fadeInUp"><div class="pushAlarm-inner"><div class="number">1</div><b>지금 <span class="highlight">'+data[v].name+'님</span>이 혜택을 신청하셨습니다.</b></div></div>');
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			
			$('.pushAlarm').pushAlarm({
				speed : 3000,
				animate_speed : 0.2,
				animate : 'animate__zoomIn',
				highlight : '#00ffff'
			});
		});
	}

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
        }, 300);
    }

    // 페이지 경우의 수에 따른 클릭 이벤트
    $('button.next, .first').on('click', function(){
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

    function windowClose() {
        alert('미동의 시 설문에 참여 하실 수 없습니다.');
    }

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
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
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			//, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>