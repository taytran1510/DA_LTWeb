package shop.controller;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

//import shop.webmvc.model.Boardnew;
import shop.model.Product;
//import shop.webmvc.service.BoardnewService;
import shop.service.ProductService;
//import shop.webmvc.service.impl.BoardnewServicesImpl;
import shop.service.impl.ProductServiceImpl;
import javax.servlet.http.HttpServletResponse;



public class HomeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	//BoardnewService boardnewService = new BoardnewServicesImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//List<Boardnew> boardnewList = boardnewService.getAll();
		//req.setAttribute("boardnewlist", boardnewList);
		// Product Rau cá»§ quáº£
		List<Product> product_ao= productService.getProductById(1);
		req.setAttribute("product_ao", product_ao);	
		
		// Product hạt
		List<Product> product_quan= productService.getProductById(2);
		req.setAttribute("product_quan", product_quan);	
		
		// Product trÃ¡i cÃ¢y
		List<Product> product_giaydep= productService.getProductById(3);
		req.setAttribute("product_giaydep", product_giaydep);	
		
		// Product máº­t ong
		List<Product> product_phukien= productService.getProductById(4);
		req.setAttribute("product_phukien", product_phukien);	
		
		// Product má»›i
		List<Product> product_new= productService.getProductById(5);
		req.setAttribute("product_new", product_new);	
				
		// Product bÃ¡n cháº¡y
		List<Product> product_banchay= productService.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);	
		//GiÃ¡ giáº£m
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productList)
		{
			Product product1 = productService.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}

		req.setAttribute("productlist1", productsList1);
		
		// Product giáº£m giÃ¡
		List<Product> product_sale= productService.getProductById(7);
		req.setAttribute("product_sale", product_sale);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}
}
