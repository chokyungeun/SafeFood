<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>

<body>
<div class="row" style="font-family: 'Sunflower', sans-serif;">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">쪽지 내용<img width="80px" height="80px"
							src="resources/img/animat-sign-post-color.gif"></h2><p>&nbsp;</p>
           <div class="table table-responsive">
                     <table class="table table-striped">
           <tr>
               <td style="font-weight: bold">보낸 ID</td>
               <td colspan="1">${m.sendid }</td>
           </tr>
           <tr>
               <td style="font-weight: bold">제목</td>
               <td colspan="4">"${m.title }"</td>
           </tr>

           <tr>
               <td style="font-weight: bold">쪽지 내용</td>
               <td colspan="8"><textarea  name="message" style="width: 100%; height: 200px"readonly="readonly" >${m.message }</textarea></td>
           </tr>
            
           <tr>  
               <td colspan="8"  class="text-center">
                   <input type="button"  class="btn btn-primary" onclick="location.href='allreceivemessage.food'" value="돌아가기">
               </td>
           </tr>
           
           <tr style="background: white; border-color: white">  
               <td colspan="8"  class="text-center">
                   <input type="button"  class="btn btn-danger" onclick="location.href='deletemessage.food?num=${m.num}'" value="삭제">
               </td>
               
           </tr>
         </table>
        
    
           </div>
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