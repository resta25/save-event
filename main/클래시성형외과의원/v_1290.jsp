<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'Noto Sans KR', sans-serif;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: #fff5f8;}
.c_red {color: #ffeab2;}
.mb_3{margin-bottom: 3%;}
.bottom{display:none;}

#wrap {height: 100vh; background-color: #fff5f8;}
.form {margin-top: 5%; padding: 0 3%; overflow-y: scroll; background-color: transparent;}
.form::-webkit-scrollbar {display: none;}

/* 공통 폰트 사이즈 */
.chat_box,.next_btn, .form .inp, input[type="submit"] {font-size: 28px; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box {border-radius: 0.5em; width: 100%;}
.progress_txt {width: 27%; border-radius: 0.5em;}
.input_box {width: 60%; letter-spacing: -1px; font-size: 28px;}
/* 공통 border */
.chat_set.left .chat_profile img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

.top_fixed_img {z-index: 99; position: sticky; top: 0;}
.top_fixed_img2 {padding-top: 25px;}
.slider{width:85%; max-width:700px;margin:0 auto;position: absolute;top: 50px;left: 50%;transform: translateX(-50%);}
.swiper-slide img{width:100%}
/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left:not(:first-of-type){align-items: end;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color: #303153;color:#fff;}
.chat_set.left .chat_box {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards;}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: 0.3s fadeIn 0.6s forwards;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; font-weight: 700; background-color: #e35482;color:#fff;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer;}
.chat_set.right .chat_box.disagree_btn{background-color:#999999; color:#fff;}
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {color: #fff; background-color: #303153;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash 0.3s ease-out infinite alternate;}

/* 설문 */
.question_box .q_select label {position: relative; cursor: pointer;margin-bottom:5px;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box {color:#fff; background-color: #303153;}

.input_box {width: 60%; display: grid; grid-template-columns: 3fr 1fr; padding-left: 0.7em; border: 0.2em solid #e35482; background-color: #fff; float: right;}
.input_box .next_btn {padding: 0.2em 0.7em; text-align: center; font-weight: 700; border-radius: 0.3em 0 0 0.3em; cursor: pointer; background-color: #e35482;color:#fff; width: 100%; display: block;}

input[type="submit"] {padding: 0.2em 0.7em; cursor: pointer; text-align: center; font-weight: 700; border: none; border-radius: 0.3em 0 0 0.3em; color: #fff; background-color: #e35482;}
.form .description {text-align: right;}
/* .notice {margin-top: 20%; text-align: center; font-size: 13px; opacity: .5;} */
/* .agree_txt {cursor: pointer;} */

.formGroup{width:80%; margin:0 auto;}
.form .table_box{width:100%; display: flex; align-items: center; background: #fbe6ed; border-radius: 15px; padding: 3%; margin-bottom: 2%;}
.form .table_box span{ font-size: 120%; width: 10%; text-align: left;}
.form .table_box.rowBorder table{border-spacing:0; margin:0 auto;}
.form .table_box.rowBorder table td{padding:1% 2%; border-radius: 8px; border-color:#dbe2ed;}
.form .table_box.rowBorder table td:nth-of-type(2){width:0.5rem; border:0px; background-color: transparent;}
.form .table_box.rowBorder table td:last-child{border-width:1px !important;}

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

/* new db */
.formContents {padding:0 0 5%; position: relative; z-index: 5; float: right;}
.formContents .bg-box {position: relative; padding:5% 0;}
/* form box 테두리 */
.formContents .bg-box::after {display:block; content:''; width:90%; height: 100%; background-color: #fff; top: 0; position: absolute;    left: 5%;    z-index: -1; border-radius: 20px; border: 1px solid #6a6a9a;}
.formContents .bg-box .description {background-color: #fbe6ed; width: 80%; border-radius: 20px; text-align: left; padding: 2% 0 2% 2%;}
.formContents .bg-box .description p {color: #951542; font-size: 120%;}
.formContents .bg-box .description.bottom {background-color: #fff; text-align: center;}
.formContents .bg-box .description .ad_txt {font-size: 103%; line-height: 1.5;}
.formContents .bg-box .img-area.line {width: 90%; margin: 0 auto; position: relative; right: -2px; margin-top: 4%;}
.formContents .bg-box .img-area.line img {}
.formContents .bg-box .img-area {margin: 0 auto; width: 77%; margin-top: 4%;}
.formContents .bg-box .img-area img {width: 100%;}
.formContents .bg-box .formGroup {}
/* 테이블 TOP */
.formContents .bg-box .formGroup .table_box.top {}
/* 테이블 BOTTOM */
.formContents .bg-box .formGroup .table_box.bottom {}
.formContents .bg-box .formGroup .table_box.bottom span {width: 20%;}
/* 개인정보처리방침 체크박스 */
.formContents .bg-box .agBox {font-size: 100%; margin-top: 2%;}
.formContents .bg-box .agBox label {}
.formContents .bg-box .agBox label input[name="agBox"] {}
.formContents .bg-box .agBox label input[name="agBox"] span {}
.formContents .bg-box .agBox .btn-agreement {}
/* 개인정보처리방침 약관 팝업 */
.formContents .bg-box .agreement {}
.formContents .bg-box .agreement .button {}
.formContents .bg-box .agreement .button a {}
.formContents .bg-box .agreement h3 {}
.formContents .bg-box .agreement ol {}
.formContents .bg-box .agreement ol li {}
.formContents .bg-box .agreement ol .desc {}
/* submit 버튼 */
.formContents .bg-box .submit {width: 88%; margin: 0 auto; margin-top: 2%;}
.formContents .bg-box .submit input {}
.form .submit {padding: 0;}
.form .submit input[type="image"] { width: 100%; padding: 0 5%;}
/* 대상 */
.formContents .bg-box .description.bottom {}


/* form 테이블 공통 */
.form .table_box table th img {height:65%;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-color:#000;}

.form .inp {font-size: 125%;}
.form .table_box table th, .form .table_box table td {padding: 7px 15px;}
.form .table_box table th, .form .table_box table td span {font-size: 140%; font-weight: 700; position: relative; top: -2px;}
.form .table_box table th, .form .table_box table tr:first-child td {background-color: #fbe6ed; border-top-right-radius: 20px; border-top-left-radius: 20px; font-weight: 700; padding-bottom: 0;}
.form .table_box table th, .form .table_box table tr:last-child td {background-color: #fbe6ed; border-bottom-right-radius: 20px; border-bottom-left-radius: 20px; display: flex; align-items: center; padding-top: 0;}

.form .input_box.on{display:inline-block; width:40%; border:0 none; padding:4%; background: #e35482; font-size: 110%; float: right;}
.form .input_box.on input{font-weight:700; color:#fff; text-align:center;}
.form .input_box.on input:-webkit-autofill,
.form .input_box.on input:-webkit-autofill:active{color:#fff; background-color:transparent;}
.form .input_box.on .submit{display:none;}

@media screen and (max-width: 500px){
    
    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp, input[type="submit"] {font-size: 3.5vw;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}
    .form .description, .notice {font-size: 2vw;}
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .formContents .bg-box .agBox {font-size: 80%;}

    .form .table_box {border-radius: 10px;}
    .form .table_box span {width: 17%;}
    .formContents .bg-box .formGroup .table_box.bottom span {width: 36%;}
    .input_box {width: 80%; border: 0.1em solid #e35482;}

    .chat_box, .input_box {border-radius: 0.3em;}
    .form .input_box.on {padding: 2%;}
    .progress_txt {width: 30%; text-align: center;}

}

@media screen and (max-width: 415px){
    .chat_box, .input_box .next_btn, .form .inp, input[type="submit"] {font-size: 4.5vw;}
}
/* loader animation */
@keyframes flash {
    0% { background-color: #0002; box-shadow: 1em 0 #0002, -1em 0 #000; }
    50% { background-color: #000; box-shadow: 1em 0 #0002, -1em 0 #0002; }
    100% { background-color: #0002; box-shadow: 1em 0 #000, -1em 0 #0002;}
}

@keyframes chatBoxSizeUp {
    100% {width: auto; height: auto;}
}

@keyframes fadeIn {
    0% {opacity: 0;}
    100% {opacity: 1;}
}
</style>

<!-- //INCLUDES -->
<link rel="preconnect" href="https://fonts.googleapis.com"> <!-- 구글폰트 Noto Sans -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- 구글폰트 Noto Sans -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> <!-- 구글폰트 Noto Sans -->
<!-- INCLUDES// -->

<div class="overlay"></div>
<div id="wrap">
    <div class="container bg_main">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8">

                <!-- chat01 -->
                <div class="chat_set left" data-value="1">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">
                                <u class="agree_txt">개인정보 수집 및 이용</u>에 관한 내용을 확인하고 동의함.<br>
                                안녕하세요! 본원에서는 고객님의 소중한 개인정보를
                                상담 외 어떠한 목적으로도 사용하지 않습니다.
                            </div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide" data-value="1">
                    <input name="agBox" type="checkbox" checked>
                    <div>
                        <div class="chat_box agree_btn mb_3">네 (클릭)</div>
                        <!-- <a href="javascript:windowClose()" class="chat_box disagree_btn">미동의 / 나가기</a> -->
                    </div>
                </div>

                <!-- chat02 -->
                <div class="chat_set left hide" data-value="2">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">30%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt"><b>원하는 라인</b>을 선택해 주세요.</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="2">
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="인라인"><div class="chat_box">인라인</div></label>
                        <label><input type="radio" name="tadd1" value="인 아웃 라인"><div class="chat_box">인 아웃 라인</div></label>
                        <label><input type="radio" name="tadd1" value="아웃 라인"><div class="chat_box">아웃 라인</div></label>
                    </div>
                </div>

                <!-- chat03 -->
                <div class="chat_set left hide" data-value="3">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">50%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt"><b>본인 연령대</b>를 선택해 주세요.</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="3">
                    <div class="q_select" style="text-align: right;">
                        <label><input type="radio" name="tadd2" value="20대"><div class="chat_box">20대</div></label>
                        <label><input type="radio" name="tadd2" value="30대"><div class="chat_box">30대</div></label>
                    </div>
                </div>

                <!-- chat04 -->
                <div class="chat_set left hide" data-value="4">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">70%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt"><b>이름을</b> 입력해 주세요.</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right submit hide" data-value="4">
                    <div class="formContents">
                        <div class="input_box">
                            <input type="text" name="name" id="name" class="inp" required autocomplete="off"/>
                            <div class="submit"><button class="next_btn">다음</button></div>
                        </div>
                    </div>
                </div>

                <!-- chat05 -->
                <div class="chat_set left hide" style="width: 100%;" data-value="5">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">100%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt"><b>연락처</b>가 어떻게 되시나요?</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide" data-value="5">
                    <div class="input_box">
                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                        <input type="submit" onclick="fnForm('form-1')" value="비용 알아보기">
                    </div>
                </div>
                
                <div class="chat_set right hide" data-value="5">
                    <div class="description">
                        <p id="event-period"></p><br>
                        대상 : ${resVo.target}
                    </div>
                </div>

                <div class="agreeModalBox">
                    <div class="closeBtn">X</div>
                    <div class="newAgreement">
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
        <div class="img-area bottom"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div> 
        <!-- <div class="img-area bottom"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>  -->
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
    })

    // 개인정보처리방침 클릭 시 오픈
    $('.agree_txt').on('click', function() {
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    // 개인정보 동의 클릭시 액션 class추가
    $('.agree_btn').on('click', function() {
        $(this).addClass('selected');
    });

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');
        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
    });

    // 설문 클릭시 다음 채팅
    function showNextComment(currentValue, nextValue, isLeft) {
        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';
        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function() {
            $(this).find('.loader_box').delay(200).fadeOut(); // loader
        });
        if (selector) {
            setTimeout(function () {
                $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function () {
                });
            
            }, 1000);
            if(nextValue == 4){ //마지막 이름과 성함일때 레이아웃
                $('.chat_set.right.submit').css('display','block');
                $('.bottom').show();
            }
        }
    }
    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 동의 버튼 클릭 시
    $('.agree_btn').on('click', function () {
        $(this).text('동의');
        $('.disagree_btn').hide();
        showNextComment(1, 2, true); // Show next chat_set.left
        showNextComment(1, 2, false); // Show next chat_set.right
        scrollToBottom();
    });

    // add1, add2 설문 셀렉 시
    $('input[name="tadd1"], input[name="tadd2"], input[name="tadd3"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="name"]').val();

        if(nameValue.length > 1) {
            $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="4"] .input_box').addClass('on');

            showNextComment(4, 5, true); // Show next chat_set.left
            showNextComment(4, 5, false); // Show next chat_set.right
            $('.bottom').show();
            scrollToBottom();
        } else {
            alert('정확한 이름을 입력해 주세요.');
        }
    });

    // 원하는 위치로 이동
    function scrollToBottom() {
        $("html, body").delay(1200).animate({ scrollTop: $(document).height() }, 1000, 'linear');
    }

    // 버튼 클릭 시 현재 열린 창 닫기
    function windowClose() {
        window.close();
        self.close();
        window.opener = window.location.href;
        window.open('about:blank', '_self').close();
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

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
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
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			//,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>

