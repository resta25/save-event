<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {font-family: "Noto Sans KR", sans-serif; height: 100%; overflow: hidden; max-width: 615px;}
.hide {display: none;}
.container {position: relative;}
.form .inner {position: absolute; top: 1%; left: 50%; transform: translateX(-50%); width: 85%;}
.form .inner .count_box {text-align: center; background: #0c2070; color: #fff; font-size: 1.2rem; padding: 1% 5%; margin: 0 auto 5%; border-radius: 1.5rem; width: max-content;}
.form .inner .count_box #eventCnt {color: #ffe400;}

/* 첫번째 페이지 */
.form .sel_img {position: relative;}
.form .sel_img .pop_img {position: absolute; top: 5%; left: 50%; transform: translateX(-50%);}

/* 설문 영역 */
.form .question_box .q_select label {position: absolute; width: 16%; cursor: pointer;}
.form .question_box .q_select label img {width: 100%;}
/* .form .question_box .q_select label:nth-child(1){ top: 24%; right:28%;} */
/* .form .question_box .q_select label:nth-child(2){ top: 38%; right: 20%;} */
.form .question_box .q_select label:nth-child(1){ top: 45%; right: 16%; width: 20%;}
.form .question_box .q_select label:nth-child(2){ top: 52%; right: 16%; width: 20%;}
.form .question_box .q_select label:nth-child(3){ top: 48%; left: 15%;}
.form .question_box .q_select label:nth-child(4){ bottom: 38%; left: 15%; width: 18%;}
.form .question_box .q_select label:nth-child(5){ bottom: 29%; left: 23%; width: 18%;}
.form .question_box .q_select label:nth-child(6){ bottom: 26%; right: 18%; width: 18%;}
/* next-btn */
.form .next_btn {width: 40%; position: absolute; bottom: 2%; left: 50%; transform: translateX(-50%); cursor: pointer;}
.form .next_btn img {width: 100%;}

/* 두번째 페이지 */
.form #location {width: 100%;}

/* 세번째 페이지 */
.form .section03 {padding: 0 10%; background: #f0f3fc;}
.form .section03 .img-area {padding: 3% 0;}
.form .section03 .question {font-weight: 600; font-size: 120%;}
.form .section03 select {padding: 1.5%; width: 100%; font-weight: 700; font-size: 120%; border: 1px solid #000; border-radius: 0.4rem; margin: 1% 0 3%; appearance: none; background-image: url("//static.resta.co.kr/event/v_${eventSeq}/arrow.png"); background-repeat: no-repeat; background-position: right 15px center;; background-size: 1rem; padding-right: 10%; cursor: pointer;}
/* 이름, 나이, 연락처 칸 */
.db_box .input_row {display: flex; gap: 1%; width: 100%; margin-bottom: 1%;}
.db_box .user_info {background: #dadde5; border-radius: 0.4rem; padding: 1% 0 1% 3%; width: calc(100% / 2);}
.db_box .user_info.phone {width: 97%;}
.db_box .user_info .title {font-size: 90%; font-weight: 700;}
.db_box .user_info input {height: auto; font-size: 100%; padding: 2% 0;}

/* 개인정보처리방침 */
.form .agBox {margin: 2% auto;}

/* 이벤트기간, 안심문구, 대상 */
.form .description {padding-bottom: 3%;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 70%; font-weight: 400;}

/* 신청자 현황 */
.form .subscribe {display: none;}

.form .submit {width: 70%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

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

@media screen and (max-width: 480px){
    .form .inner .count_box {font-size: 1rem; margin: 0 auto 3%;}
    .form .section03 select {font-size: 110%; background-size: 0.7rem;}
}

@media screen and (max-width: 390px){
    .form .inner .count_box {padding: 1% 7%; font-size: 0.9rem;}
    .form .section03 {padding: 0 5%;}
    .form .section03 select {font-size: 100%;}
}
</style>
<!-- 개인정보처리방침 모달창 -->
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
            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
    </div>
</div>
<div id="wrap">
    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="container">
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
            <div class="inner">
                <div class="count_box">현재까지 <span id="eventCnt"></span>명 참여했습니다.</div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
            </div>

            <section class="section section01" id="page-1">
                <div class="sel_img">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
                    <div class="img-area pop_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.gif"></div>

                    <div class="question_box">
                        <div class="q_select">
                            <label><input type="checkbox" name="add1[]" value="팔자주름" data-value="01"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="checkbox" name="add1[]" value="입가주름" data-value="02"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                            <label><input type="checkbox" name="add1[]" value="볼살" data-value="03"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                            <label><input type="checkbox" name="add1[]" value="심불보" data-value="04"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                            <label><input type="checkbox" name="add1[]" value="턱라인" data-value="05"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                            <label><input type="checkbox" name="add1[]" value="목" data-value="06"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png"></label>
                        </div>
                    </div>
                    <div class="next_btn" onclick="pageFun()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_off_01.png"></div>
                </div>
            </section>

            <section class="section section02 hide" id="page-2">
                <video id="location" playsinline="" muted="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
            </section>

            <section class="section section03 hide" id="page-3">
                <div class="img-area result_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_01.png"></div>
                <div class="img-area result"><img src="//static.resta.co.kr/event/v_${eventSeq}/result_img_01.png"></div>

                <div class="select_box">
                    <div class="question">* 희망 시술</div>
                    <select name="tadd2">
                        <option data-value="01" value="[49% 할인 적용] 투명 V리프팅 19.9만원(줄당)">[49% 할인 적용] 투명 V리프팅 19.9만원(줄당)</option>
                        <option data-value="02" value="[49% 할인 적용] 투명 미니리프팅 69만원">[49% 할인 적용] 투명 미니리프팅 69만원</option>
                        <option data-value="03" value="[최대 할인] 미니 거상 300만원">[최대 할인] 미니 거상 300만원</option>
                        <option data-value="04" value="[최대 할인] 안면 풀거상 600만원">[최대 할인] 안면 풀거상 600만원</option>
                    </select>
                </div>
                <div class="db_box">
                    <div class="input_row">
                        <div class="user_info name">
                            <span class="title">이름</span>
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off">
                        </div>
                        <div class="user_info age">
                            <span class="title">나이</span>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2">
                        </div>
                    </div>
                    <div class="user_info phone">
                        <span class="title">전화번호</span>
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11">
                    </div>
                </div>

                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용 동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                </div>

                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png" /></div>

                <div class="description">
                    <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <p id="event-period"></p>
                    <span>대상 : ${resVo.target} </span>
                </div>
            </section>
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
	//상담 이벤트 종료시간
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		eventCount('1322');
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
			dateNum = (data[v].regDate.substr(0, 2));
			if(month == dateNum){ 
				$(obj).append(html);
			}
			if(meoreData > 10) {
				$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
			}
		});
	}
		
    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    // 설문 이미지 Click 이벤트
    $('input[name="add1[]"]').on('change', function(){	
        // 현재 상태에 따라 해당 이미지를 ON/OFF 상태로 변경
        var selectedImg = $(this).parent().children('img');
        if ($(this).prop('checked')) {
            // 체크된 경우 -> 이미지 ON
            selectedImg.attr('src', selectedImg.attr('src').replace('_off', '_on'));
            displayChecked(name);
        } else {
            // 체크 해제된 경우 -> 이미지 OFF
            selectedImg.attr('src', selectedImg.attr('src').replace('_on', '_off'));
            displayChecked(name);
        }
    });

    // 선택 값 출력
        function displayChecked(name) {
        const checkboxes = $(`input[name="${name}"]`);
        $('input[name="add1[]"]').on('change', function() {
        // 선택된 체크박스들의 value 값 배열로 가져오기
            checkedValues = $('input[name="add1[]"]:checked').map(function() {
                return $(this).val();
            }).get();

            // 선택된 체크박스가 2개 이상이면
            if (checkedValues.length > 2) {
                // 경고창 띄우기
                alert("최대 2개까지 선택할 수 있습니다.");

                // 마지막에 체크된 체크박스를 해제
                event.preventDefault();
                $(this).prop('checked', false);
                var selectedImg = $(this).parent().children('img');
                selectedImg.attr('src',  selectedImg.attr('src').replace('_on', '_off'));
            }

            // 2개 선택시 submit on/off
            let $imgSrc = $('.next_btn img');
            let currentSrc = $imgSrc.attr('src'); // 현재 이미지 경로 가져오기
            if(checkedValues.length == 2){
                $imgSrc.attr('src', currentSrc.replace('_off', '_on')); // ON
            } else {
                $imgSrc.attr('src', currentSrc.replace('_on', '_off')); // OFF
            }
        });
    }

    // checkbox 2개까지 선택
    function count_check(obj) {
        // 선택된 값 배열 가져오기 (여기서 다시 업데이트)
        let selectedValues = obj.map(function() {
            return $(this).data('value'); // data-value 속성 가져오기
        }).get(); // jQuery 객체 → 배열 변환

        // 선택된 값을 정렬하여 key 값 생성 (순서와 상관없이 동일한 조합 처리)
        selectedValues.sort(); 
        let key = selectedValues.join('-'); // '01-02' 같은 형식으로 조합

        // 선택된 조합에 따른 결과 이미지 변경
        let $resultImg = $('.result_img img');
        let $result = $('.result img');
        let selected = document.querySelectorAll('select option')
        switch (key) {
            case "01-03":
            case "03-04":
            case "02-03":
            case "01-04":
            case "01-02":
            case "02-04":

            $resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_02.png'); //투명 미니리프팅
            $result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_02.png'); //투명 미니리프팅
            selected[1].selected = true;

            break;

        default:
            $resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_01.png'); // 기본 이미지 v리프팅
            $result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_01.png'); // 기본 이미지 v리프팅
            selected[0].selected = true;
            
            break;
        }
    }

    //select에 따른 이미지변경
    $('select').change(function() {
        let selectedOption = $(this).find(':selected');
        let selectedValue = selectedOption.data('vlaue');
        let result = $('.result img');
        let resultImg = $('.result_img img');
        
        switch (selectedValue) {
            case "01":
                resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_01.png'); 
                result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_01.png'); 
                break;
            case "02":
                resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_02.png'); 
                result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_02.png'); 
                break;
            case "03":
                resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_03.png'); 
                result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_03.png'); 
                break;
            case "04":
                resultImg.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_04.png'); 
                result.attr('src', '//static.resta.co.kr/event/v_${eventSeq}/result_img_04.png'); 
                break;
            }
    })
    

    // 페이지 이동 함수
    function pageFun() {
        var page_num = $('.section:visible').index() -1;
        var $section = $('#page-'+page_num).closest('section'); //현재 페이지
        let checkedInputs = $('input[name="add1[]"]:checked'); // 체크된 요소들
        let chkCnt = checkedInputs.length; // 선택된 개수 가져오기
        count_check(checkedInputs)
        if (chkCnt == 2) {
            setTimeout(function(){
                $section.hide();
                $section.next().show();
                $('#location').trigger('play');

                setTimeout(function(){
                    var $nextSection = $('#page-2').closest('section');
                    $nextSection.hide()
                    $nextSection.next().show()
                },3500)
            },500)
        }
    }

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
			
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
		
		let selectedRadio2 = procForm.querySelector('select[name="tadd2"] option:checked');
		if (!selectedRadio2) {
		    alert("희망 시술 항목을 선택해주세요.");
		    return;
		} else {
		    procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
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
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};

		validateForm(procForm, required);
	}
</script>
