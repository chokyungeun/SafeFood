<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center">게시글 수정</h2><p>&nbsp;</p>
        <form action="updatelist.food" method="post">
            <div class="table table-responsive">
                      <table class="table table-striped">
            <tr>
                <td>작성자</td>
                <td><input type=input name='name' size=42  value="${cc.name }" readonly="readonly"></td>
                <td>날짜</td>
                <td><input type=input name='wdate' size=42  value="${cc.wdate }" readonly="readonly"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td colspan="3"><input type=input name='title' size=42  value="${cc.title }"></td>
            </tr>

            <tr>
                <td>글내용</td>
                <td colspan="3"><textarea  name="content">${cc.content }</textarea></td>
            </tr>
             
            <tr>  
                <td colspan="4"  class="text-center">
                    <input type="hidden" name="num"  value="${cc.num }">
                    <input type="submit" value="글수정" class="btn btn-warning">
                    <input type="button"  class="btn btn-primary" onclick="location.href='boardlist.food'" value="전체글보기">
                </td>
            </tr>
          </table>
         
     
            </div>
        </form>   
    </div>
</div>
 

<script>
CKEDITOR.replace('content', {
         
    width:'100%',
    height:'350'
         
});
 
</script>
</body>
</html>