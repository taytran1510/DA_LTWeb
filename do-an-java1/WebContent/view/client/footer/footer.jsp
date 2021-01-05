<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

        <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                </br>
                  <a href="${pageContext.request.contextPath}/"><img src="${url}/images/logo1.png" alt="logo img" width="330px"></a> 
                  <ul class="aa-footer-nav">
					</br>
                    <li><p style="color:#888; text-align: justify; width: 95%">Là nơi chuyên buôn bán tất cả các mặt hàng quần áo chất lượng. Chúng tôi luôn đặt tiêu chí về chất lượng và uy tín lên hàng đầu.</p></li>
                    
                  </ul>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                  
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>THÔNG TIN LIÊN HỆ</h3>
                    <address>
                      <p>Trường ĐH Sư Phạm Kỹ Thuật - Q.Thủ Đức - TP HCM</p>
                      <p><span class="fa fa-phone"></span>0966.959.148</p>
                      <p><span class="fa fa-envelope"></span>thuantran0164@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fab fa-facebook"></span></a>
                      <a href="#"><span class="fab fa-youtube"></span></a>
                      <a href="#"><span class="fab fa-instagram"></span></a>
                      <a href="#"><span class="fab fa-skype"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Copyright 2020 &copy TayG9 Team</p>
            <div class="aa-footer-payment">
              <span class="fab fa-cc-mastercard"></span>
              <span class="fab fa-cc-visa"></span>
              <span class="fab fa-paypal"></span>
              <span class="fab fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->
   
    </body>
     <jsp:include page = "script.jsp" flush = "true" />

</html>
