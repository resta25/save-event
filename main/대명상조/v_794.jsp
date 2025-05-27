<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: 'noto sans kr';}
#wrap {background-color: #fff;}
.form {background-color: #000;}
/* slide 영역 */
.slide_box {margin-bottom: 3%;}
#top_slide .swiper-wrapper .slide { width: 100%; margin: 0 auto; background-color: #fff; text-align: center;}
#top_slide .swiper-wrapper .slide img {width: 80%;}


/* db단 */
.form_box {padding-bottom: 3%;}
.db_box {display: flex; align-items: center; justify-content: space-between; padding: 3% 10% 0;}
.user_info {width: 45%; display: flex; flex-flow: column;}
.form .inp {background-color: #fff; width: 100%; margin-bottom: 4.5%; padding: 3.5% 3%; border-radius: 0.5rem; font-size: 100%;}
.form .inp:last-child {margin: 0;}
.notice_txt { font-size: 75%; padding: 0 10%; margin-top: 0; color: #aaa;}
.question_box {width: 52%; display: flex; flex-flow: column;}
.question_box .q_select {margin-bottom: 4%; padding: 3%; border-radius: 0.5rem;}
.question_box .q_select:last-child {margin: 0;}

/* db단 bottom */
.form .description {font-size: 90%;}
.description.bottom {color: #fff;}
.form .agBox{ width: 100%; padding: 1% 0 0; color: #fff; margin: 2% 0; font-size: 80%;}

/* submit */
.submit {width: 40%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

/* 개인정보처리방침 */
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(24, 23, 23, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 500px){
	.agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
	.form .description {font-size: 80%;}
	.form .agBox {font-size: 70%;}
	.form .inp {padding: 4.5% 3%;}
	
}
</style>

<!--플러그인 필수 css cdn 연결-->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<!--플러그인 필수 JS cdn 연결-->
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

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
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
	</div>
	<div class="slide_box">
		<div class="swiper" id="top_slide">
			<div class="swiper-wrapper">
				<div class="swiper-slide slide slide1"><img src="//static.resta.co.kr/event/v_${eventSeq}/slide_01.png"></div>
				<div class="swiper-slide slide slide2"><img src="//static.resta.co.kr/event/v_${eventSeq}/slide_02.png"></div>
				<div class="swiper-slide slide slide3"><img src="//static.resta.co.kr/event/v_${eventSeq}/slide_03.png"></div>
			</div>
		</div>
	</div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
    </div>

	<div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">
		<div class="form_box">
			<div class="db_box">
				<div class="user_info">
					<input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
					<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호('-'없이 입력)"/>
				</div>

				<div class="question_box">
					<select class="q_select q_select_01" name="tadd1" required>
						<option value="" disabled selected>희망 제품 리스트 1</option>
						<option name="" value="[기타]상담 후 선택">[기타]상담 후 선택</option>
						<option name="" value="[애플]맥북 PRO 14">[애플]맥북 PRO 14</option>
						<option name="" value="[애플]맥북 에어 15 노트북">[애플]맥북 에어 15 노트북</option>
						<option name="" value="[애플]아이패드 프로 11+매직키보드">[애플]아이패드 프로 11+매직키보드</option>
						<option name="" value="[애플]아이패드 에어11">[애플]아이패드 에어11</option>
						<option name="" value="[LG] 86인치 UHD TV+27인치 스탠바이미">[LG] 86인치 UHD TV+27인치 스탠바이미</option>
						<option name="" value="[LG] 65인치 OLED TV+공기청정기">[LG] 65인치 OLED TV+공기청정기</option>
						<option name="" value="[LG] 75인치 QLED TV+ 제습기">[LG] 75인치 QLED TV+ 제습기</option>
						<option name="" value="[LG] 오브제 안마의자 + 스텐바이미">[LG] 오브제 안마의자 + 스텐바이미</option>
						<option name="" value="[LG] 시네빔+엑스붐 SET">[LG] 시네빔+엑스붐 SET</option>
						<option name="" value="[LG] 오브제 스타일러+오브제 A9 청소기">[LG] 오브제 스타일러+오브제 A9 청소기</option>
						<option name="" value="[LG] 그램(17인치/15인치)노트북">[LG] 그램(17인치/15인치)노트북</option>
						<option name="" value="[LG] [LG] 퓨리케어 오브제 컬렉션 얼음정수기">[LG] 퓨리케어 오브제 컬렉션 얼음정수기</option>
						<option name="" value="[LG]27인치 스탠바이미/ 스텐바이미GO">[LG]27인치 스탠바이미/ 스텐바이미GO</option>
						<option name="" value="[LG] 식기 세척기">[LG] 식기 세척기</option>
						<option name="" value="[MSI]게이밍노트북SET">[MSI]게이밍노트북SET</option>
						<option name="" value="[삼성]갤럭시북5 PRO360 16인치">[삼성]갤럭시북5 PRO360 16인치</option>
						<option name="" value="[삼성]갤럭시북4 울트라 16인치">[삼성]갤럭시북4 울트라 16인치</option>
						<option name="" value="[삼성] 85인치 QLED TV+사운드바SET">[삼성] 85인치 QLED TV+사운드바SET</option>
						<option name="" value="[삼성] 75인치 QLED TV+43인치 세리프TV">[삼성] 75인치 QLED TV+43인치 세리프TV</option>
						<option name="" value="[삼성] 85인치 QLED TV+갤럭시 탭 A9">[삼성] 85인치 QLED TV+갤럭시 탭 A9</option>
						<option name="" value="[삼성] 비스포크 패밀리 허브 냉장고">[삼성] 비스포크 패밀리 허브 냉장고</option>
						<option name="" value="[삼성] 더프리미어 빔프로젝터">[삼성] 더프리미어 빔프로젝터</option>
						<option name="" value="[삼성] 비스포크 AI 스팀 로봇 청소기">[삼성] 비스포크 AI 스팀 로봇 청소기</option>
						<option name="" value="[삼성] 비스포크 슈드레서">[삼성] 비스포크 슈드레서</option>
						<option name="" value="[삼성]더세리프TV+빔프로젝터SET">[삼성]더세리프TV+빔프로젝터SET</option>
						<option name="" value="[삼성/LG]최신냉장고">[삼성/LG]최신냉장고</option>
						<option name="" value="[삼성/LG]김치냉장고">[삼성/LG]김치냉장고</option>
						<option name="" value="[삼성/LG]세탁기+건조기SET">[삼성/LG]세탁기+건조기SET</option>
						<option name="" value="[삼성/LG]UHD+QLED TV 86~55">[삼성/LG]UHD+QLED TV 86~55</option>
						<option name="" value="[삼성/LG]에어드레서/스타일러">[삼성/LG]에어드레서/스타일러</option>
						<option name="" value="[삼성/LG]스탠드 에어컨">[삼성/LG]스탠드 에어컨</option>
						<option name="" value="[삼성/LG]2in1에어컨(벽걸이포함)">[삼성/LG]2in1에어컨(벽걸이포함)</option>
						<option name="" value="[다이슨/삼성/LG]청소기">[다이슨/삼성/LG]청소기</option>
						<option name="" value="[다이슨/삼성/LG]공기청정기">[다이슨/삼성/LG]공기청정기</option>
						<option name="" value="[다이슨]에어랩+드라이기">[다이슨]에어랩+드라이기</option>
						<option name="" value="[바디프렌드/코지마/세라젬]안마의자">[바디프렌드/코지마/세라젬]안마의자</option>
						<option name="" value="[아츠아크] 소파SET">[아츠아크] 소파SET</option>
						<option name="" value="[세라젬] 파우제 M2+M4">[세라젬] 파우제 M2+M4</option>
						<option name="" value="[세라젬] 더 뉴 마스터 V4">[세라젬] 더 뉴 마스터 V4</option>
						<option name="" value="[로보락,삼성,LG] 로봇청소기">[로보락,삼성,LG] 로봇청소기</option>
						<option name="" value="[소노시즌,쿠쿠]: 매트리스+프레임">[소노시즌,쿠쿠]: 매트리스+프레임</option>
						<option name="" value="[쿠쿠] 펫풀패키지 SET : 드라이룸,공기청정기,급수기">[쿠쿠] 펫풀패키지 SET : 드라이룸,공기청정기,급수기</option>
						<option name="" value="[쿠쿠] 얼음정수기">[쿠쿠] 얼음정수기</option>
						<option name="" value="[쿠쿠] 창문형 에어컨">[쿠쿠] 창문형 에어컨</option>
						<option name="" value="[에그2]: 하이엔드 디럭스 유모차 패키지">[에그2]: 하이엔드 디럭스 유모차 패키지</option>
					</select>
					<select class="q_select q_select_02" name="tadd2" required>
						<option value="" disabled selected>희망 제품 리스트 2</option>
						<option name="" value="[기타]상담 후 선택">[기타]상담 후 선택</option>
						<option name="" value="[애플]맥북 PRO 14">[애플]맥북 PRO 14</option>
						<option name="" value="[애플]맥북 에어 15 노트북">[애플]맥북 에어 15 노트북</option>
						<option name="" value="[애플]아이패드 프로 11+매직키보드">[애플]아이패드 프로 11+매직키보드</option>
						<option name="" value="[애플]아이패드 에어11">[애플]아이패드 에어11</option>
						<option name="" value="[LG] 86인치 UHD TV+27인치 스탠바이미">[LG] 86인치 UHD TV+27인치 스탠바이미</option>
						<option name="" value="[LG] 65인치 OLED TV+공기청정기">[LG] 65인치 OLED TV+공기청정기</option>
						<option name="" value="[LG] 75인치 QLED TV+ 제습기">[LG] 75인치 QLED TV+ 제습기</option>
						<option name="" value="[LG] 오브제 안마의자 + 스텐바이미">[LG] 오브제 안마의자 + 스텐바이미</option>
						<option name="" value="[LG] 시네빔+엑스붐 SET">[LG] 시네빔+엑스붐 SET</option>
						<option name="" value="[LG] 오브제 스타일러+오브제 A9 청소기">[LG] 오브제 스타일러+오브제 A9 청소기</option>
						<option name="" value="[LG] 그램(17인치/15인치)노트북">[LG] 그램(17인치/15인치)노트북</option>
						<option name="" value="[LG] [LG] 퓨리케어 오브제 컬렉션 얼음정수기">[LG] 퓨리케어 오브제 컬렉션 얼음정수기</option>
						<option name="" value="[LG]27인치 스탠바이미/ 스텐바이미GO">[LG]27인치 스탠바이미/ 스텐바이미GO</option>
						<option name="" value="[LG] 식기 세척기">[LG] 식기 세척기</option>
						<option name="" value="[MSI]게이밍노트북SET">[MSI]게이밍노트북SET</option>
						<option name="" value="[삼성]갤럭시북5 PRO360 16인치">[삼성]갤럭시북5 PRO360 16인치</option>
						<option name="" value="[삼성]갤럭시북4 울트라 16인치">[삼성]갤럭시북4 울트라 16인치</option>
						<option name="" value="[삼성] 85인치 QLED TV+사운드바SET">[삼성] 85인치 QLED TV+사운드바SET</option>
						<option name="" value="[삼성] 75인치 QLED TV+43인치 세리프TV">[삼성] 75인치 QLED TV+43인치 세리프TV</option>
						<option name="" value="[삼성] 85인치 QLED TV+갤럭시 탭 A9">[삼성] 85인치 QLED TV+갤럭시 탭 A9</option>
						<option name="" value="[삼성] 비스포크 패밀리 허브 냉장고">[삼성] 비스포크 패밀리 허브 냉장고</option>
						<option name="" value="[삼성] 더프리미어 빔프로젝터">[삼성] 더프리미어 빔프로젝터</option>
						<option name="" value="[삼성] 비스포크 AI 스팀 로봇 청소기">[삼성] 비스포크 AI 스팀 로봇 청소기</option>
						<option name="" value="[삼성] 비스포크 슈드레서">[삼성] 비스포크 슈드레서</option>
						<option name="" value="[삼성]더세리프TV+빔프로젝터SET">[삼성]더세리프TV+빔프로젝터SET</option>
						<option name="" value="[삼성/LG]최신냉장고">[삼성/LG]최신냉장고</option>
						<option name="" value="[삼성/LG]김치냉장고">[삼성/LG]김치냉장고</option>
						<option name="" value="[삼성/LG]세탁기+건조기SET">[삼성/LG]세탁기+건조기SET</option>
						<option name="" value="[삼성/LG]UHD+QLED TV 86~55">[삼성/LG]UHD+QLED TV 86~55</option>
						<option name="" value="[삼성/LG]에어드레서/스타일러">[삼성/LG]에어드레서/스타일러</option>
						<option name="" value="[삼성/LG]스탠드 에어컨">[삼성/LG]스탠드 에어컨</option>
						<option name="" value="[삼성/LG]2in1에어컨(벽걸이포함)">[삼성/LG]2in1에어컨(벽걸이포함)</option>
						<option name="" value="[다이슨/삼성/LG]청소기">[다이슨/삼성/LG]청소기</option>
						<option name="" value="[다이슨/삼성/LG]공기청정기">[다이슨/삼성/LG]공기청정기</option>
						<option name="" value="[다이슨]에어랩+드라이기">[다이슨]에어랩+드라이기</option>
						<option name="" value="[바디프렌드/코지마/세라젬]안마의자">[바디프렌드/코지마/세라젬]안마의자</option>
						<option name="" value="[아츠아크] 소파SET">[아츠아크] 소파SET</option>
						<option name="" value="[세라젬] 파우제 M2+M4">[세라젬] 파우제 M2+M4</option>
						<option name="" value="[세라젬] 더 뉴 마스터 V4">[세라젬] 더 뉴 마스터 V4</option>
						<option name="" value="[로보락,삼성,LG] 로봇청소기">[로보락,삼성,LG] 로봇청소기</option>
						<option name="" value="[소노시즌,쿠쿠]: 매트리스+프레임">[소노시즌,쿠쿠]: 매트리스+프레임</option>
						<option name="" value="[쿠쿠] 펫풀패키지 SET : 드라이룸,공기청정기,급수기">[쿠쿠] 펫풀패키지 SET : 드라이룸,공기청정기,급수기</option>
						<option name="" value="[쿠쿠] 얼음정수기">[쿠쿠] 얼음정수기</option>
						<option name="" value="[쿠쿠] 창문형 에어컨">[쿠쿠] 창문형 에어컨</option>
						<option name="" value="[에그2]: 하이엔드 디럭스 유모차 패키지">[에그2]: 하이엔드 디럭스 유모차 패키지</option>
					</select>
				</div>
			</div>

			<div class="db_bottom">
				<p class="notice_txt">※신용 불량자의 경우 신청이 불가능합니다.</p>

				<div class="description bottom">
					<p id="event-period"></p>
					<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
					<div class="target">대상 : ${resVo.target} </div>
				</div>
	
				<div class="agBox">
					<label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="agree_txt">[자세히 보기]</a>
				</div>
	
				<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit_01" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
			</div>
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

	<div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
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

	// slide
	const top_swiper = new Swiper("#top_slide", {
		autoplay: {
			delay: 2000,
			disableOnInteraction: false, // 사용자 상호작용 후에도 자동재생 유지
		},
		loop : true,
		slidesPerView: 1,
		centeredSlides: true,
		speed: 700, // 슬라이드 전환 속도 (밀리초)
		initialSlide: 1,
		autoHeight: true
	})

	// 개인정보처리방침
	$('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);

		let selectedRadio1 = procForm.querySelector('select[name="tadd1"]');
        if (!selectedRadio1) {
            alert("설문1을 선택해주세요.");
            return;
        } else {
            procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
        }

		let selectedRadio2 = procForm.querySelector('select[name="tadd2"]');
        if (!selectedRadio2) {
            alert("설문2를 선택해주세요.");
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
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>