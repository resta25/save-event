<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
    .page:not(#page-1){display:none;}
    
    #wrap{background-color:#fff;}
    
    .txt{padding: 3% 24%; background-color:#fff;}
    
    .progress{margin: 0 auto; margin-top: 2.5%; font-size: 150%; background-color: #fff; text-align: center; font-size: 1.25rem; font-weight: 700; display:none;}
    .progress span{color:#3226c3;}
    .progress span i{font-style:normal;}
    
    .form .television{width:100%; display:flex; justify-content:center; align-items: center; padding: 0 5%; box-sizing:border-box; gap: 2%;}
    .form .television .screen{width:73%;}
    .form .television .sheet{width: 36%;}
    
    .form .table_box{width: 100%; padding: 0;}
    .form .table_box table{border-spacing:0 0.5rem; border-collapse:separate; margin:0 auto;}
    .form .table_box table tr {display: flex; border-radius:8px; border:1px solid #000; padding: 4.6% 2%;}
    .form .table_box table tr + tr {margin-top: 2%;}
    .form .table_box table td {flex-shrink: 0; line-height: 43px; margin-right: 2%;}
    .form .table_box table td:last-child {width: calc(100% - 23%); }
    .form .table_box table td input {display: block; margin-top: 1px;}
    .form .table_box table th, .form .table_box table td {padding: 0;}
    
    .form .submit{padding:0;}
    .form .submit input[type="image"]{width:100%;}
    
    .form .question_box{text-align: center;}
    .form .question_box .q_select label{width:43%; padding-bottom: 3%;}
    .form .question_box .q_select label img{width:95%;}
    
    .page {padding-top: 2.5%;}
    .page .paging{ margin: 0 auto; padding: 0 5.3%; display: flex; justify-content: center; gap: 2%;}
    .page .paging label{width:48%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
    .page .paging label img{width:100%;}
    .page .paging button a{display:block;}
    
    #page-1 .paging{padding-top:2.5%;}
    .form .agBox {font-size: 150%; margin-bottom: 0;}
    
    .form .formContents{padding:0 0;}
    .form .formContents #page-1 {padding-bottom: 36%;}
    .form .formContents #page-2, .form .formContents #page-3 {padding-bottom: 12.8%;}
    .form .formContents #page-4 {padding-bottom: 19%;}
    
    .form .description p {padding: 3.5% 0 0;}
    
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
    
    @media screen and (max-width: 500px){
        .form .agBox, .progress{font-size:3.75vw;}
        .form .television .sheet {width: 27%;}
        .form .table_box table td{height:2rem; line-height: 2rem; margin-right: 3%;}
        .form .table_box table td:last-child { width: calc(100% - 21%);}
        .form .inp {font-size: 14px; margin-top: -2px;}
    
        .form .formContents .description{font-size:90%; letter-spacing: -1px;}
    }
    
    @media screen and (max-width: 415px){
        .form .table_box table td:last-child { width: calc(100% - 25%);} 
        .form .table_box table td{height:1.35rem; line-height: 1.35rem;}
    }
    
    @media screen and (max-width: 375px){
    }
    
    /* 첫 화면 팝업 */
    .pop-up1, .pop-up2 {position: absolute; top: 20%; left: 50%; transform: translateX(-50%); width: 80%; z-index: 999;}
    .pop-up-box {background: #fff; padding:10% 5%; border-radius: 1.8rem; width: 80%; margin: 40% auto 0;}
    .pop-up-box .img-area {width: 60%; margin: 0 auto;}
    .pop-up-box .button-box {display: flex; align-items: center; justify-content: center; margin-top: 5%;}
    .pop-up-box button {background: none; cursor: pointer;}
    .pop-up-box button img {width: 100%;}
    .hide {display: none;}
    .pop-up2 .pop-up-box button {width: 50%;}
    
    </style>
    <div class="overlay"></div>
    <div class="agreeModalBox">
        <div class="closeBtn">X</div>          
        <div class="newAgreement">
            <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
            <div class="button"><a href="${resVo.agreementUrl}" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;" target="_agreement" target="_blank">개인정보처리방침</a></div>
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
                <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li><br>
                <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
            </ol>
        </div>	
    </div>
    <div id="wrap"> 
        <div class="container">		
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>	    
            <div class="img-area txt"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>	   
            <video id="location" poster="//static.resta.co.kr/event/v_${eventSeq}/poster.jpg" playsinline="" src="//static.resta.co.kr/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
            <p class="progress">설문 진행상황<span> <i>1</i>/3</span></p>
        </div>
    
        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8"> 
    
            <div class="formContents"> 
                <div class="clock-work"></div>
    
                <section class="page" id="page-1">  
                    <div class="agBox">
                        <a href="#" class="btn-agreement">개인정보 처리방침[자세히 보기]</a>
                    </div>
    
                    <p class="paging">
                        <label><input type="radio" class="close" onclick="windowClose()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></input></label>
                        <label><input type="radio" name="agBox" value="Y" class="first" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></input></label>
                    </p>
                </section>
    
                <section class="page" id="page-2">
                    <div class="question_box">
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="30대" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                            <label><input type="radio" name="tadd1" value="40대" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                            <label><input type="radio" name="tadd1" value="50대" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                            <label><input type="radio" name="tadd1" value="60대이상" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                        </div>
                    </div>              
                </section>
    
                <section class="page" id="page-3">
                    <div class="question_box">
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" value="가능한 빨리" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                            <label><input type="radio" name="tadd2" value="2주 이내" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                            <label><input type="radio" name="tadd2" value="1개월 이내" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                            <label><input type="radio" name="tadd2" value="상담 후 결정" onclick="nextPage()"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png"></label>
                        </div>
                    </div>              
                </section>  
    
                <section class="page" id="page-4">
                    <div class="television">
                        <div class="screen">
                            <div class="formGroup">
                                <div class="table_box">
                                    <table>
                                        <tbody><tr>
                                            <td>이름</td>
                                            <td><input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름"></td>                                     
                                        </tr>	
                                        <tr>
                                            <td>연락처</td>
                                            <td><input type="tel" name="phone" id="phone" value="" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처"></td>
                                        </tr>	
                                    </tbody></table>
                                </div>
                            </div>	
                        </div>
                        <div class="sheet">
                            <div class="submit"><input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></div>
                        </div>
                    </div> 			
                    <div class="description">
                        <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </section>
            </div>
                <!-- common input start-->
                <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
                <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
                <input type="hidden" id="site" 			name="site" value="${site}"/>
                <input type="hidden" id="media" 		name="site" value="${media}"/>
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
                <!-- common input end-->
            </form>
        </div>
    
        <div class="container bottom">  
            <!-------- 푸터 없는 랜딩입니다. 복사시 주의 !!!! -------->
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>        
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>      
        </div>
    </div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
    })
            
    // 설문 Click bind
	function nextPage(){
	    var page_num = $('.page:visible').index();
	    var numImg = page_num;        
	    var $section = $('#page-' + page_num).closest('section');

	    setTimeout(function(){
	        $section.hide();
	        $section.next().show();
	    }, 500);

	    $('.progress').show();
	    $('.progress i').text(page_num);
	    $('#location').attr('src', "//static.resta.co.kr/event/v_" + ${eventSeq} + "/video_0" + (page_num + 1) + ".mp4");
	    $('#location').attr('poster', "//static.resta.co.kr/event/v_" + ${eventSeq} + "/poster_0" + (page_num + 1) + ".jpg");
	    setTimeout(function(){ $('#location').trigger('play'); }, 500);   
	}


    document.getElementById("wrap").addEventListener("click", () => {
        var page_num = $('.page:visible').index();
        if(page_num == 1){
            setTimeout(function(){ $('#location').trigger('play'); },500);           
        }  
    }, {once: true})
    
    $('input[name*=tadd]').bind('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    function windowClose() {     
        alert('미동의 시 설문에 참여 하실 수 없습니다.');
    }

    // 개인정보 처리방침 모달창
    $('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
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
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			//, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>