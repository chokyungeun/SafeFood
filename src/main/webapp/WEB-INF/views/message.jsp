<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		<c:if test="${not empty msg}">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:if>
		<h1 style="font-family: 'Sunflower', sans-serif;">받은 쪽지함<img width="80px" height="80px"
							src="resources/img/animat-rocket-color.gif"></h1>	
		<br>
		<br><br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#ffeded><font color=#000000 size=2>번호</th>
		<th width=100 bgcolor=#ffeded><font color=#000000 size=2>ID</th>
		<th width=200 bgcolor=#ffeded><font color=#000000 size=2>제목</th>
		<th width=100 bgcolor=#ffeded><font color=#000000 size=2>보낸 사람</th>

	  <c:forEach var="row" items="${list}">
	    <tr>
		   <td align=center>&nbsp;<font size=2>${row.num }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.receiveid }</td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="messageread.food?num=${row.num }">${row.title }</a></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.sendid }</td>
	       
	      <!--  <input align=center type="hidden">${row.count }</td> -->
	      <input type="hidden" id="count" value="${row.count }"/>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#ffeded"><a href=sendform.food>쪽지 보내기</a></button>
<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#ffeded"><a href=allsendmessage.food>보낸 쪽지함</a></button>

</body></html>