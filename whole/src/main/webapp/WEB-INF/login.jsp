<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="./login.css">
<meta charset="UTF-8">
	<p class="headText">
    	Whole�� 
    <img class="logo1" src="./ic_logo.png"></p>
</head>
<body>
    <div style="text-align: center; margin-top: 118px;">
    <img class="logo2" src="./img/ic_logo.png">
    <p class="text1">Ȧ��,</p>
    <p class="text2">����� Ȧ�μ��⸦ �����մϴ�.</p>
    <div class="login">
    <form>
        <p><input class="userInfo" type="email" name="email" placeholder="�̸���" required></p>
        <p><input class="userInfo" type="password" name="pw" placeholder="��й�ȣ" required></p>
        <p class="autoLogin">
            <input  type="checkbox" name="autoLogin" value="autoLogin">�α��� ����
            <br>
        </p>
        <input class="loginButton"type="submit" value="�α���">
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
        <span class="text2" onClick="location.href='findPw.html'">  ȸ�������Ϸ�����</span>
    </p>   
    </div>
</body>
</html>