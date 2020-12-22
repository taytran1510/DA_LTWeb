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
        <h2>Giới thiệu</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>      
          <li style="color:#fff">Giới thiệu</li>   
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
      	<div>
      		<h1 style ="text-align: center; color: red;">𝓣𝓪𝔂 𝓞𝓷𝓮 𝓕𝓪𝓼𝓱𝓲𝓸𝓷</h1>
      		<p>Chúng tôi hi vọng tất cả người Việt nam sẽ được sử dụng những mẫu áo quần, giày dép, phụ kiện chất lượng tại cửa hàng
      		 thời trang <strong>Tay One Fashion</strong>.Với sứ mệnh trở thành một trong những nhà cung cấp sản phẩm hàng đầu tại
      		 Việt Nam đưa đến người tiêu dùng loại sản phẩm áo quần uy tín nhất của các vùng miền trên toàn quốc với mục đích là 
      		<strong>“Mang phong cách về với con người của bạn”</strong>. Với quy trình lựa chọn và kiểm soát nghiêm ngặt Tay One đã tạo nên quỹ đầu tư chuyên
      		cung cấp phân phối những sản phẩm tốt và chất lượng nhất phân phối đến tay người dùng giúp họ có những sự tự tin có thể.
      		nhất trong từng sản phẩm khác biệt từ thiên nhiên.</p>
      		<img src="${url}/images/introduce1.jpg" alt="introduce" width= "1160" height= "600"/> <br/> <br>
      		<p>Với triết lý trong kinh doanh là tuân thủ và đảm bảo được chất lượng, nguồn gốc xuất xứ về sản phẩm rõ ràng.Chúng tôi cam kết không sử dụng
      		hàng nhái nào và cam kết với quý khách hàng về toàn bộ những sản phẩm được phân phối qua hệ thống phân phối  <strong>Tay One Fashion </strong>
      		đảm bảo an toàn nhất.</p>
      		<p>Với cam kết chỉ phân phối những hàng hóa được cung cấp từ những nhà sản xuất có uy tín và đã có chứng nhận,...</p>
      		<img src="${url}/images/introduce2.jpg" alt="introduce" width= "1160" height= "600"/> <br/> <br>
      		<strong>Dưới đây, chúng tôi xin điểm qua những mặt hàng của Tay One hiện đang được rất nhiều khách hàng tin dùng và ưa chuộng:</strong><br/>
      		<p> <strong>Các mẫu áo quần có nguồn gốc rõ ràng: </strong>
			Với những loại rau củ là những loại đặc sản tại các vùng miền <strong>Tay One</strong> là địa chỉ uy tín cung cấp cho bạn các loại sản phẩm chất lượng từ các loại  
			rau củ sạch Đà Lạt được nhiều người dân ủng hộ trong suốt khoảng thời gian qua.Hệ thống vận hành của chúng tôi được thực hiện theo dây chuyền đảm bảo rằng 
			các bạn sẽ nhận được thực phẩm tươi nhất với thời gian vận chuyển ngắn nhất đáp ứng được độ tươi ngon đảm bảo vệ sinh, an toàn và ngon miệng.</p>
      		<p> <strong>Giày dép, xuất xứ rõ ràng: </strong>
      		Với mục tiêu trở thành một thương hiệu được khách hàng tin tưởng và coi như một địa chỉ mua sắm tin cậy đối với các loại trái cây nhập khẩu và trái cây Việt Nam 
      		có chất lượng cao cho gia đình, <strong>Tay One</strong> đang trở nên hoàn thiện hơn để đem đến cho khách hàng không chỉ những sản phẩm Trái cây nhập khẩu,
      		trái cây Việt Nam chất lượng hàng đầu trên thị trường mà kèm theo đó là những dịch vụ tiện ích thân thiện khác.
      		</p>
      		<p> <strong>Rất nhiều đồ phụ kiện với giá cả hợp lý: </strong>
      		Chúng tôi chuyên cung cấp những thực phẩm từ thiên nhiên có giá trị dinh dưỡng cao, tốt cho sức khỏe, nguồn gốc rõ ràng, với tiêu chí thực phẩm ngon và lành
      		cho sức khỏe. Tất cả vì một tương lai sống khỏe - sống thọ.
      		</p>
      		<p> <strong>Hàng nhập champion</strong> được khai thác trực tiếp từ rừng già Quảng Ngãi, đem đến cho khách hàng một sản phẩm chất lượng, với giá trị dinh dưỡng cao.</p>
      		<br />
      	</div>
      </div>
     </div>
    </section>
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      