<!-- JSP 새파일 생성시 기본 생성, 디비 사용시 PreparedStatement사용 선언 -->
<%@ page import="study.jsp.mysite.dao.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	//1. 데이터 받아오기
	request.setCharacterEncoding("utf-8");
	String dong = request.getParameter("dong");

	ResultSet rs = null;
	//2. db-select
	try {
		DBConnect usedb = new DBConnect();
		request.setCharacterEncoding("utf-8");

		usedb.connect(); // 접속
		
		// 구주소
		String sql = "select * from zipcode where dong like '%" + dong + "%'"; // 동으로 검색하여 레코드를 가져 옵니다
		
		// 신주소
		/* String sido[] = {"서울특별시", "부산광역시", "대구광역시", "인천광역시", "광주광역시", "대전광역시", "울산광역시", "세종특별자치시", "경기도",
		               "강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주특별자치도"};
		String sql = "";
		for(int i=0; i<sido.length; i++){
			
			sql = "select * from " + sido[i] + "where";
		} */
		rs = usedb.resultQuery(sql);
	} catch (Exception e) {
		e.printStackTrace();
	}
%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	// 우편번호 검색 창이 닫힐때 수행할 내용
	function checkPostClose(zipcode, address) {
		opener.myform.postcode.value = zipcode; // 회원가입폼에 우편번호값 입력
		opener.myform.addr1.value = address; // 회원가입폼에 첫번째 주소값 입력
		window.close(); // 창 종료
		opener.myform.addr2.focus(); // 회원가입폼의 두번째 주소박스에 커서이동
	}
	// 찾기 버튼 입력시 수행될 내용
	function checkSearch() {
		if (document.checkPostForm.dong.value == "")
			alert("동을 입력해주세요");
		else
			document.checkPostForm.submit();
	}
</script>
<!-- 스타일 지정 -->
<style>
body {
	font-size: 12pt
}

//
본문 폰트
th {
	font-size: 9pt
}

//
제목 폰트
td {
	font-size: 9pt
}

//
칸 폰트
a:link {
	color: black;
	text-decoration: none
}

//
링크 연결된 텍스트색
a:visited {
	color: black;
	text-decoration: none
}

//
방문했던 텍스트 색
a:hover {
	color: red;
	text-decoration: underline
}

//
마우스 오버시 텍스트 색
a:active {
	color: red;
	text-decoration: none
}
//
실행시

 

텍스트

 

색
</style>
</head>
<body>
	<!--submit 실행시 checkPost.jsp로 되돌아 갑니다.-->
	<form name="checkPostForm" method="post" action="${pageContext.request.contextPath}/member/zipsearch.do">
		<center>
			동입력 :
			<!-- 동 입력 상자 -->
			<input type="text" style="ime-mode: active;" name="dong"></input>
			<!-- 검색 버튼 -->
			<input type="button" name="search" value="검색"
				onClick="javascript:checkSearch()"></input><br></br>
			<!--출력테이블-->
			<table border="1" width="100%">
				<th width="15%">우편번호</th>
				<th>주소</th>
				<%
					// 값이 있는 경우 출력
					try {
						while (rs.next()) {
							// 가져온 각 필드의 데이터를 한문장의 스트링으로 변환
							String address = rs.getString("SIDO") + " " + rs.getString("GUGUN") + " " + rs.getString("DONG");
							if (rs.getString("RI") != null)
								address += rs.getString("RI"); // 회원가입폼의 주소1 란을 위한 변수
							String address2 = address;
							if (rs.getString("BUNJI") != null)
								address2 += rs.getString("BUNJI"); // 검색창의 화면 출력을 위한 변수
				%><tr>
					<!-- 우편번호 출력&클릭시 회원가입폼에 우편번호, 주소 입력됨-->
					<td width="15%"><a href="#"
						onClick="javascript:checkPostClose('<%=rs.getString("zipcode")%>','<%=address%>')"><%=rs.getString("zipcode")%></td>
					<!-- 주소 출력&클릭시 회원가입폼에 우편번호,주소 입력됨 -->
					<td align="left"><a href="#"
						onClick="javascript:checkPostClose('<%=rs.getString("zipcode")%>','<%=address%>')"><%=address2%></td>
				</tr>
				<%
					}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				%>
			</table>
		</center>
	</form>
</body>
</html>
