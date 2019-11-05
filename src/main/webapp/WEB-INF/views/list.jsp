<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en" >
	<%@ include file="banner.jsp"%>
<hr><br><br><br>
	
<center>
		<h1 style="font-family: 'Sunflower', sans-serif;">공지사항</h1>	
		<br>
		<form method="post" action="listsearch.food" style="font-family: 'Sunflower', sans-serif;">
			<select name="search">
				<option value="name">글쓴이</option>
				<option value="title">제목</option>
			</select>
			<input type="text" name="searchtext"/>
			<input type="submit" value="검색"/>
		</form>
		<br><br>

		<TABLE BORDER=1 CELLSPACING=1 CELLPADDING = 1 style="font-family: 'Sunflower', sans-serif; text-align:center" ><TR>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>번호</th>
		<th width=200 bgcolor=#e3fced><font color=#000000 size=2>제목</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>글쓴이</th>
		<th width=150 bgcolor=#e3fced><font color=#000000 size=2>날짜</th>
		<th width=100 bgcolor=#e3fced><font color=#000000 size=2>조회수</th>

	  <c:forEach var="row" items="${list}">
	    <tr>
		   <td align=center>&nbsp;<font size=2>${row.num }</td>
	       
	      <td align=center>&nbsp;<font size=2>
	       <a href="listread.food?num=${row.num }">${row.title }</a></td>
	       
	      <td align=center>&nbsp;<font size=2>${row.name }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.wdate }</td>
	       
	      <td align=center>&nbsp;<font size=2>${row.count }</td>
	       
	    </tr>
	    </c:forEach>
</table>
<br></br>
<button></button>
<a href=listinsert.food>새글쓰기</a>
</body></html>