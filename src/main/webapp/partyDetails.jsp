<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모임방 피드</title>
    <link rel="stylesheet" href="css/partyDetails.css">
</head>

<!-- about -->
    <div class="about">
        <a class="bg_links social portfolio" href="./myPage.jsp">
            <span class="icon"></span>
        </a>
       
        <a class="bg_links social linkedin" href="./login.jsp">
            <span class="icon"></span>
        </a>
        <a class="bg_links logo"></a>
    </div>

<body>
    <div class="feed-container">
        <div class="meeting-card">
            <!-- 모임방 이미지 -->
            <div class="meeting-image">
                <img src="" alt="모임방 이미지">
            </div>

            <!-- 모임방 제목 -->
            <div class="meeting-title">
                <h2><strong> </strong> ${party.partyNm}</h2>
            </div>

            <!-- 모임방 소개 -->
            <div class="meeting-description">
                <c:if test="${not empty party}">
        	
        	<p><strong>방 소개:</strong> ${party.partyInfo}</p>
        	<p><strong>방 지역:</strong> ${party.partyRegion}</p>
        	<p><strong>방 생성자:</strong> ${party.userId}</p>
        	<p><strong>생성 날짜:</strong> ${party.createdAt}</p>
    </c:if>
    		<c:if test="${empty party}">
        	<p>해당 방의 정보를 찾을 수 없습니다.</p>
    </c:if>
            </div>

            <!-- 가입하기 버튼 -->
            <div class="join-button">
            <form action="<%= request.getContextPath() %>/createJoinRequest" method="get">
            	<input type="hidden" name="partyIdx" value="${party.partyIdx}">
                <button onclick="joinMeeting()" type="submit" class="btn btn-primary" >가입하기</button>
                </form>
            </div>
            
        </div>
    </div>
</body>
</html>
