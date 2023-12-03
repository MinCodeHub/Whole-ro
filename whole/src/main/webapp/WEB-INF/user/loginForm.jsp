<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="/whole/css/login.css">
<meta charset="UTF-8">
	<p class="headText">
    	Whole�� 
    <img class="logo1" src="../../img/ic_logo.png"></p>
    
<script language="JavaScript">
function login() {
	if (form.email.value == "") {
		alert("����� ID�� �Է��Ͻʽÿ�.");
		form.email.focus();
		return false;
	} 
	if (form.password.value == "") {
		alert("��й�ȣ�� �Է��Ͻʽÿ�.");
		form.password.focus();
		return false;
	}		
	form.submit();
}

function userCreate(targetUri) {
	form.action = targetUri;
	form.method="GET";		// register form ��û
	form.submit();
}
</script>
</head>
<body>
    <div style="text-align: center; margin-top: 118px;">
    <img class="logo2" src="/whole/img/ic_logo.png">
    <p class="text1">Ȧ��,</p>
    <p class="text2">����� Ȧ�μ��⸦ �����մϴ�.</p>
    <div class="login">
    <form name="form" method="POST" action="<c:url value='/user/login' />">
    	<!--<input type="text" style="width:240" name="email">
    	<input type="password" style="width:240" name="password">-->
        <p><input class="userInfo" type="email" name="email" placeholder="�̸���" required></p>
        <p><input class="userInfo" type="password" name="password" placeholder="��й�ȣ" required></p> 
        <p class="autoLogin">
            <input  type="checkbox" name="autoLogin" value="autoLogin">�α��� ����
            <br>
        </p>
        <input class="loginButton"type="submit" value="�α���" onClick="login()">
    </form>  
    </div>
    <hr style="margin-top: 72px; margin-bottom: 32px; width: 400px;"> 
    <div style="margin-bottom: 35px;">
        <span class="find" onClick="location.href='findId.html'">���̵� ã��</span>
        <span style="margin-left: 22px; margin-right: 22px;">|</span>
        <span class="find" onClick="location.href='findPw.html'">��й�ȣ ã��</span>
    </div> 
    <p>
        <span class="text1">Ȧ�ΰ� ó���̽Ű���?</span>
        <span class="text2" onClick="userCreate('<c:url value='/user/register/agreeTerms'/>')">  ȸ�������Ϸ�����</span>
    </p>   
    </div>
</body>
</html>