<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
         <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
<!--                <a href="index.jsp">
                  <span class="fa fa-shopping-cart"></span>
                  <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                </a>-->
                <!-- img based logo -->
                <a href="${pageContext.request.contextPath}/"><img src="${url}/images/logo1.png" alt="logo img" width="70%"></a> 
              </div>
              <!-- / logo  -->
              <!-- Shipping service -->
              <div class="aa-shipping-box">
              	<h2>⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿⓿</h2>
             	<div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
               
	                <c:if test="${sessionScope.username != null}">
	                 <li>
						<a><strong>𝓬𝓱𝓪̀𝓸</strong> ${username }</a>
					</li>
					<li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/logout">𝓓𝓪̆𝓷𝓰 𝔁𝓾𝓪̂́𝓽</a></li>
					</c:if>
				
				 <c:if test="${sessionScope.username == null}">
	                  <li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/register">𝓓𝓪̆𝓷𝓰 𝓴𝔂́</a></li>
	                  <li><a href="${pageContext.request.contextPath}/view/client/login">𝓓𝓪̆𝓷𝓰 𝓷𝓱𝓪̣̂𝓹<a></li>
	              </c:if>
                  
                   <!--  data-toggle="modal" data-target="#login-modal" -->
                </ul>
              </div>          
              </div>
              
               <!-- cart box -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="${pageContext.request.contextPath}/view/client/cart">
                  <span class="fas fa-cart-arrow-down"></span>
                  <span class="aa-cart-title"></span>
                  
                 
                  <c:if test="${length_order != NULL}">
                  	<span class="aa-cart-notify">$</span>
                  </c:if>
                  

                </a>
                <div class="aa-cartbox-summary">
                  <ul class="scroll-product">
                  <c:forEach items="${order.items}" var="item" >
                    <li>
                      <a class="aa-cartbox-img" href="${pageContext.request.contextPath}/view/client/cart"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${item.product.image_link}" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="${pageContext.request.contextPath}/view/client/cart">${item.product.name}</a></h4>
                        <p>${item.qty} x ${item.product.price * (1-((item.product.discount)/100))}00 VNĐ</p>
                      </div>
                    </li>
                   	</c:forEach>               
                  </ul>
                  <div class="total-detailproduct">
                  		<span class="aa-cartbox-total-title">
                        <b>Tổng:</b>
                      </span>
                      <span class="aa-cartbox-total-price">
                        ${sumprice} VNĐ
                      </span>
                  </div>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/cart">Chi tiết</a>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/checkout">Thanh toán</a>
                </div>
              </div>
              <!-- / cart box -->
          
            </div>
          </div>
        </div>
      </div>
    </div>

