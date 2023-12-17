<link rel="stylesheet" href="/whole/css/Sharing.css">
<link rel="stylesheet" href="/whole/css/item_detail.css">
<link rel="stylesheet" href="/whole/css/header.css">

<head>
<meta charset="UTF-8" />
<title>나눔 장터</title>
</head>

<body>
 
<!-- 헤더 
 -->	<div class="header">
            <nav class="navbar">
                <div class="navbar_logo1"><img class="logo1" onClick="location.href='findPw.html'" src="/whole/img/ic_logo.png"></div>
                <ul class="navbar_text">
                    <li><span onClick="location.href='findPw.html'">나만의 냉장고</span></li>
                    <li><span class="text2" onClick="location.href='findPw.html'">나눔, 장터</li>
                    <li><span class="text2" onClick="location.href='findPw.html'">같이 가치</li>
                </ul>
                <ul class="navbar_img">
                    <li><img class="logo_left" src="/whole/img/market/ic_message.png" onClick="location.href='findPw.html'"></li>
                    <li><img class="logo_left" src="/whole/img/market/ic_bell.png" onClick="location.href='findPw.html'"></li>
                    <li><p class="logo_left">MY</p></li>
                </ul>
            </nav>
    </div>
	
	<div class="wrap">
		<div class="wrap_content">
			<div class="sub_wrap">
				<div class="sub_title">
					<p>
						나누는 즐거움<br /> 소소한 용돈 벌이
					</p>
					<div class="search">
						<img id="search_img" src="/whole/img/market/Look.png" alt=" " width="35px"
							height="35px"> <select>
							<option value="제목">제목</option>
							<option value="내용">내용</option>
							<option value="작성자">작성자</option>
						</select> <input id="search_keyword" value="원하는 키워드를 검색하세요"></input>
						<button id="search_btn" type="button" value="검색">검색</button>
					</div>
				</div>

				<div class="sub_logo">
					<img src="/whole/img/market/Logo.png" alt=" " width="350px" height="300px" />
				</div>

			</div>
			<div class="main_content">
				<div class="main_content_detail">
					<div class="tag_btns">
						<button id="btn-01">#전체</button>
						<button id="btn-02">#생활꿀팁</button>
						<button id="btn-03">#잡담</button>
						<button id="btn-04">#음식속보</button>
					</div>
					<div class="item_list">
							<c:forEach var="item" items="${marketList}">
								<div class="item-detail">
								<a
									href="<c:url value='/market/post/detail'>
												<c:param name='postId' value='${item.postId}'/> 
											</c:url>">
									<div class="item_img">
									<img src="${item.image}" alt="이미지를 찾을 수 없음" />
									</div>
									<div id="item-title">${item.title}</div>
									<div id="item-price">
										<p>${item.price}원</p>
									</div>
									<div id="item-uploadtime">
										<p>${item.regDate}</p>
									</div>
								</a>
						</div>
						</c:forEach>
						
					</div>
				</div>


			</div>
		</div>
	</div>
	</div>
	</div>
	<script src="/whole/js/share.js"></script>
</body>

</html>