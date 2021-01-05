<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->

  <!-- Start slider -->
  <jsp:include page = "./banner-slider/slider.jsp" flush = "true" />
  <!-- / slider -->
  
  <!-- banner -->
      
  <!-- banner -->
  <link href="${url}/css/snowfall.css" rel="stylesheet">   
  
<div class="snowflakes" aria-hidden="true">
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
   <div class="snowflake">❄</div><div class="snowflake">❄</div><div class="snowflake">❄</div>
 
</div>

  <section id="aa-promo">
          <div class="aa-promo-area">      
              <div class="col-md-5 no-padding">     
              <div class="aa-promo-left">    
               <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${41}">                 
                  <div class="aa-promo-banner">                    
                    <img src="https://bucket.nhanh.vn/store2/78018/bn/sb_1605414793_909.png" alt="Hot trending">                    
                    <div class="aa-prom-content">                     
                      <h4>Hot trending</h4>                      
                    </div>
                  </div>  
               </a>
                  </div> 
              </div> 
              
               <div class="col-md-7 no-padding">              
                  <div class="aa-promo-right">
                   <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${39}">  
                    <div class="aa-promo-banner">                      
                      <img src="https://theme.hstatic.net/1000341789/1000533258/14/nu_slideshow_2.jpg?v=655" alt="combo special">                      
                      <div class="aa-prom-content">                     
                        <h4>combo special</h4>                        
                      </div>
                    </div>  
                   </a>                                 
                  </div>                        
         	    </div>  
         	    
         	    <div class="col-md-7 no-padding">              
                  <div class="aa-promo-right">
                   <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${33}">  
                    <div class="aa-promo-banner">                      
                      <img src="https://theme.hstatic.net/1000341789/1000533258/14/slideshow_4.jpg?v=655" alt="best choice">                      
                      <div class="aa-prom-content">                      
                        <h4>best choice</h4>                        
                      </div>
                    </div>
                   </a>
                  </div>
                             
         	  </div>  
         	  
         	 <div class="col-md-5 no-padding">     
              <div class="aa-promo-left">    
               <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${3}">                   
                  <div class="aa-promo-banner">                    
                    <img src="https://cdn3.yame.vn/pimg/bltx-u-y2010-h57-0018921/ecfe3bc4-f27f-1e00-4ce0-001770b453f9.jpg?w=800" alt="fashion">                    
                    <div class="aa-prom-content">
                      <h4>fashion</h4>                      
                    </div>
                  </div> 
               </a> 
               </div> 
              </div> 
                       	  
           </div>
   </section>
   <!-- Start Promo section -->
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left -->
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                 <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${34}">  
                  <div class="aa-promo-banner">                    
                    <img src="${url}/images/section_tc.jpg" alt="best things">                    
                    <div class="aa-prom-content">
                      <span>Giảm giá 35%</span>
                      <h4>best things</h4>                      
                    </div>
                  </div>
                 </a>
                </div>
              </div>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                   <a href="${pageContext.request.contextPath}/view/client/product-detail?id=${32}">  
                    <div class="aa-promo-banner">                      
                      <img src="https://bucket.nhanh.vn/store2/78018/bn/sb_1605812381_695.jpg" alt="blaze top">                      
                      <div class="aa-prom-content">
                        <span>Sản Phẩm độc quyền</span>
                        <h4>blaze top</h4>                        
                      </div>
                    </div>                 
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Promo section -->
  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                <!-- start prduct navigation -->
                 <ul class="nav nav-tabs aa-products-tab">
                    <li class="active"><a href="#ao" data-toggle="tab">Mẫu áo</a></li>
                    <li><a href="#quan" data-toggle="tab">Mẫu quần</a></li>
                    <li><a href="#giaydep" data-toggle="tab">Giày dép</a></li>
                    <li><a href="#phukien" data-toggle="tab">Phụ kiện</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <!-- Start men product category -->
                    <div class="tab-pane fade in active" id="ao">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_ao}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             
						<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                           <c:if test="${product.discount != 0}">
	                  		<!-- product badge -->
	                  		<span class="aa-badge aa-sale">- ${product.discount}%</span>
	                 	 </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                     
                    </div>
                    <!-- / men product category -->
                    <!-- start women product category -->
                    <div class="tab-pane fade" id="quan">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_quan}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                        <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                      
                    </div>
                    <!-- / women product category -->
                    <!-- start sports product category -->
                    <div class="tab-pane fade" id="giaydep">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_giaydep}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                       <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                     
                    </div>
                    <!-- / sports product category -->
                    <!-- start electronic product category -->
                    <div class="tab-pane fade" id="phukien">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_phukien}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                            <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                      
                    </div>
                    <!-- / electronic product category -->
                  </div>
                  <div class="more-product">
                  	 <a class="aa-browse-btn" href="${pageContext.request.contextPath}/view/client/product">Xem Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span></a>
                  </div>
                  
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Products section -->
  <!-- banner section -->
  <section id="aa-banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">        
          <div class="row">
            <div class="aa-banner-area">
            <a href="#"><img src="https://theme.hstatic.net/1000341789/1000533258/14/nu_slideshow_3.jpg?v=636" alt="banner trang chủ"></a>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- popular section -->
  <section id="aa-popular-category">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-popular-category-area">
              <!-- start prduct navigation -->
             <ul class="nav nav-tabs aa-products-tab">
                <li class="active"><a href="#sanphammoi" data-toggle="tab">Sản Phẩm Mới</a></li>
                <li><a href="#sanphambanchay" data-toggle="tab">Sản Phẩm Bán Chạy</a></li>
                <li><a href="#sanphamgiamgia" data-toggle="tab">Sản Phẩm Giảm Giá</a></li>                    
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Start men popular category -->
                <div class="tab-pane fade in active" id="sanphammoi">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_new}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>	
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                             <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                
                </div>
                <!-- / popular product category -->
                
                <!-- start featured product category -->
                <div class="tab-pane fade" id="sanphambanchay">
                	<ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_banchay}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                         
                           <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                 
                </div>
                <!-- / featured product category -->

                <!-- start latest product category -->
                <div class="tab-pane fade" id="sanphamgiamgia">
                  
                  	<ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_sale}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                             <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                </div>
                <!-- / latest product category -->              
              </div>
               <div class="more-product">
                 	 <a class="aa-browse-btn" href="${pageContext.request.contextPath}/view/client/product">Xem Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span></a>
               </div>
            </div>
          </div> 
        </div>
      </div>
    </div>
  </section>
  <!-- / popular section -->
  <!-- Support section -->
  <section id="aa-support">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-truck"></span>
                <h4>MIỄN PHÍ VẬN CHUYỂN</h4>
                <P>Chúng tôi đã áp dụng gói miễn phí vận chuyển cho đơn hàng trên 1.000.000VNĐ.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-clock-o"></span>
                <h4>GIAO HÀNG NHANH</h4>
                <P>Chúng tôi đảm bảo hàng đến tay khách hàng nhanh và đảm bảo sản phẩm an toàn.</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-phone"></span>
                <h4>HỖ TRỢ 24/7</h4>
                <P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời gian cho khách hàng.</P>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Support section -->
  <!-- Testimonial -->
  <section id="aa-testimonial">  
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-testimonial-area">
            <ul class="aa-testimonial-slider">
              <!-- single slide -->
              <li>
                <iframe width="100%" height="562" src="https://www.youtube.com/embed/uPW5eNKplT4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen&gt;"="" allowfullscreen=""></iframe>
              </li>
              
              
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Testimonial -->

  

  <!-- Client Brand -->

  <!-- / Client Brand -->  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->

