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
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">게시글 작성</h2><p>&nbsp;</p>
        <form action="insertprocess.food" method="post">
            <div class="table table-responsive">
                      <table class="table table-striped">
            <tr>
                <td>칼로리</td>
                <td><input type=input name='calory' size=42 ><b>칼로리</b></td>
               
            </tr>
            
            <tr>
                <td>알레르기 유발 재료</td>
                <td colspan="3"><input type=input name='allergy' size=42><b>ex)달걀, 키위 등등</b></td>
            </tr>

            <tr>
                <td>이미지</td>
                <td colspan="3"><input type=file name='img' size=42></td>
            </tr>
             <br><br>
            <tr>  
                <td colspan="4"  class="text-center">
                    <input type="submit" value="식단추가" class="btn btn-warning">
                    <input type="button"  class="btn btn-primary" onclick="location.href='allmenu.food'" value="식단 목록">
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