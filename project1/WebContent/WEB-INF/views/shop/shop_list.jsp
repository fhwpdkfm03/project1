<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<style type="text/css">
/* 헤더칸 스크롤숨기기 */
.navbar-collapse{
	max-height: 400px;
}

/* 글자 간격 및 짤림방지 */
.caption{
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.caption p{
	text-align: right;
	margin-top: 8px;
}
/* 분양중,신청인원 링크제거 */
.caption span{
	text-decoration: none;
	color: #000;
}
hr{
	border: 1.5px solid rgb(190, 190, 190);
}
.btn-primary{
	background-color: #2457BD;
}

/*navbar media 쿼리 시작*/
@media(max-width: 767px){
	.thumbnail{
		min-height: 330px;
	}
	.thumbnail img{
		max-width: 708px;
		min-height: 533px;
	}
}
@media(min-width: 768px) and (max-width: 991px){
	.thumbnail{
		min-height: 300px;
	}
	.thumbnail img{
		min-height: 350px;
	}
}
@media(min-width: 992px) and (max-width: 1199px){
	.thumbnail{
		min-height: 250px;
	}
	.thumbnail img{
		min-height: 210px;
	}					
}
@media(min-width: 1200px){
	.thumbnail{
		min-height: 300px;
	}
	.thumbnail img{
		min-height: 260px;
	}	
}


th:first-child {
	width: 10%;
}

th:nth-child(2) {
	width: 50%;
}

th:nth-chlid(3) {
	width: 15%;
}

th:nth-chlid(4) {
	width: 15%;
}

th:last-chlid(4) {
	width: 10%;
}
.pagination>.active>a, .pagination>.active>span, .pagination>.active>a:hover, .pagination>.active>span:hover, .pagination>.active>a:focus, .pagination>.active>span:focus {
    z-index: 2;
    color: #fff;
    background-color: #005E75;
    border-color: #005E75;
    cursor: default;
    border-radius: 10px;
}
</style>
<!-- 개인 JS -->
</head>
<body>
	<div class="container">
		<%@ include file="/WEB-INF/inc/topbar.jsp"%>
		<br id="space">
		<!-- 리스트 시작 -->
		<section style="min-height: 850px;">
			<div class="content">
				<h2 class="noti">상품목록</h2>
				<small id="small1">AS의 입양 게시판입니다.</small> <small id="small2"><span
					class="glyphicon glyphicon-home"></span> &gt; 입양</small>
				<hr>
				<ul class="nav nav-tabs">
					<li class="active"><a href="#all" data-toggle="tab">드레스</a></li>
					<li><a href="#ing" data-toggle="tab">웨딩홀</a></li>
					<li><a href="#end" data-toggle="tab">음식</a></li>
				</ul>
				<!--// 탭 메뉴 끝 -->
				<br id="space">
				<!-- 탭 화면 시작 -->
				<div class="tab-content">
					<div class="tab-pane fade in active" id="all">
						<!-- 한 라인 시작 -->
						<div class="row">
							<!-- 게시물 하나 시작 -->
							<c:choose>
								<c:when test="${fn:length(documentList) > 0}">
									<c:forEach var="ani" items="${aniList}">
										<c:if test="${ani.anistat == '진행' || ani.anistat == '종료'}">
											<div class="col-sm-6 col-md-3">
												<div class="thumbnail">
													<c:url var="readUrl" value="/ani/ani_det.do">
														<c:param name="ani_id" value="${ani.anino}" />
														<c:param name="ani_file" value="${ani.file}" />
													</c:url>
													<a href="${readUrl}"> <c:choose>
															<c:when test="${ani.file != null}">
																<c:url var="downloadUrl" value="/download.do">
																	<c:param name="file" value="${ani.file}" />
																</c:url>
																<img src="${downloadUrl}" class="img-responsive" />
															</c:when>
															<c:otherwise>
																<img
																	src="${pageContext.request.contextPath}/img/no_image.jpg"
																	class="img-responsive" />
															</c:otherwise>
														</c:choose>
													</a>
													<div class="caption">
														<c:if test="${ani.anistat == '진행'}">
															<span class="label label-primary">${ani.anistat}</span>
															<c:url var="readUrl" value="/ani/ani_det.do">
																<c:param name="ani_id" value="${ani.anino}" />
																<c:param name="ani_file" value="${ani.file}" />
															</c:url>
															<a href="${readUrl}">${ani.anititle}</a>
														</c:if>
														<c:if test="${ani.anistat == '종료'}">
															<span class="label label-danger">${ani.anistat}</span>
															<c:url var="readUrl" value="/ani/ani_det.do">
																<c:param name="ani_id" value="${ani.anino}" />
																<c:param name="ani_file" value="${ani.file}" />
															</c:url>
															<a href="${readUrl}"
																style="text-decoration: line-through;">${ani.anititle}</a>
														</c:if>
														<p>신청 인원 [ ${ani.anicount} / 5 ]</p>
													</div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="text-center" style="line-height: 100px;">입양
										글이 없습니다.</div>
								</c:otherwise>
							</c:choose>
							<!-- 게시물 하나 끝 -->
						</div>
						<!-- 한 라인 끝 -->
					</div>

					<div class="tab-pane fade" id="ing">
						<!-- 한 라인 시작 -->
						<div class="row">
							<!-- 게시물 하나 시작 -->
							<c:choose>
								<c:when test="${fn:length(aniList) > 0}">
									<c:forEach var="ani" items="${aniList}">
										<c:if test="${ani.anistat == '진행'}">
											<div class="col-sm-6 col-md-3">
												<div class="thumbnail">
													<c:url var="readUrl" value="/ani/ani_det.do">
														<c:param name="ani_id" value="${ani.anino}" />
													</c:url>
													<a href="${readUrl}"> <c:choose>
															<c:when test="${ani.file != null}">
																<c:url var="downloadUrl" value="/download.do">
																	<c:param name="file" value="${ani.file}" />
																</c:url>
																<img src="${downloadUrl}" class="img-responsive" />
															</c:when>
															<c:otherwise>
																<img
																	src="${pageContext.request.contextPath}/img/no_image.jpg"
																	class="img-responsive" />
															</c:otherwise>
														</c:choose>
													</a>
													<div class="caption">
														<span class="label label-primary">${ani.anistat}</span>
														<c:url var="readUrl" value="/ani/ani_det.do">
															<c:param name="ani_id" value="${ani.anino}" />
														</c:url>
														<a href="${readUrl}">${ani.anititle}</a>

														<p>신청 인원 [ ${ani.anicount} / 5 ]</p>
													</div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="text-center" style="line-height: 100px;">분양중인
										글이 없습니다.</div>
								</c:otherwise>
							</c:choose>
							<!-- 게시물 하나 끝 -->
						</div>
						<!-- 한 라인 끝 -->
					</div>

					<div class="tab-pane fade" id="end">
						<!-- 한 라인 시작 -->
						<div class="row">
							<!-- 게시물 하나 시작 -->
							<c:choose>
								<c:when test="${fn:length(aniList) > 0}">
									<c:forEach var="ani" items="${aniList}">
										<c:if test="${ani.anistat == '종료'}">
											<div class="col-sm-6 col-md-3">
												<div class="thumbnail">
													<c:url var="readUrl" value="/ani/ani_det.do">
														<c:param name="ani_id" value="${ani.anino}" />
													</c:url>
													<a href="${readUrl}"><c:choose>
															<c:when test="${ani.file != null}">
																<c:url var="downloadUrl" value="/download.do">
																	<c:param name="file" value="${ani.file}" />
																</c:url>
																<img src="${downloadUrl}" class="img-responsive" />
															</c:when>
															<c:otherwise>
																<img
																	src="${pageContext.request.contextPath}/img/no_image.jpg"
																	class="img-responsive" />
															</c:otherwise>
														</c:choose> </a>
													<div class="caption">
														<span class="label label-danger">${ani.anistat}</span>
														<c:url var="readUrl" value="/ani/ani_det.do">
															<c:param name="ani_id" value="${ani.anino}" />
															<c:param name="ani_file" value="${ani.file}" />
														</c:url>
														<a href="${readUrl}"
															style="text-decoration: line-through;">${ani.anititle}</a>

														<p>신청 인원 [ ${ani.anicount} / 5 ]</p>
													</div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="text-center" style="line-height: 100px;">분양종료
										글이 없습니다.</div>
								</c:otherwise>
							</c:choose>
							<!-- 게시물 하나 끝 -->
						</div>
						<!-- 한 라인 끝 -->
					</div>
				</div>
			</div>
		</section>
		
		<br /> <br /> <br />
		
		<!-- 글쓰기 버튼 -->
		<c:choose>
			<c:when test="${loginInfo != null}">
				<!-- 글 쓰기 버튼 -->
				<div class="container" align="right">
					<button id="wbtn" class="btn btn-primary "
						onclick="location.href='ani_write.do'">
						<span class="glyphicon glyphicon-pencil">글 작성</span>
					</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="pull-right">
					<p>글 작성은 로그인 후에 이용 가능합니다.</p>
				</div>
			</c:otherwise>
		</c:choose>

	<!-- 하단 공통 영역 처리 -->
	<%@ include file="/WEB-INF/inc/bbs_list_bottom.jsp" %>
</div>
<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>