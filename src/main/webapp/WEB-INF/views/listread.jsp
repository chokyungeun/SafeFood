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
        <h2 class="text-center" style="font-family: 'Sunflower', sans-serif;">게시글 내용</h2><p>&nbsp;</p>
           <div class="table table-responsive">
                     <table class="table table-striped">
           <tr>
               <td style="font-weight: bold">작성자</td>
               <td colspan="1">${cc.name }</td>
               <td style="font-weight: bold">ID</td>
               <td colspan="1" >${cc.id }</td>
               <td style="font-weight: bold">날짜</td>
               <td colspan="1">${cc.wdate }</td>
           </tr>
           <tr>
               <td style="font-weight: bold">제목</td>
               <td colspan="4">"${cc.title }"</td>
           </tr>

           <tr>
               <td style="font-weight: bold">글내용</td>
               <td colspan="8"><textarea  name="content" style="width: 500px; height: 200px"readonly="readonly" >${cc.content }</textarea></td>
           </tr>
            
           <tr>  
               <td colspan="8"  class="text-center">
                   <input type="submit"  class="btn btn-warning" onclick="location.href='updatelist.food?num=${cc.num}'" value="글수정">
                   <input type="button"  class="btn btn-primary" onclick="location.href='boardlist.food'" value="전체글보기">
               </td>
               <br>
               
           </tr>
           
           <tr style="background: white; border-color: white">  
               <td colspan="8"  class="text-center">
                   <input type="button"  class="btn btn-danger" onclick="location.href='deletelist.food?num=${cc.num}''" value="삭제">
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