<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="model.service.*" %>

<!-- �ڵ����� shift +alt + F -->
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<title>���� ����</title>
<script>
function userCreate(targetUri) {
	form.action = targetUri;
	form.method="GET";		// register form ��û
	form.submit();
}
</script>
</head>

<body>

<form name="form" method="POST" action="<c:url value='/market/postlist/' />">
  <table style="width:100%">
	<tr>
	  <td width="20"></td>
	  <td>
	  	<b>UserMan3a</b><br><br>
	   	<table>
	   	  <tr>
		    <td class="title">&nbsp;&nbsp;����� ���� - �α���&nbsp;&nbsp;</td>
		  </tr>
	    </table>  
		
	    <!-- �α����� ������ ��� exception ��ü�� ����� ���� �޽����� ��� -->	  
	  
	    <br>	  
	    <table style="width:100%">
		  <tr>
			<td align=left>
			<input type="button" value="�α���" > &nbsp;
			<input type="button" value="��ȸ�ϱ�" onClick="userCreate(
								'<c:url value='/market/postlist'/>')">
			</td>						
		  </tr>
		  <tr height="40"><td>(������ �α���: admin/admin)</td></tr>
	    </table>
	  </td>	  
	</tr>
	<tr height="100"><td>&nbsp;</td>
	  <td>
		<a href="http://cs.dongduk.ac.kr">
		  <img src="<c:url value='/images/logo.gif' />" /></a>		
	  </td>
	</tr>
  </table>  
</form>

			
</body>

</html>