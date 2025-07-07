<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>MBC OTT - 게시판</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    @font-face {
      font-family: 'SacheonHangGong-Regular';
      src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2506-1@1.0/SacheonHangGong-Regular.woff2') format('woff2');
    }
    * { font-family: 'SacheonHangGong-Regular', sans-serif; }
    .table th, .table td { vertical-align: middle; }
  </style>
  <script type="text/javascript">
	function checkForm() {	
		if (${session==null}) {
			alert("로그인 해주세요.");
			return false;
		}

		location.href = "./BoardWriteForm.do?id=<%=session%>"
	}
	</script>
</head>
<body>
<div class="container py-3">
  <header class="mb-4">
    <div class="d-flex justify-content-between align-items-center border-bottom pb-3">
      <a href="<c:url value='/jsp/main.jsp' />" class="d-flex align-items-center text-decoration-none">
        <img src="<c:url value='/img/mbclogo.png' />" alt="MBC" width="60" height="25">
        <span class="fs-4 text-primary fw-bold ms-2">MBC OTT</span>
      </a>
      <nav>
        <a href="<c:url value='/jsp/search.jsp' />" class="me-3">검색</a>
        <a href="<c:url value='/jsp/login.jsp' />" class="me-3">로그인</a>
        <a href="<c:url value='/jsp/register.jsp' />">회원가입</a>
      </nav>
    </div>
  </header>

  <main>
    <div class="text-center mb-5">
      <h1 class="fw-bold">고객 센터</h1>
      <p class="text-muted">Customer Service</p>
    </div>

    <div class="d-flex justify-content-end mb-3">
      <a href="BoardWriteForm.do" class="btn btn-primary">✏ 문의 남기기</a>
    </div>

    <table class="table table-hover text-center border-top">
      <thead class="table-light">
        <tr>
          <th style="width: 8%">번호</th>
          <th style="width: 40%">제목</th>
          <th style="width: 20%">작성일</th>
          <th style="width: 10%">조회</th>
          <th style="width: 12%">글쓴이</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="row" items="${boardlist}">
          <tr>
            <td>${row.num}</td>
            <td class="text-start">
              <a href="BoardViewAction.do?num=${row.num}&pageNum=${pageNum}" class="text-decoration-none">${row.subject}</a>
            </td>
            <td>${row.regist_day}</td>
            <td>${row.hit}</td>
            <td>${row.name}</td>
          </tr>
        </c:forEach>
        <c:if test="${empty boardlist}">
          <tr><td colspan="5" class="text-muted py-4">등록된 글이 없습니다.</td></tr>
        </c:if>
      </tbody>
    </table>

    <form method="get" action="BoardListAction.do" class="d-flex align-items-center mt-4">
      <select name="items" class="form-select w-auto me-2">
        <option value="subject">제목에서</option>
        <option value="content">내용에서</option>
        <option value="name">글쓴이</option>
      </select>
      <input type="text" name="text" class="form-control w-25 me-2" placeholder="검색어를 입력하세요">
      <button type="submit" class="btn btn-primary">검색</button>
    </form>

    <div class="text-end mt-3">
      <span class="badge bg-success">전체 ${total_record}건</span>
    </div>
  </main>

  <footer class="pt-4 my-md-5 pt-md-5 border-top">
         <div class="row">
            <div class="col-12 col-md">
               <img class="mb-2" src="<c:url value='/img/mbclogo.png' />" alt="" width="60"
                  height="25"> <small class="d-block mb-3 text-muted">&copy;
                  2025</small>
            </div>
            <div class="col-6 col-md">
               <h5>문의</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none" href="#">고객
                        센터</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">자주
                        묻는 질문</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">문의하기</a></li>
               </ul>
            </div>
            <div class="col-6 col-md">
               <h5>계정</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none"
                     href="<c:url value='/jsp/update.jsp' />">개인정보 수정</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">마이페이지</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">구독
                        변경</a></li>
               </ul>
            </div>
            <div class="col-6 col-md">
               <h5>회사</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none" href="#">회사
                        정보</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">입사
                        정보</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">투자
                        정보</a></li>
               </ul>
            </div>
         </div>
      </footer>
   </div>

   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>