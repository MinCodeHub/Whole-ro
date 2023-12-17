<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/whole/css/myRefg/postForm.css">
	   <link rel="stylesheet" href="/whole/css/header.css">
	   
</head>
<body>
        <%@ include file="../fragments/header.jsp"%>
   
    <div class="write_myrefri" style="text-align: center; margin-top: 100px;">
        <form>
            <p class="write_myrefri"><input class="write_myrefri" type="text" name="title" placeholder="제목" required></p>
            <p class="epDate"> 유통기한 <input type="date" name="epDate" required>  까지  
                <select class="kind_01" name="kind_01">
                    <option value="1">가공식품</option>
                    <option value="2">자연식품</option>
                </select>
                <select class="kind_01" name="kind_02">
                    <option value="1">개봉</option>
                    <option value="2">미개봉</option>
                </select>
            </p>
            <div style="display: inline-block;" class="content">
                <textarea class="content" type="text" name="content" placeholder="메모를 입력해주세요."></textarea>
                <hr>
                <p><input type="file" class="fileUpload"/></p>
            </div>
            <div class="button">
                <input class="postButton" type="submit" value="업로드">
                <input class="cancelButton"type="submit" value="취소">
            </div>
        </form>
    </div>
</body>
</html>