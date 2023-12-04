<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.service.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- �ڵ����� shift +alt + F -->
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/whole/css/Sharing.css">
<link rel="stylesheet" href="/whole/css/item_detail.css">
<link rel="stylesheet" href="/whole/css/header.css">

<head>
<meta charset="UTF-8" />
<title>���� ����</title>
</head>

<body>
 
<!-- ��� 
 -->	<div class="header">
            <nav class="navbar">
                <div class="navbar_logo1"><img class="logo1" onClick="location.href='findPw.html'" src="/whole/img/ic_logo.png"></div>
                <ul class="navbar_text">
                    <li><span onClick="location.href='findPw.html'">������ �����</span></li>
                    <li><span class="text2" onClick="location.href='findPw.html'">����, ����</li>
                    <li><span class="text2" onClick="location.href='findPw.html'">���� ��ġ</li>
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
						������ ��ſ�<br /> �Ҽ��� �뵷 ����
					</p>
					<div class="search">
						<img id="search_img" src="/whole/img/market/Look.png" alt=" " width="35px"
							height="35px"> <select>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="�ۼ���">�ۼ���</option>
						</select> <input id="search_keyword" value="���ϴ� Ű���带 �˻��ϼ���"></input>
						<button id="search_btn" type="button" value="�˻�">�˻�</button>
					</div>
				</div>

				<div class="sub_logo">
					<img src="/whole/img/market/Logo.png" alt=" " width="350px" height="300px" />
				</div>

			</div>
			<div class="main_content">
				<div class="main_content_detail">
					<div class="tag_btns">
						<button id="btn-01">#��ü</button>
						<button id="btn-02">#��Ȱ����</button>
						<button id="btn-03">#���</button>
						<button id="btn-04">#���ļӺ�</button>
					</div>
					<div class="item_list">
							<c:forEach var="item" items="${marketList}">
								<div class="item-detail">
								<a
									href="<c:url value='/market/post/detail'>
												<c:param name='postId' value='${item.postId}'/> 
											</c:url>">
									<div class="item_img">
									<img src="${item.image}" alt="�̹����� ã�� �� ����" />
									</div>
									<div id="item-title">${item.title}</div>
									<div id="item-price">
										<p>${item.price}��</p>
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