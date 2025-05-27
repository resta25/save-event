<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700;900&display=swap');

.form{height:100vh;}

.txt{text-align: center; margin:5% auto 3%;}
.txt span{font-family: 'Noto Sans KR', sans-serif; padding:2% 6%; color:#fff;  font-size: 160%; border-radius: 40px; display: inline-block; background-color:#3c58a1;}

u{color:#0042db; font-weight: 700;}

.fixed{position:fixed; top:0; left:50%; width:100%; max-width:818px; z-index:5; transform:translateX(-50%);}

.container video{margin:0% 5% 3% auto; width:77%;}

.label_hide{display:none;}

.btm-fixed{position:fixed; bottom:0; left:50%; width:100%; max-width:818px; z-index:5; transform:translateX(-50%);}

.container{height:100vh; padding-bottom:180px; overflow-y:auto; box-sizing:border-box; position:relative; z-index:1;}

#section_temp section{display:none;}

/* profile 사진 */
section{position:relative;}
section > div{margin:3% 0;}
section > div .profile{position:absolute; top:2%; left:3%; width:11% !important; z-index:2;}

/* 설문 */
.question_box{position:relative;}
.question_box .question{width:72%; padding:3%; margin:0 0 3% 18%; background-color:#eaeaff; font-family: 'Noto Sans KR', sans-serif; color:#333333; border-radius:15px; font-size: 1.75em; word-break: keep-all; letter-spacing: -1px; font-weight: 400;}
.question_box .point {color:#262897; font-weight:700;}
.question_box .q_select{text-align: right; padding:3%;}


/* 이름, 나이 */
.question_box .q_select label,.submit-name,.submit-phone,.submit-age{padding:2.25% 0; background-color:#3ebe51; color:#fff; border-radius:35px; font-family: 'Noto Sans KR', sans-serif; box-sizing: border-box; font-size: 1.89em; letter-spacing:-1px; text-align: center; cursor: pointer; width:24%;} 
.submit-name,.submit-phone, .submit-age{width:22%; position: absolute; right: 2%; top: 50%; transform: translateY(-50%); padding:3% 0; text-align: center;}
.submit-name > a,.submit-phone > a, .submit-age >a{display:block;}

/* 설문 > 선택 후 */
.question_box >.answer,.result-txt{display:none;}
.question_box::after,.result-txt::after{display:block; content:''; clear:both;}
.question_box >.answer.sel, .result-txt span{background-color:#3c58a1; display:inline-block !important; float: right; margin:0 5% 0 auto; padding:2.25% 0%; width:25%; color:#fff; border-radius: 35px; font-family: 'Noto Sans KR', sans-serif; box-sizing: border-box; font-size: 1.89em; letter-spacing:-1px;    text-align: center;}
.result-txt span{width:27%;}
.form input[type="radio"] + span{padding:0px;}
.form input[type="radio"] + span:before,.form input[type="radio"]:checked + span:after{display:none;}

.form {overflow:hidden;}
.form .table_box.rowBorder{width:77%; margin:3% 5% 3% auto; padding:0; position: relative;}
.form .table_box.rowBorder table{border-spacing:0rem;}
.form .table_box.rowBorder table td{padding:5% 1% 5% 7%; border-radius:10px; background-color:#F7F7F7; border-color:#8a8ac8; word-break: break-all;}
.form .table_box.rowBorder table td input{text-align: left; font-size: 140%;}

/* 개인정보 처리방침 */
.submit-agree{width:30%; padding:10% 0; background-color:#b39c4d; color:#fff; border-radius:50px; font-family: 'Noto Sans KR', sans-serif; box-sizing: border-box; font-size: 1.89em; letter-spacing:-1px; display: flex; justify-content: flex-end;}
.form .db-txt{font-size:70%; letter-spacing: -1px;}
.form .db-txt > *{text-align: left !important;}
.form .agBox{color:#0042DA; font-size:140%; margin:0 1% 0.5em;}
.form .agBox a{text-decoration: underline; font-weight: bold;}
.form input[type="checkbox"] + span{font-weight: bold;}
.form .agreement{position:absolute; top:49%; left:50%; transform:translateX(-50%); z-index: 99;}
.form .btn-agreement{font-size:80%;}
.form .submit{text-align:right; margin:3% 5% 3% auto; width:24%; padding:0;}
.form .submit input[type="image"]{width:100%; border-radius:35px;}

@media screen and (max-width: 500px){  
    .txt span{font-size:1.25em;}

    .form .btn-agreement{font-size:100%;}
    .form .db-txt{font-size:80%;}
    .form .db-txt .ad_txt br{display:none;}

    .question_box >.answer.sel, 
    .result-txt span,.submit-name, .submit-phone, .submit-age,.submit-agree{font-size:4vw;}

    .question_box .question{font-size:3.75vw;}
    .question_box .q_select{grid-gap:2vw;}
    .question_box .q_select label{font-size:4vw;} 

    .form .table_box.rowBorder table td input{font-size:120%;}

    .form .agreement{top:40%; max-height: 7em; overflow-y: scroll; margin:0 auto; font-size:130%;}
}

@media screen and (max-width: 415px){
   
}

@media screen and (max-width: 375px){
}
</style>

<div id="wrap"> 
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

            <div class="container hide" id="select_container">  
                <div class="fixed">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>  
                </div> 
            
                <div class="txt"><span id="date"></span></div>  	               
                <video id="location" playsinline muted loop src="//static.resta.co.kr/event/v_${eventSeq}/240226.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>

                <div class="active_section"></div>

                <div class="hide btm-fixed">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>  
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
                </div>
            </div>

            <div id="section_temp">          
                <!--1-1 비슷한성공사례 -->
                <section class="select sec_03" data-id="part_1"> 
                    <div class="question_box chatbot chat1">
                        <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                        <div class="question">
                            안녕하세요.<br>프리미엄급 진료 시스템과 임상 경험이 풍부한<br>의료진으로 차별화된 ‘결과’를 보여드리겠습니다.
                        </div>
                        <div class="question"><span class="point">시력이 0.5 이하</span>이신가요?</div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="예"><span>예</span></label>
                            <label><input type="radio" name="tadd1" value="아니오"><span>아니오</span></label>
                        </div>
                        <div class="answer chatbot chat2"></div>                    	
                    </div>
                    <div class="question_box chatbot chat1">
                        <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                        <div class="question"><span class="point">렌즈 혹은 안경을 착용</span>하시나요?</div>                            
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" value="예"><span>예</span></label>
                            <label><input type="radio" name="tadd2" value="아니오"><span>아니오</span></label>
                        </div>
                        <div class="answer chatbot chat2"></div>    
                    </div>      
                    <div class="question_box chatbot chat1">
                        <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                        <div class="question">시력 교정 진행시<span class="point"> 가장 중요하게 보는 사항</span>은?</div>                            
                        <div class="q_select">
                            <label><input type="radio" name="tadd3" value="비용"><span>비용</span></label>
                            <label><input type="radio" name="tadd3" value="병원 위치"><span>병원 위치</span></label>
                            <label><input type="radio" name="tadd3" value="의료진 경력"><span>의료진 경력</span></label>
                            <label><input type="radio" name="tadd3" value="기타"><span>기타</span></label>
                        </div>
                        <div class="answer chatbot chat2"></div>    
                    </div>            
                </section>
    
                <section class="chatbot chat1" data-id="part_db_name">  
                    <div class="name">
                        <div class="question_box">
                            <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                            <div class="question"><span class="point">뉴스마일라식 혜택</span> 받으실 귀하의 성함을<br>입력해주세요</div>     
                        </div>
    
                        <div class="table_box rowBorder noHaveLabel">
                            <table>
                                <tbody>
                                    <tr>                   
                                        <td colspan="2"><input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="submit-name"><a href="javascript:void(0)">전송</a></div>                   
                        </div>  
                        <div class="result-txt name"><span></span></div>
                    </div>  
                </section>
    
<!--                <section class="chatbot chat1" data-id="part_db_age">  
                    <div class="name">
                        <div class="question_box">
                            <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                            <div class="question">다이어트 혜택받으실 귀하의 <b>나이</b>를<br>입력해주세요</div>      
                        </div>
                     
                        <div class="table_box rowBorder noHaveLabel">
                            <table>
                                <tbody>
                                    <tr>                   
                                        <td colspan="2"><input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/></td>
                                    </tr>
                                </tbody>
                            </table>
                           <div class="submit-age"><a href="javascript:void(0)">전송</a></div>                   
                        </div>  
                        <div class="result-txt age"><span></span></div>
                    </div>  
                </section>-->
    
    
                <section class="chatbot chat1" data-id="part_db_phone">  
                    <div class="name">
                        <div class="question_box">
                            <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                            <div class="question"><span class="point">뉴스마일라식 혜택</span> 받으실 귀하의 연락처를<br>입력해주세요</div>      
                        </div>
                        <div class="table_box rowBorder noHaveLabel">
                            <table>
                                <tbody>                        
                                    <tr>                  
                                        <td colspan="2"><input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처"></td>
                                    </tr>
                                </tbody>
                            </table>                  
                            <div class="submit-phone"><a href="javascript:void(0)">전송</a></div>
                        </div> 
                        <div class="result-txt phone"><span></span></div> 
                    </div>  
                </section>
    
                
                <section class="chatbot chat1" data-id="part_db_agree">  
                    <div class="name">
                        <div class="question_box">
                            <img class="profile" src="//static.resta.co.kr/event/v_${eventSeq}/profile.png">
                            <div class="question">
                                개인정보 처리 방침에 동의하시나요? <br>
                                <span class="btn-agreement"><u>자세히 보기</u></span>
                                <div class="db-txt">                                         
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
                            
                                <div class="description">
                                    <p id="event-period"></p>
                                    <div class="ad_txt">안심하세요! ${resVo.agent}>에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                    <span>대상 : ${resVo.target}</span> 
                                </div>
                            </div> 
                            </div>  
                            <div class="answer chatbot chat2">네(클릭)</div>  
                        </div>
                        <div class="submit submit-agree">
                            <input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"/>
                        </div>
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
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
		
		var today = new Date();
	    var year = today.getFullYear();
	    var month = ('0' + (today.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 +1 필요
	    var day = ('0' + today.getDate()).slice(-2);

	    var formattedDate = year + '년 ' + month + '월 ' + day + '일';

	    // 특정 요소에 날짜 출력
	    $('#date').text(formattedDate);
    })
    class ChatBot {
        $section = $('#select_container section');
        constructor() { //클래스가 시작되면 자동으로 실행되는 함수
            this.isSubmit = false; //Submit 이후 동작이 달라지는 항목들이 있어 변수 할당
            this.clone = [];

            $('#select_container').css('padding-top', $('#select_container .fixed').height()); //나중에 지우기
            $('#select_container').css('padding-bottom', $('#select_container .btm-fixed').height());
            this.go = false;
                
            this.clone_part(); //section 복제 실행
            this.show_part('part_1'); //첫번째 section 실행
        }
        select_section(part_id) { //this.s_sect 전역변수에 part_id로 선택된 TagObject를 할당
			this.s_sect = $("#select_container section[data-id='" + part_id + "']");
        }
        isPart(part_id) { //넘어온 part_id가 존재하는 section인지 확인
            return $(`section[data-id='${part_id}']`).is(`[data-id]`);
        }
        clone_part() { //각 섹션 Clone 해서 변수에 할당
            var part;
            var self = this;
            self.clone = [];
            $('#section_temp section').each(function(i,o) { //#section_temp 안에 사용할 section을 모두 담음
                part = $(o).data('id');
                if(part) self.clone[part] = $(o).clone(); //[data-id] 가 있어야 복제함
            });
        }

        scrollToEnd() { //스크롤 추가된 section 하단으로 이동
            $('#select_container').animate({scrollTop:$('#select_container').innerHeight()+$('#select_container').scrollTop()},1000);
        }

        show_part(part_id) { //section을 메세지창에 추가하는 함수
			var self = this;
            $(`section[data-id="${part_id}"]`).find('*').off('click').removeAttr('onclick');
            this.clone[part_id].appendTo('#select_container').addClass('animate__animated animate__fadeInUp'); //clone된 TagObject를 추가
            this.select_section(part_id); //part_id로 this.s_sect 변수에 TagObject 할당
            if(this.isSubmit === true) {
                this.s_sect.prev('section').prev('section').find('input,button,a').off('click').attr('onclick','return(false);');
            } else {
                this.s_sect.prev('section').find('input,button,a').off('click').attr('onclick','return(false);'); //추가 직후 이전 section에 있는 모든 태그에 click 바인딩을 해제
            }
            $('input:radio',this.s_sect).off('click').bind('click', function(e) { //input:radio 클릭 체크
                var s_val = this.value;
                if(self.isPart(s_val)) self.show_part(s_val); //radio에서 선택된 value값이 section[data-id] 와 같으면 실행
            });
			if (typeof eval("this." + part_id) == "function") eval("this." + part_id + "()"); //[data-id] 와 같은 메소드가 있으면 실행 //section별로 다른 함수를 실행하기 위해 사용
            this.scrollToEnd(); //스크롤 최하단으로
            this.clone_part();     
        }    
        part_intro(){ //04.28금요일
            var $container = this.s_sect;
            var self = this;
            var answer;

            $('.question_box input:radio',$container).bind('click', function(e) { //input:radio 클릭 체크
                var s_val = this.value;   
    
                $(this).parents('.question_box').find('.answer').show().addClass('animate__animated animate__fadeInUp sel');  
                $(this).parents('.question_box').find('.answer').text(s_val);  
            }); 
        }
        part_1() {
            //@ 비슷한 성공사례 설문
            //* part_1 에서는 각 항목이 section이 추가되는 것 처럼 처리
            var $container = this.s_sect;
            var self = this;
            var img = '';  

            $('.question_box:gt(0)',$container).hide(); //question_box 2개이상 hide 처리
            $('.question_box input:radio',$container).off('click').bind('click', function() {
                var s_val = this.value;   
                $(this).parents('.question_box').find('.q_select').hide();
                // $(this).parents('.question_box').find('.answer').css('margin-top','3%');
                $(this).parents('.question_box').find('.answer').show().addClass('animate__animated animate__fadeInUp sel');    
                $(this).parents('.question_box').find('.answer').text(s_val);  

                if(!$(this).parents('.question_box').next().hasClass('question_box')) { //radio 클릭되었을 때 다음 question_box가 없으면 section을 넘어가도록 처리                                
                    self.show_part('part_db_name');
                } else {
                    $(this).parents('.question_box').next().show().addClass('animate__animated animate__fadeInUp'); //다음 question_box를 show처리  
                    self.scrollToEnd();                    
                }
            });            
        }          
       
        part_db_name() {
            var $container = this.s_sect;
            var self = this;
            //@ DB입력 창   
           
            $(".submit-name a").bind("click", function (e) {
                if( $('input[name="name"]').val() == ''){
                    alert("이름을 입력해 주세요.");
                    return false;
                }else{
                    self.show_part('part_db_phone');
                    $(".submit-name").closest('.table_box').hide();   
                    $('.result-txt.name').show();               
                    $('.result-txt.name span').text($('input[name="name"]').val());
                }
            });             
        }

        part_db_phone(){
            var self = this;      

            $(".submit-phone a").bind("click", function (e) {
                if( $('input[name="phone"]').val() == ''){
                    alert("핸드폰 번호를 입력해 주세요.");
                    return false;
                }               
                else{
                    self.show_part('part_db_agree');
                    $(".submit-phone").closest('.table_box').hide();       
                    $('.result-txt.phone').show();           
                    $('.result-txt.phone span').text($('input[name="phone"]').val());
                }
            });         
        }

        part_db_agree(){
            var self = this;
           
            $(".btn-agreement").bind("click", function (e) {
                e.preventDefault();
                e.stopPropagation();
                $(".agreement").slideToggle();
            });  

        }
        submitCheck(valid) {
            //@ Submit 결과처리
            if(valid === true) {
                this.isSubmit = valid;
                this.show_part('part_result');
                console.log('동의가 완료 되었음');

                $('.submit-agree').hide();
                $('.question_box').find('.answer').show().addClass('animate__animated animate__fadeInUp sel');    
            }
        }
        part_result() {
           // this.show_part('part_result_question');
        }

       
    }
    let chatBot;
    $(document).ready(function() {
        setTimeout(function() { chatBot = new ChatBot(); },500);
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

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
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
			,'add3': '설문3'
			//,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>