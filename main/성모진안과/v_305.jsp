<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-4Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
    }
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-5Medium.woff2') format('woff2');
        font-weight: 500;
        font-style: normal;
    }
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-6SemiBold.woff2') format('woff2');
        font-weight: 600;
        font-style: normal;
    }
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-7Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }
* {font-family: 'Paperlogy';}
.page:not(#page-1) {display:none;}
#wrap{background:#ffffff; max-width: 1080px;}
.form, .form .formContents{background-color:#ffffff;}
/* .page:not(#page-1) {width: 100%; margin: 0 auto; padding: 5% 7.5% 0; background-color: #ededed;} */
.page#page-4 {padding-bottom: 5%;}
.notice-area {border-top: 1px solid #a69e9e;}

.poster_01 {position: relative;}
.poster_01 .img-area:nth-child(1) {position: absolute; top: 6.637%; left: 50%; transform: translateX(-50%); width: 64.629629%;}

/* 초기화 css */
#page_landing_c main {max-width: unset;}
.form input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}
.btn_submit {background: none; background-color: transparent !important;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {
    height: auto;
    padding: 0;
}
input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}


/* 룰렛 영역 */
.roulette image {width: 100%;}
.count_box {width: 15%; text-align: center; font-size: 2.8rem; color: #fff; position: absolute; top: 20.5%; left: 57.2%; transform: translateX(-50%);}
.count {color: #f0ff00; font-size: 2.75rem; font-family: 'Paperlogy'; font-weight: 600;}

/* 시침, 초침 */
.container {position: relative;}

.page .paging {padding: 0 14.87% 3%;; margin: 0 auto; display: flex; justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
/* .page .paging button {position: relative; width: 100%; height: 148px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;} */
/* .page .paging button img {width: 63.37% !important; margin: 3.5% auto 0; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;} */
.page .paging button a {display:block;}

#page-1 {position: relative;}
#page-1 .paging {margin-top: 6.7%; column-gap: 45px;}
/* #page-1 .paging{position: absolute; bottom: 13%; left: 50%; transform: translateX(-50%); padding: 0; width: 69.26%;} */

#page-1 .poster_02 {position: relative; padding-top: 58.14814%; padding-bottom: 11.38889%; background: url(//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg) no-repeat center top / 100% 100%;}

.page:not(#page-1) {position: relative; background-color: #10019a; padding: 7.408% 7.778%;}
#page-2 .inner {padding: 0 9.102%; padding-top: 6.645%; padding-bottom: 8.715%; background: url(//static.savemkt.com/event/v_${eventSeq}/event_main_04.png) no-repeat center top / 100% 100%;}
/* #page-2 .paging {padding: 0 14.87% 3%;} */
#page-2 .poster_04 {margin: 6.506% 0 10%;}
.page .question_box {margin-bottom: 0;}
.page .question_box .q_select {display: flex; flex-direction: row; column-gap: 48px;}
.page .question_box .q_select label {padding: 0; border: none; background: #fff; margin-bottom: 0;}

#page-2.page .paging button,
#page-3.page .paging button {background-image: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_01.png')}
#page-2.page .paging button img,
#page-3.page .paging button img {width: 55% !important; margin: 0; margin-left: auto; margin-right: 3%;}

#page-3 .poster_06 {margin: 6.506% 0 10%;}
#page-3 .inner {padding: 0 9.102%; padding-top: 6.645%; padding-bottom: 8.715%; background: url(//static.savemkt.com/event/v_${eventSeq}/event_main_04.png) no-repeat center top / 100% 100%;}

#page-4 .inner {padding: 0 9.102%; padding-top: 6.645%; padding-bottom: 8.715%; background: url(//static.savemkt.com/event/v_${eventSeq}/event_main_05.png) no-repeat center top / 100% 100%;}
.form-box {margin-top: 10%;}
#wrap .formContents {position: static;}
.form .formContents .description {display: flex; align-items: center; justify-content: center; column-gap: 15px; background-color: #b7b8bb; padding: 2% 1%;}
.form .formContents .description * {font-size: 135%; font-family: 'Paperlogy'; font-weight: 500;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .question_box {text-align: center; padding: 0; margin-bottom: 5%;}
/* .form .question_box .q_select {display: flex; flex-direction: column; font-size: 150%;} */
/* .form .question_box .q_select label{width:100%; padding: 4% 0 3.5%; border: 1px solid #092b7b; cursor:pointer; background: #fff;  border-radius: 2rem; font-size: 200%; font-weight: 500; font-family: 'Paperlogy';} */
/* .form .question_box .q_select label.on{background: #efefef;} */
/* .form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
.form .question_box .q_select label img{width:95%;} */

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
.form .table_box input {background: #fff; text-align: center; border-radius: 2rem; font-size: 2.8rem; border: 1px solid #092b7b; width: 100%; padding: 1.5rem 2rem; font-family: 'Paperlogy'; font-weight: 500; text-align: center;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); font-family: 'Paperlogy'; font-weight: 500;}

.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {}

/* 개인정보 처리방침 */
.agBox {display: flex; align-items: center; justify-content: center; column-gap: 0.5rem; font-family: 'Paperlogy'; font-weight: 500; font-size: 1.4rem; line-height: 1;}
.agBox label {display: flex; align-items: center; column-gap: 0.5rem;}
.btn-agreement {flex-shrink: 0; text-align: center; font-size: 170%; display: block; color: #000; font-family: 'Paperlogy'; font-weight: 500;}
.btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Paperlogy';}

.sub_txt {text-align: center;}

.form .submit {display: flex; align-items: center; justify-content: center; margin: 1em auto 0; padding: 0;}
.form .submit {position: relative; width: 82%; height: 154px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 7.15% auto 4%; padding: 0% 0;}
.form .submit input[type="image"] {
    width: 53% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}

/* 거주자 팝업 */
.overlay {
    z-index: 998;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
}
[class^="popup-"] {
    z-index: 999;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 786px;
    height: max-content;
    margin: 0;
    padding: 50px 70px;
    font-size: 150%;
    background-color: #fff;
    border-radius: 25px;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    opacity: 1;
    visibility: visible;
}
[class^="popup-"] p,
[class^="popup-"] span {
    text-align: center;
    font-size: 250%;
    font-weight: 700;
    font-family: 'Paperlogy';
}
[class^="popup-"] strong {
    color: #ff0000;
    font-weight: 700;
    font-family: 'Paperlogy';
}
[class^="popup-"] .btn-box {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 1rem;
    margin-top: 5%;
    font-size: 150%;
}
[class^="popup-"] .btn-box button {
    background-color: #0a2f85;
    color: #fff;
    width: 192px;
    height: 77px;
    padding-top: 1%;
    font-size: 125%;
    line-height: 1;
    font-weight: 400;
    border-radius: 0.5rem;
    font-family: 'Paperlogy';
    background: url('//static.savemkt.com/event/v_${eventSeq}/btn_confirm.png') no-repeat center center / 100% 100%;
}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

/* font */
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@media screen and (max-width: 786px) {
    #page-1 .paging {margin-top: 1.7%; column-gap: 13px;}
    .page .question_box .q_select {column-gap: 13px;}
    .agBox {padding-bottom: 2.5%;}
    .form .table_box {border-radius: 9px;}
    #page_landing_c .form .table_box input {padding: 1rem; font-size: 1.4rem; border-radius: 1rem;}
    .count_box {top: 18.5%; left: 57.5%;}
    .count_box, .count {font-size: 2.2rem;}
    .page .paging button {height: 52px;}
    .form .submit {height: 53px;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%; padding: 30px 50px 20px;}


    .form .formContents .description * {font-size: 95%;}
}
@media screen and (max-width: 500px){
    /* .roulette {padding: 4% 9.5% 4.19%;} */
    .count_box, .count {font-size: 1rem;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}
    .form .footer_01 .description p,
    .form .footer_01 .description .ad_txt,
    .form .footer_01 .description span {font-size: 70%;}
    .form .footer_02 .description p,
    .form .footer_02 .description .ad_txt,
    .form .footer_02 .description span {font-size: 70%;}
    .form .question_box .q_select label {font-size: 1.45rem; border-radius: 1rem;}
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
    .form-box .description {padding-bottom: 4%;}
    .form .video-area {border-width: 4px;}
    .form .video-area::after {bottom: 8px; right: 8px;}
    [class^="popup-"] .btn-box button {width: 95px; height: 40px;}

    #page-4 .inner {padding: 0 9.102%; padding-top: 7.645%; padding-bottom: 5.715%;}
    .form .submit {margin: 7.15% auto 6%;}
    .form .formContents .description * {font-size: 70%;}

    .sub_txt {font-size: 90%;}
}
    
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>
<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap">
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
                    <div class="poster_01">
                        <div class="img-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png">
                            <div class="count_box"><span class="count"></span></div>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
                    </div>
                    <div class="formContents"> 
                        <section class="page" id="page-1">
                            <div class="poster_02">
                                <div class="agBox">
                                    <a href="javascript:void(0);" class="btn-agreement"><strong>혜택 제공</strong>을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
                                </div>
                                <p class="paging">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_agree.png"></button>
                                    <button type="button" onclick="alert('미동의 시 설문에 참여 하실 수 없습니다.');" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_disagree.png"></button>
                                </p>
                            </div>
                        </section>
            
                        <section class="page" id="page-2">
                            <div class="inner">
                                <div class="img-area poster_03"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png"></div>
                                <div class="img-area poster_04"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="네"><img src="//static.savemkt.com/event/v_${eventSeq}/select_01.png"></label>
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="아니오"><img src="//static.savemkt.com/event/v_${eventSeq}/select_02.png"></label>
                                    </div>
                                </div>
                                <!-- <p class="paging">
                                    <button type="button" onclick="pageSelFuc(4,$(this))" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png"></button>
                                </p> -->
                            </div>
                        </section>
                        <section class="page" id="page-3">
                            <div class="inner">
                                <div class="img-area poster_05"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png"></div>
                                <div class="img-area poster_06"><img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png"></div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="서울, 수도권"><img src="//static.savemkt.com/event/v_${eventSeq}/select_03.png"></label>
                                        <label><input type="radio" onclick="pageFuc(3,$(this))" name="tadd2" value="그 외 지역"><img src="//static.savemkt.com/event/v_${eventSeq}/select_04.png"></label>
                                    </div>
                                </div>
                                <!-- <p class="paging">
                                    <button type="button" onclick="pageSelFuc(4,$(this))" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png"></button>
                                </p> -->
                            </div>
                        </section>
            
                        <section class="page" id="page-4">
                            <div class="inner">
                                <div class="img-area poster_09"><img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png"></div>
                                <div class="img-area poster_10" style="margin-top: 5%;"><img src="//static.savemkt.com/event/v_${eventSeq}/q_03.png"></div>
                                <div class="form-box poster_11">
                                    <div class="formGroup">
                                        <div class="table_box top">
                                            <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                        </div>
                                        <div class="table_box middle">
                                            <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                                        </div>
                                        <div class="table_box bottom">
                                            <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                        </div>
                                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" /></div>
                                    </div>
                                    <p class="sub_txt">
                                        안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br /> 상담 외 어떠한 목적으로도 사용하지 않습니다. 
                                    </p>
                                </div>
                                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer_02.jpg"></div> -->
                            </div>
                        </section>

                        <div class="overlay"></div>
                        <div class="popup-confirm">
                            <div class="img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/popup_txt.png">
                            </div>
                            <div class="btn-box">
                                <button type="button" class="btn-confirm"></button>
                            </div>
                        </div>

                        <!-- 개인정보처리방침 전문 -->
                        <div id="modal2" class="modal modal2" style="display: none;">
                            <div class="modal-content">
                                <span class="close" id="close">×</span>
                                <p>
                                    개인정보처리방침<br><br>
                                    병원 제휴의 요청 개인정보 수집 및 이용 동의<br><br>

                                    [개인정보 수집 및 이용 동의]<br><br>

                                    - 수집 · 이용 주체 : 이벤트 신청<br>
                                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br>
                                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br>
                                    - 보유 및 이용 기간 : 의료법 등 관련 병령에서 정한 보존 기간<br><br>

                                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.<br>
                                    * 고객 동의 철회 시 지체없이 파기합니다.<br><br>


                                    [개인정보 처리위탁 동의]<br><br>

                                    - 수탁자 : 병원 제휴의 요청<br>
                                    - 위탁 업무 내용<br>
                                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br>
                                    └ 고객정보 서버 운영 및 관리<br>
                                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br>
                                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br>
                                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                                </p>
                            </div>
                        </div>
                        <div class="description">
                            <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <span id="target">대상자 : ${resVo.target}</span>
                        </div>
                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>	 -->
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
            
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
            <div class="container">
                <div class="img-area notice-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    history.scrollRestoration = 'manual';

    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        jineyeAgreement();

        $('.overlay').hide();
        $('.popup-confirm').hide();

	});

    $('input[name="tadd2"]').on('change', function () {
        if ($(this).val() === "그 외 지역") {
            $('.overlay, .popup-confirm').show();
        }
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function () {
        $('.overlay, .popup-confirm').hide();

    //     // ✅ 선택 초기화
        $('input[name="tadd2"]').prop('checked', false);
    //     $('.q_select label').removeClass('on');
    });


    function resetPage1() {
        // page-1 자체
        gsap.set('#page-1', { display: 'block', opacity: 1 });

        // 내부 요소들 원위치
        gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .agBox', {
            x: 0,
            y: 0,
            opacity: 1,
            clearProps: 'transform'
        });
    }


    // 개인정보 처리방침 관련 이벤트
    var modal2 = document.getElementById("modal2");
    var agree = document.querySelector(".agBox .btn-agreement");
    var close2 = document.getElementById("close");
    agree.onclick = function () { modal2.style.display = "block"; }
    close2.onclick = function () { modal2.style.display = "none"; }

    let isAnimating = false; // 애니메이션 상태 플래그

    let currentPage = 1;
    let count = 49; // 초기 인원 수

    // 첫번째 페이지
    function show1pg(){
        currentPage = 1;  // ⭐ 추가
        count = 49;       // ⭐ 추가

        const animation01 = gsap.timeline();
        animation01.from('.poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .agBox', { y: +50, delay: 0.8, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        history.scrollRestoration = 'manual';

        currentPage = 2;   // ⭐ 추가
        count = 13;        // ⭐ 추가

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });

        const isMobile = window.matchMedia("(max-width: 768px)").matches;

        // animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        // animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
        animation02.from('#page-2 .paging', {x: +200, opacity: 0, delay: 0.2, duration: 0.2});
    }

    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .paging', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .paging', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        // animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }
    // 마지막 페이지
    function show4pg() {
        history.scrollRestoration = 'manual';

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
            isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        // animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        // animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3 .poster_05', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .question_box .q_select > label', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .paging', {x: -100, opacity: 0});
        // animation03.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-3', { display: 'none' });
        animation03.to('#page-4', { display: 'block', duration: 0.1 });
        animation03.from('#page-4 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
    }

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"]').bind('click', function() {
        $(this).closest('.q_select').find('label').removeClass('on');			
        $(this.parentNode).addClass('on');	
    });

    // 신청 인원 카운트다운 기능
    // count
    $(document).ready(function() {
        const intervalTime = 1000; // 3초마다 업데이트


        // 인원 수 업데이트 함수
        function updateCount() {
            $('.count').text(count + '명');

            // 페이지별 분기
            if (currentPage === 1) {
                if (count <= 41) return;
            } else {
                if (count <= 9) return;
            }

            count--;
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
    });

        // 버튼 페이지 이동 함수 (설문)
	function pageSelFuc(num, obj) {
        if(!isAnimating){
            if($('input[name="tadd' + num + '"]').is(':checked')) {
                $('.section0' + num).fadeOut(function() {
                    $('.section0' + (num + 1)).fadeIn();
                    $(document).scrollTop(0);
                });
            } else {
                alert('설문을 체크해 주세요.');
            }
        }
	}

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

        // let tage = procForm.querySelector(`input[name="tage"]:checked`);
		// if (!tage) {
		// 	alert("연령을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='age']").value = tage.value;
		// }

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
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>