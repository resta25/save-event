<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'noto sans kr', sans-serif; line-height: 1.5; font-weight: 400;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: #f2f2f2;}
.c_red {color: #ff3;}
.mb_3{padding: 0.4em 1.5em !important; margin-right: 5%;}
.agree_btn_box .chat_box.disagree_btn {display: flex; align-items: center;}

#wrap {height: 100vh; background-color: #f8f2ff;}
.form {padding-top: 5% !important; padding: 0 3%; overflow-y: scroll; background-color: #f8f2ff;}
.form::-webkit-scrollbar {display: none;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp, input[type="submit"] {font-size: 150%; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 border */
.chat_set.left .chat_profile img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

.top_fixed_img {z-index: 99; position: sticky; top: 0; padding: 5% 3% 2%; background-color: #f2f2f2;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left:not(:first-of-type){align-items: end;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color: #005dc7; color:#fff;}
.chat_set.left .chat_box {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 6.1em 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards;}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: 0.3s fadeIn 0.6s forwards;}

.open_txt {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 6.7em 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards; font-size: 150%; border: 1px solid #ddd; border-radius: 0.5em; margin-bottom: 2%;}

#em {font-style: normal; color:#730cff; font-weight: 700;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; font-weight: 700; background-color: #dcdce4;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer; display: flex; align-items: center;}
.chat_set.right .chat_box.disagree_btn {background-color:#dcdce4; color:#000;}
.chat_set.right .chat_box.agree_btn.selected,.chat_set.right .chat_box.disagree_btn.selected, .chat_set.right .chat_box.input_box_changed {color: #fff; background-color: #730cff;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash 0.3s ease-out infinite alternate;}

/* 설문 */
.question_box .q_select label {position: relative; cursor: pointer;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box {color:#fff; background-color: #730cff;}

.input_box {width: 75%; display: flex; align-items: center; grid-template-columns: 3fr 1fr; padding-left: 0.7em; border: 0.2em solid #740cff; background-color: #fff;}
.input_box input[name="phone"] {width: 100%; height: 40px;}
.input_box .next_btn {width: 40%; padding: 0.4em 0.7em;  text-align: center; font-weight: 700; border-radius: 0.3em 0 0 0.3em; cursor: pointer; background-color: #740cff;color: #fff;}

input[type="submit"] {padding: 0.2em 0.7em; cursor: pointer; text-align: center; font-weight: 700; border: none; border-radius: 0.3em 0 0 0.3em; color: #000; background-color: #ffa200;}
.form .description {text-align: right; font-size: 13px; opacity: .5; margin-top: 2%;}
.notice {margin-top: 2%; text-align: center; font-size: 13px; opacity: .5;}
.agree_txt {cursor: pointer; text-decoration: none; color: #730cff; font-weight: 700;}

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

/* coments */
.comments{position: absolute; bottom: 4%; width:24.5%; right:3.9%; border:none; height:35.5%; padding:0; background-color: transparent;}
.comments .box{height:100%;}
.comments .box .cnt{background: #24c13a; padding:6% 10%;}
.comments .box .list{ width:100%;}
.subscribe .content{padding: 0; font-size:0.8em;}

/* count */
.today > span{position:absolute;top:63%;left:10%;letter-spacing:-1px;font-size:300%;font-weight:700;color:#000;font-family:'Sandoll GyeokdongGL2', sans-serif;}
.count{position:absolute;top:79%;left:17%;font-size:300%;color:#ff136c;font-weight:700;font-family:'Sandoll GyeokdongGL2', sans-serif; font-family: 'noto sans kr';}
.count span {font-family: 'noto sans kr';}

.last {flex-flow: column; align-items: end;}
.agree_btn_box {display: flex; width: 30%; justify-content: flex-end;}
/* .next_btn-phone {color: #ffef64 !important;} */

.submit {display: none;}

@media screen and (max-width: 500px){
    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp, input[type="submit"] {font-size: 3.2vw;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}

    .form .description, .notice {font-size: 2vw;}

    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .today > span {font-size: 160%;}
    .count {font-size: 160%; top: 78%; left: 16%;}
    .open_txt {font-size: 96%;}
    .next_btn.next_btn-phone {font-size: 3.2vw; width: 44%;}
    .input_box input[name="phone"] {height: 28px;}
}

@media screen and (max-width: 375px){
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


@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

</style>

<!-- 폰트 -->
<script type="module" src="https://ryj9d86xjh.execute-api.ap-northeast-2.amazonaws.com/v1/api/js/drop_fontstream_js/?sid=gAAAAABmVrmvqwDITtEP3dZ9ExESjTa9OpFAigrOm2ZPYGU6ft8djZGQIU1yQ3r0su3FaSf0axFkohrXyaKaegenr6RoQEiP7-JAsQY0pw8OMqGTa9ZyeRu3pU6VsHI6jTXJ8iol5cH9EWjPgvN1-rVyWH30953SJ5wSbgE1nYE6oTLOKOiWgLjQllTCg2GzljPK8tIqC1RMn_u2izCzhoBGvFaf7-Ss6OOyVTaZayu8y8I21-wqWinpRYFJNyDcOX4Vgab9RPcS" charset="utf-8"></script>
<!-- //INCLUDES -->
<link rel="preconnect" href="https://fonts.googleapis.com"> <!-- 구글폰트 Noto Sans -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- 구글폰트 Noto Sans -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> <!-- 구글폰트 Noto Sans -->
<!-- INCLUDES// -->

<div class="overlay"></div>
<div id="wrap"> 
    <div class="container">
        <div class="img-area">
            <img src="//static.resta.co.kr/event/V_${eventSeq}/event_main_01.jpg">
            <div class="today"><span></span></div>
            <div class="count">남은 시간 : <span>60</span>초</div>
            <div class="comments">  
                <div class="box">        
                    <div class="subscribe" data-limit="10"></div>
                    <script>setInterval(function(){$('.content:first').slideUp(function(){$(this).show().parent().append(this)})},2000);</script>
                </div>
            </div>
        </div>    
        <div class="img-area"><img src="//static.resta.co.kr/event/V_${eventSeq}/event_main_03.jpg"></div>  
    </div>

    <div class="container bg_main">
        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8"> 

                <!-- chat01 -->
                <div class="chat_set left" data-value="1">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <p class="open_txt">안녕하세요!<br>
                            미관상은 물론 건강과 기능을 고려하여<br>
                            자신의 체형에 맞는 볼륨과 라인을<br>
                            찾아드리겠습니다.
                        </p>
                        <div class="chat_box">
                            <div class="chat_txt">
                                혜택 제공을 위한 <u class="agree_txt">개인정보 수집 및 이용</u>에 <br>동의해 주세요.
                            </div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide" data-value="1">
                    <input name="agBox" type="checkbox" checked>
                    <div class="agree_btn_box">
                        <div class="chat_box agree_btn mb_3">예</div>
                        <a href="#" class="chat_box disagree_btn">아니오</a>
                    </div>
                </div>

                <!-- chat02 -->
                <div class="chat_set left hide" data-value="2">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">고민 사항</span>을 선택해주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="2">
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="크기"><div class="chat_box">크기</div></label>
                        <label><input type="radio" name="tadd1" value="처짐"><div class="chat_box">처짐</div></label>
                        <label><input type="radio" name="tadd1" value="비대칭"><div class="chat_box">비대칭</div></label>
                        <label><input type="radio" name="tadd1" value="유두 위치"><div class="chat_box">유두 위치</div></label>
                        <label><input type="radio" name="tadd1" value="습진 발진"><div class="chat_box">습진 · 발진</div></label>
                        <label><input type="radio" name="tadd1" value="기타"><div class="chat_box">기타</div></label>
                    </div>
                </div>

                <!-- chat03 -->
                <div class="chat_set left hide" data-value="3">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">현재 가슴 컵 사이즈</span>를 선택해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="3">
                    <div class="q_select">
                        <label><input type="radio" name="tadd2" value="C컵"><div class="chat_box">C컵</div></label>
                        <label><input type="radio" name="tadd2" value="D컵"><div class="chat_box">D컵</div></label>
                        <label><input type="radio" name="tadd2" value="E컵"><div class="chat_box">E컵</div></label>
                        <label><input type="radio" name="tadd2" value="F컵"><div class="chat_box">F컵</div></label>
                        <label><input type="radio" name="tadd2" value="G컵 이상"><div class="chat_box">G컵 이상</div></label>
                    </div>
                </div>

                <div class="chat_set left hide" data-value="4">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">희망 가슴 컵 사이즈</span>를 선택해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="4">
                    <div class="q_select">
                        <label><input type="radio" name="tadd3" value="B컵"><div class="chat_box">B컵</div></label>
                        <label><input type="radio" name="tadd3" value="C컵"><div class="chat_box">C컵</div></label>
                        <label><input type="radio" name="tadd3" value="D컵"><div class="chat_box">D컵</div></label>
                        <label><input type="radio" name="tadd3" value="E컵"><div class="chat_box">E컵</div></label>
                    </div>
                </div>

                <div class="chat_set left hide" data-value="5">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">고려 사항</span>을 선택해주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="5">
                    <div class="q_select">
                        <label><input type="radio" name="tadd4" value="크기"><div class="chat_box">크기</div></label>
                        <label><input type="radio" name="tadd4" value="모양"><div class="chat_box">모양</div></label>
                        <label><input type="radio" name="tadd4" value="비용"><div class="chat_box">비용</div></label>
                        <label><input type="radio" name="tadd4" value="통증"><div class="chat_box">통증</div></label>
                        <label><input type="radio" name="tadd4" value="흥터"><div class="chat_box">흥터</div></label>
                        <label><input type="radio" name="tadd4" value="마취"><div class="chat_box">마취</div></label>
                        <label><input type="radio" name="tadd4" value="기타"><div class="chat_box">기타</div></label>
                    </div>
                </div>

                <div class="chat_set left hide" data-value="6">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">이름</span>을 입력해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide" data-value="6">
                    <div class="input_box">
                        <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="성함"/>
                        <span class="next_btn next_btn-name">다음</span>
                    </div>
                    <div class="chat_box input_box_changed hide"></div>
                </div>

                <!-- chat05 -->
                <div class="chat_set left hide" data-value="7">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/V_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt"><span id="em">연락처</span>를 입력해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide last" data-value="7">
                    <div class="input_box">
                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                        <span class="next_btn next_btn-phone">비용 알아보기</span>
                    </div>
                    <div class="submit"><input type="image" onclick="fnForm(event, 'form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/V_${eventSeq}/btn_newSb_05.png"/></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <span>대상 : ${resVo.target} </span>
                    </div>
                    <div class="chat_box input_box_changed hide"></div>
                </div>

                <div class="agreeModalBox">
                    <div class="closeBtn">X</div>
                    <div class="newAgreement">
                        <div class="button">
                            <a href="${resVo.agreementUrl}" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">
                                개인정보 처리방침
                            </a>
                        </div>
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

                <input type="hidden" id="branch" name="branch" value="${resVo.branch}"/>
                <input type="hidden" id="eventSeq" name="eventSeq" value="${resVo.eventSeq}"/>
                <input type="hidden" id="site" name="site" value="${site}"/>
                <input type="hidden" id="media" name="media" value="${media}"/>
                <input type="hidden" id="interlock" name="interlock" value="${resVo.interlock}"/>
                <input type="hidden" id="checkAgeMin" name="checkAgeMin" value="${resVo.checkAgeMin}"/>
                <input type="hidden" id="checkAgeMax" name="checkAgeMax" value="${resVo.checkAgeMax}"/>
                <input type="hidden" id="checkGender" name="checkGender" value="${resVo.checkGender}"/>
                <input type="hidden" id="add1" name="add1" value=""/>
                <input type="hidden" id="add2" name="add2" value=""/>
                <input type="hidden" id="add3" name="add3" value=""/>
                <input type="hidden" id="add4" name="add4" value=""/>
                <input type="hidden" id="add5" name="add5" value=""/>
                <input type="hidden" id="add6" name="add6" value=""/>
            </form>
        </div>
    </div>

    <div class="container_bottom">
        <div class="img-area"><img src="//static.resta.co.kr/event/V_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
		getComment('512');

		var today = new Date();
		var month = today.getMonth() + 1;
		var date = today.getDate();
		$('.today').find('span').text(month + '월' + ' ' + date + '일 오늘 마지막');
	});
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' ('+ data[v].phone + ')' +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
		});
	}

	
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

    // 개인정보 동의 이벤트
    $('.agree_btn').on('click', function() {
        $(this).addClass('selected');
    });
    $('.disagree_btn').on('click', function() {
        $(this).removeClass('selected');
    });

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');

        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
    });

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
        }
    }

    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 동의 버튼 클릭 시
    $('.agree_btn').on('click', function () {
        $(this).text('예');
        $('.disagree_btn').hide();
        showNextComment(1, 2, true); // Show next chat_set.left
        showNextComment(1, 2, false); // Show next chat_set.right
        scrollToBottom();
    });
    
    // 미동의 버튼 클릭 시
    $('.disagree_btn').on('click', function (e) {
        $(this).text('아니오');
        $('.agree_btn').hide();
        showNextComment(1, 2, true); // Show next chat_set.left
        showNextComment(1, 2, false); // Show next chat_set.right
        scrollToBottom();

        event.preventDefault();
    });

    // add1, add2 설문 셀렉 시
    $('input[name*="tadd"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.input_box .next_btn-name').on('click', function () {      
        var nameValue = $('input[name="name"]').val();
    
        if(nameValue.length > 1) {
            $('.chat_set[data-value="6"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="6"] .input_box').addClass('hide');
        
        } else {
            alert('정확한 이름을 입력해 주세요.');
            return false;
        }       

        showNextComment(6, 7, true); // Show next chat_set.left
        showNextComment(6, 7, false); // Show next chat_set.right
        scrollToBottom();
    });   

    // 연락처 입력란 - 다음 버튼 클릭 시
    $('.input_box .next_btn-phone').on('click', function () {

        setTimeout(function(){ 
            $('.btn_submit').trigger('click')
        }, 500);

        // var phoneValue = $('input[name="phone"]').val();

        // var elements = document.querySelectorAll('.chat_set[data-value]');
        // var lastElement = elements[elements.length - 2];
        // var lastNumber = lastElement.getAttribute('data-value');

        // // 정규 표현식을 사용하여 숫자 이외의 문자를 제거
        // phoneValue = phoneValue.replace(/[^0-9]/g, '');

        // // 입력된 전화번호가 11자이고 맨 앞자리가 "010"인지 확인
        // if (/^\d{11}$/.test(phoneValue)) {
        //     if (phoneValue.startsWith("010")) {
        //         $('.chat_set[data-value="' + (lastNumber - 1) + '"] .chat_box.input_box_changed').text(phoneValue).removeClass('hide').hide().fadeIn();
        //         $('.chat_set[data-value="' + (lastNumber - 1) + '"] .input_box').addClass('hide');

        //         showNextComment((lastNumber - 1), lastNumber, true); // Show next chat_set.left
        //         showNextComment((lastNumber - 1), lastNumber, false); // Show next chat_set.right
        //         scrollToBottom();
        //     } else {
        //         alert('정확한 연락처를 입력해 주세요.');               
        //         $('input[name="phone"]').focus();
        //         return false;
        //     }
        // } else {
        //     alert('정확한 연락처를 입력해 주세요.');
        //     $('input[name="phone"]').focus();
        // }

        // // 입력된 숫자로 다시 필드 업데이트
        // $('input[name="phone"]').val(phoneValue);
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
	
	var timer = 60;    
	var countDown = setInterval(function(){       
	    if(timer==0) {
	        clearInterval(countDown);
	        return false;
	    };
	    
	    timer --;    

	    if(timer < 10){
	        $('.count > span').text('0'+timer);
	    }else{
	        $('.count > span').text(timer);
	    }        
	}, 1000);

	function fnForm(event, formId){
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
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}
		
		let selectedRadio4 = procForm.querySelector(`input[name="tadd4"]:checked`);
		if (!selectedRadio4) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
		}
		
		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'add4': '설문4'
			//,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>