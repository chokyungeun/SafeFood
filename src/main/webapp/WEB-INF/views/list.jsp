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
		<h1 style="font-family: 'Sunflower', sans-serif;">공지사항<img width="80px" height="80px"
							src="resources/img/animat-lightbulb-color.gif"></h1>	
		<br>
		<form method="post" action="listsearch.food" style="font-family: 'Sunflower', sans-serif;">
			<select name="search" style="width: 80px; height: 30px;">
				<option value="id">ID</option>
				<option value="title">제목</option>
			</select>
			<input type="text" name="searchtext" style="width: 150px; height: 30px"/>
			<input type="submit" value="검색" style="background-color: white; border-radius: 10px; font-family: 'Sunflower', sans-serif; border-color:#fbf7c6; width: 100px; height: 30px"/>
		</form>
		<br><br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>번호</th>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>ID</th>
		<th width=200 bgcolor=#fbf7c6><font color=#000000 size=2>제목</th>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>글쓴이</th>
		<th width=150 bgcolor=#fbf7c6><font color=#000000 size=2>날짜</th>
		<th width=100 bgcolor=#fbf7c6><font color=#000000 size=2>조회수</th>

	  <c:forEach var="row" items="${list}">
	    <tr>
		   <td align=center>&nbsp;<font size=2>${row.num }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.id }</td>
	      <td align=center>&nbsp;<font size=2>
	       <a href="listread.food?num=${row.num }">${row.title }</a></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.name }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.wdate }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.count }</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<button style="color:#ffb163; background-color: white; border-radius: 15px; font-family: 'Sunflower', sans-serif; border-color:#fbf7c6"><a href=listinsert.food>새글쓰기</a></button>
<br>
<%@ include file="footer.jsp"%>
</body></html>