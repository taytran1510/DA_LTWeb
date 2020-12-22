<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              
              <!-- / header top left -->
              <div class="aa-header-top-right">
                <ul class="aa-head-top-nav-right">
               
	                <c:if test="${sessionScope.username != null}">
	                 <li>
						<a><strong>Chào</strong> ${username }</a>
					</li>
					<li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/logout">Đăng xuất</a></li>
					</c:if>
				
				 <c:if test="${sessionScope.username == null}">
	                  <li class="hidden-xs"><a href="${pageContext.request.contextPath}/view/client/register">Đăng ký</a></li>
	                  <li><a href="${pageContext.request.contextPath}/view/client/login">Đăng nhập</a></li>
	              </c:if>
                  
                   <!--  data-toggle="modal" data-target="#login-modal" -->
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->
