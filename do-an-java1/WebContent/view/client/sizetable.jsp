<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  
  <section id="aa-catg-head-banner">
   <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-product2.png" alt="banner sản phẩm">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Bảng size</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
          <li style="color:#fff">Bảng size</li>         
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
      	<div>
      		<div class="page-wrapper">
					<div class="heading-page">
						<h1 style ="text-align: center;">𝓗𝓾̛𝓸̛́𝓷𝓰 𝓭𝓪̂̃𝓷 𝓬𝓱𝓸̣𝓷 𝓼𝓲𝔃𝓮</h1>
					</div>
						<div style="width:100%; text-align:center;">
							<img src="https://file.hstatic.net/1000341789/file/c7dc08ac5c84a7dafe95_a534392efcfe41938d894b4037508ef2_1024x1024.jpg" data-mce-src="https://file.hstatic.net/1000341789/file/c7dc08ac5c84a7dafe95_a534392efcfe41938d894b4037508ef2_1024x1024.jpg" >
						</div>
				</div>
      	</div>
      </div>
     </div>
    </section>
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->