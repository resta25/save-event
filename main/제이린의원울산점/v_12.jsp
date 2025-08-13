<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
    html{
        height: 100%;
    }
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #333F50;}
	.content * {padding: 10px;}
</style>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg" alt="landing_top" class="landing_top">
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <ul class="layout_add01 question">
                        <li>해당되는 피부 고민을 선택해주세요</li>
                    </ul>
                    <ul class="layout_add02">
                        <li>
                            <label><input type="radio" name="tadd1" value="팔자주름" class="answer">팔자주름</label>
                            <label><input type="radio" name="tadd1" value="심부볼" class="answer">심부볼</label>
                            <label><input type="radio" name="tadd1" value="이중턱" class="answer">이중턱</label>
                            <label><input type="radio" name="tadd1" value="기타" class="answer">기타</label>
                        </li>
                    </ul>
                    <p id="event-period"></p>
                    <table>
                        <colgroup>
                            <col width="30%">
                            <col width="70%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="branch_th">*지점 선택</th>
                                <td class="branch_td">
                                    <div class="wrap_radio">
                                        <label><input type="radio" name="branch" class="store-radio"> 울산점 </label>
                                    </div>
                                    <script>
                                        document.addEventListener('DOMContentLoaded', function() {
                                            var storeRadios = document.querySelectorAll('.store-radio');
                                            if (storeRadios.length === 1) {
                                                storeRadios[0].checked = true;
                                            }
                                        });
                                    </script>
                                </td>
                            </tr>
                            <tr>
                                <th>*이름</th>
                                <td><input type="text" placeholder="이름을 입력해주세요." id="name" name="name"></td>
                            </tr>
                            <tr>
                                <th>*나이</th>
                                <td><input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요."></td>
                            </tr>
                            <tr>
                                <th>*휴대폰번호</th>
                                <td><input type="tel" placeholder="연락처를 입력해주세요." id="phone" name="phone" maxlength="11" value="010"></td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="wrap_checkbox">
                        <div>
                            <label><input type="checkbox" name="agBox" id="privacyCheckbox" value="y" name="terms">개인정보이용동의</label>
                            <label id="agree">[자세히보기]</label>
                        </div>
                    </div>
                    <button type="button" class="btn_submit b_point" onclick="fnForm('form-1')">이벤트<br>신청하기</button>

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

                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
                
            <!-- <div class="wrap_applicants">
                <p>현재까지 신청자</p>
                <ul class="subscribe"></ul>
            </div> -->
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    개인정보처리방침<br>
                    병원 제휴의 요청 개인정보 수집 및 이용 동의<br>
                    <br>
                    [개인정보 수집 및 이용 동의]<br>
                    <br />
                    - 수집 · 이용 주체 : 이벤트 신청<br>
                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br>
                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br>
                    - 보유 및 이용 기간 : 의료법 등 관련 병령에서 정한 보존 기간<br>
                    <br>
                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.<br>
                    * 고객 동의 철회 시 지체없이 파기합니다.<br>
                    <br>
                    [개인정보 처리위탁 동의]<br />
                    <br>
                    - 수탁자 : 병원 제휴의 요청<br>
                    - 위탁 업무 내용<br>
                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                    └ 고객정보 서버 운영 및 관리<br />
                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        
        // //신청현황 리스트
        // getComment(`${eventSeq}`);
        // $('.wrap_applicants').on("click", ".btn_moreSubscribe", function(e) {
        //     $('.btn_moreSubscribe').prop('disabled', true);
        //     e.preventDefault();
        //     getComment(`${eventSeq}`);
        // });
    });
    
    // function returnComment(resultData, meoreData){
	// 	var today = new Date();   
	// 		var month = today.getMonth() + 1;
	// 		var dateNum;
	// 	$('.subscribe').each(function(idx,obj) {
	// 		var data = resultData;
			
	// 		for(v in resultData) {
	// 			var html  = '<div class="content" data-id="'+ data[v].seq +'">';
	// 				html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
	// 				html += '	<div class="msg">'+ data[v].memo +'</div>';
	// 				html += '	<div class="date">'+ data[v].regDate +'</div>';
	// 				html += '</div>';
				
	// 			$(obj).append(html);
	// 		}
	// 		// 기존 버튼 제거 후 다시 추가
	//         $('.wrap_applicants .btn_moreSubscribe').remove();

	//         if(meoreData > 10) {
	//             $('.subscribe').after('<button type="button" class="btn_moreSubscribe">더보기 ▼</button>');
	//         }
	// 	});
	// }
	
	var modal2 = document.getElementById("modal2");
	var agree = document.getElementById("agree");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.getElementById('phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	});

    //submit
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
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>