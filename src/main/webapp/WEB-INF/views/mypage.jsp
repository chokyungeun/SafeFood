
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="banner.jsp"%>
    
    

    <div class="site-section  pb-0">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-7 section-title text-center mb-5">
            <h2 class="d-block">섭취 정보</h2>
          </div>
        </div>
        <div class="row mb-5">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">이미지</th>
                    <th class="product-name">이름</th>
                    <th class="product-quantity">수량</th>
                    <th class="product-total">알러지</th>
                    <th class="product-remove">제거</th>
                  </tr>
                </thead>
                <tbody>
                
                  <c:forEach var="row" items="${list}">
                  <tr>
                    <td class="product-thumbnail">
                    <a href="milk.html"><img src="resources/${row.img }" alt="Image" class="img-fluid"></a>
                    </td>
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black">${row.name }</h2>
                    </td>
                    <td>${row.count } </td>
                    <td><!--  <img src="resource/img/경고.PNG" alt="Image" class="img-fluid"> --></td>
                    <td><a href="deletelist.food?id=${row.id }&code=${row.code}" class="btn btn-primary height-auto btn-sm">삭제</a></td>
                  </tr>
    			</c:forEach>
                </tbody>
              </table>
            </div>
          </form>
        </div>
    
      </div>
    </div>



    
<%@ include file="footer.jsp"%>
</body>

</html>