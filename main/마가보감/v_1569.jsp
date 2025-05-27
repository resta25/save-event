<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr'; background: #fff; overflow: hidden;}

/* 상단 카운드박스 */
.count_box {background: #a39078; border-radius: 99rem; padding: 1.075rem 2.625rem; color: #fff; opacity: 0.7; position: absolute; top: 6%;
left: 50%; transform: translateX(-50%); width: max-content; font-size: 1.8438rem;}
.count_box em {color: #ffef85; font-weight: bold; font-style: normal;}
.count_box #count {color: #ffef85; font-weight: bold;}

/* db영역 */
.form .db-box {background: #9d2a55; padding: 2.8125rem 2.75rem 1.9375rem 2.5rem;}
.form .input_row {display: flex; align-items: center; background: #5f132f; margin-bottom: 0.4375rem; padding: 1.1875rem 0 1.4375rem 1.75rem; border-radius: 0.625rem;}
.form .input_row:nth-of-type(4) {align-items: flex-start;}
.form .input_row .title {width: 8.5rem; flex-shrink: 0;}
.form .input_row .title img {width: 100%;}
.form .input_row textarea,
.form .input_row input {font-size: 1.6rem; background: #5f132f; color: #fff; border-radius: 0.5em; padding-left: 2%;}

.form .agBox { margin: 2% auto; color: #fff; font-size: 1.0938rem; margin: 1.125rem auto 1.0625rem}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}
.form .submit {padding: 0 3.375rem; margin-bottom: 1.3125rem;}
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

/* 이벤트기간, 안심문구, 대상 */
.form .description {color: #fff; }
.form .description p,
.form .description span,
.form .description .ad_txt {font-size: 1.0938rem;}

/* 실시간 신청 현황 */
.txtImg {padding: 4.25rem 12.5625rem 1.9375rem;}
.subscribe_container {background: #fff; padding: 0 2rem 3.5625rem;}
.subscribe_container .img-area {width: 40%; margin: 3% auto;}
.subscribe {height: 17.625rem; overflow: hidden; padding: 1.5625rem 4.5625rem; background: #f8f8f8; border-radius: 1.25rem; font-size: 1rem; color: #282828;}
.subscribe_bg {background-color:#1c1c34 ;}
.subscribe .content {display: flex; justify-content: space-between; padding: 0; padding-bottom: 0.75rem; align-items: center; border-bottom: 1px solid #ddd !important; padding-bottom: 0.5625rem; margin-bottom: 0.6875rem;}
.subscribe .content > div {margin-right: 8%; font-size: 1rem; padding: 0;}
.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content .text {text-align: center; font-size: 1rem; width: 6.5625rem; font-weight: bold; border-radius: 1.5rem; background: #ffef82; color: #282828; height: 2rem; line-height: 2rem;}
/* .subscribe .content .text:not(.yellow-bg) {color: #fff;background: #c1c1c1;} */
/* .yellow-bg { color: #fff; background: #e30050;} */


@media screen and (max-width: 430px) {
    .subscribe .content > div {font-size: 1.4rem;}
}

@media screen and (max-width: 395px) {
}

</style>
<!-- swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- swiper -->

<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="<?=$this->landing['agreement_url']?>" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
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
<div id="wrap">
    <div class="container">
        <div class="img-area">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg">
            <div class="count_box">
                <span>
                    <em>선착순 혜택</em>마감까지 <span id="count"></span>명 남았습니다.
                </span>
            </div>
        </div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

            <div class="db-box">
                <div class="formGroup">
                    <div class="input_box">
                        <div class="input_row">
                            <div class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png"></div>
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off">
                        </div>
                        <div class="input_row">
                            <div class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/age_01.png"></div>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" >
                        </div>
                        <div class="input_row">
                            <div class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/number_01.png"></div>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11">
                        </div>
                        <div class="input_row">
                            <div class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/ask_01.png"></div>
                            <textarea name="tadd1" id="tadd1" class="inp" rows="4" autocomplete="off"></textarea>
                        </div>
                    </div>
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox" checked><span>개인 정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="https://ggad01.co.kr/maga/privacy.html" class="btn-agreement" target="_blank" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;" >[자세히 보기]</a>
                </div>
                <div class="submit">
                    <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                </div>

                <div class="description">
                    <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                    <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span id="target">대상 : ${resVo.target}</span>
                </div>
            </div>
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
        </form>
    </div>

    <div class="img-area txtImg"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
    <div class="subscribe_container">
        <div class="subscribe" data-limit="10"></div>
    </div>

    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
        <!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div> -->
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 
    //폰트 사이즈
    function setFontSize(){
        const wrap = document.getElementById('wrap');
        const wrapWidth = wrap.offsetWidth;
    
        // #wrap의 width를 기준으로 font-size 설정
        document.documentElement.style.fontSize = (wrapWidth / 818) * 16 + 'px';
    }
    window.addEventListener('resize', setFontSize);
    setFontSize();

    $(document).ready(function() {
        var count = 30; // 초기 카운트값

        $('#count').text(count); // 시작할 때 초기 숫자 표시

        var countdown = setInterval(function() {
            count--;

            if (count <= 1) {
                count = 1; // 0 아래로 내려가지 않게
                clearInterval(countdown); // 카운트 멈추기
            }

            $('#count').text(count); // 현재 카운트 표시
        }, 3000);
    });

    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지

        getComment('1569');
        $('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
            $('.btn_moreSubscribe').prop('disabled', true);
            e.preventDefault();
            getComment('1569');
        });
    });

    function returnComment(resultData, meoreData){
        var today = new Date();   
            var month = today.getMonth() + 1;
            var dateNum;
        $('.subscribe').each(function(idx,obj) {
            var data = resultData;
            
            for(v in data) {
                var statusText = '신청완료'
                var backgroundClass = statusText === '신청완료' ? 'color-bg' : '';
                var html  = '<div class="content" data-id="'+ data[v].seq +'">';
	                html += '	<div class="name">'+ data[v].name +'</div>';
	                html += '	<div class="phone">' + data[v].phone +'</div>'
	                // html += '	<div class="msg">'+ data[v].msg +'</div>';
	                html += '    <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
	                html += '	<div class="date">'+ data[v].regDate +'</div>';
	                html += '</div>';
                $(obj).append(html);
            }
        });
    }

    setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('textarea[name="tadd1"]').value;
        procForm.querySelector("input[name='add1']").value = selectedRadio1;
		
		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			//,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>