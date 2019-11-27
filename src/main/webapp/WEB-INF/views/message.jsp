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
		<h1 style="font-family: 'Sunflower', sans-serif;"><img width="80px" height="80px"src="resources/img/animat-road-trip-color.gif">받은 쪽지함</h1>	
		<br>
		<br><br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>ID</th>
		<th width=200 bgcolor=#fbf7c6><font color=#000000 size=2>제목</th>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>보낸 사람</th>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>확인</th>

	  <c:forEach var="row" items="${list}">
	    <tr>
	      <td align=center>&nbsp;<font size=2>${row.receiveid }</td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="messageread.food?num=${row.num }">${row.title }</a></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.sendid }</td>
	      <c:choose>
	      	<c:when test="${row.count > 0}" >
	      		<td align=center>&nbsp;<font size=2 style="color:blue">확인</td>
	      	</c:when>
	      	<c:otherwise>
	      	<td align=center>&nbsp;<font size=2 style="color:red">미확인</td>
	      </c:otherwise>
	      </c:choose>
	      
	      
	       
	      <!--  <input align=center type="hidden">${row.count }</td> -->
	      <input type="hidden" id="count" value="${row.count }"/>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#fbf7c6"><a href=sendform.food>쪽지 보내기</a></button>
<button style="background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#fbf7c6"><a href=allsendmessage.food>보낸 쪽지함</a></button>
<%@ include file="footer.jsp"%>
</body></html>