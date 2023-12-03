<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.service.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- �ڵ����� shift +alt + F -->
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/whole/css/Sharing.css">
<link rel="stylesheet" href="/whole/css/item_detail.css">
<head>
<meta charset="UTF-8" />
<title>���� ����</title>
</head>

<body>
	<div class="header">���</div>
	<div class="wrap">
		<div class="wrap_content">
			<div class="sub_wrap">
				<div class="sub_title">
					<p>
						������ ��ſ�<br /> �Ҽ��� �뵷 ����
					</p>
					<div class="search">
						<img id="search_img" src="../../img/market/Look.png" alt=" " width="35px"
							height="35px"> <select>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="�ۼ���">�ۼ���</option>
						</select> <input id="search_keyword" value="���ϴ� Ű���带 �˻��ϼ���"></input>
						<button id="search_btn" type="button" value="�˻�">�˻�</button>
					</div>
				</div>

				<div class="sub_logo">
					<img src="../../img/market/Logo.png" alt=" " width="350px" height="300px" />
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
						<!-- a href="./Item_detail.html">
								\

								<div class="item-detail">
									<div id="item-title">
										<p>[����]���� �Ⱦƿ�</p>
									</div>
									<div id="item-price">
										<p>30,000��</p>
									</div>
									<div id="item-estate">
										<p>���ϱ�</p>
									</div>
									<div id="item-uploadtime">
										<p>2000-11-01 17:09</p>
									</div>
								</div>
							</a>
						</div>

						<div class="item">
							<div class="item_img"></div>
							<div class="item-detail">
								<div id="item-title">
									<p>[����]���� �Ⱦƿ�</p>
								</div>
								<div id="item-price">
									<p>30,000��</p>
								</div>
								<div id="item-estate">
									<p>���ϱ�</p>
								</div>
								<div id="item-uploadtime">
									<p>2000-11-01 17:09</p>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="item_img"></div>
							<div class="item-detail">
								<div id="item-title">
									<p>[����]���� �Ⱦƿ�</p>
								</div>
								<div id="item-price">
									<p>30,000��</p>
								</div>
								<div id="item-estate">
									<p>���ϱ�</p>
								</div>
								<div id="item-uploadtime">
									<p>2000-11-01 17:09</p>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="item_img"></div>
							<div class="item-detail">
								<div id="item-title">
									<p>[����]���� �Ⱦƿ�</p>
								</div>
								<div id="item-price">
									<p>30,000��</p>
								</div>
								<div id="item-estate">
									<p>���ϱ�</p>
								</div>
								<div id="item-uploadtime">
									<p>2000-11-01 17:09</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="item_img"></div>
							<div class="item-detail">
								<div id="item-title">
									<p>[����]���� �Ⱦƿ�</p>
								</div>
								<div id="item-price">
									<p>30,000��</p>
								</div>
								<div id="item-estate">
									<p>���ϱ�</p>
								</div>
								<div id="item-uploadtime">
									<p>2000-11-01 17:09</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="item_img"></div>
							<div class="item-detail">
								<div id="item-title">
									<p>[����]���� �Ⱦƿ�</p>
								</div>
								<div id="item-price">
									<p>30,000��</p>
								</div>
								<div id="item-estate">
									<p>���ϱ�</p>
								</div>
								<div id="item-uploadtime">
									<p>2000-11-01 17:09</p>
								</div>
								-->
					</div>
				</div>


			</div>
		</div>
	</div>
	</div>
	</div>
	<script src="../../js/share.js"></script>
</body>

</html>