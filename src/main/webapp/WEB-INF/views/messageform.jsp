<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>

<body style="font-family: 'Sunflower', sans-serif;">
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">쪽지 보내기</h2><p>&nbsp;</p>
        <form action="sendmessage.food" method="post">
            <div class="table table-responsive">
            <table class="table table-striped">
            <tr>
                <td>ID</td>
                <td><input type=input name='sendid' id='sendid' size=42 value="${id }" readonly="readonly"></td>
            </tr>         
                      
            <tr>
                <td>받는사람 ID</td>
                <td><input type=input name='receiveid' id='receiveid' size=42></td>
            </tr>
            
            <tr>
                <td>제목</td>
                <td colspan="3"><input type=input name='title' id='title'  size=42></td>
            </tr>

            <tr>
                <td>쪽지 내용</td>
                <td colspan="3"><textarea name="message" id='message'  style="width: 100%; height: 200px"></textarea></td>
            </tr>
             <br><br>
            <tr>  
                <td colspan="4"  class="text-center">
                    <input type="submit" value="쪽지 보내기" class="btn btn-warning"><br>
                </td>
            <tr>  
            <tr>  
            	<td colspan="4"  class="text-center">
                    <input type="button"  class="btn btn-primary" onclick="location.href='allreceivemessage.food'" value="돌아가기">
                </td>
            <tr>  
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