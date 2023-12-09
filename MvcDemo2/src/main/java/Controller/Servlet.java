package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Service;
@WebServlet("/servletLink")
public class Servlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String name = req.getParameter("name");
		 String qty = req.getParameter("qty");
		 String price = req.getParameter("price");
		 String type = req.getParameter("type");
		 
		 double total = Double.parseDouble(qty)*Double.parseDouble(price),discount=0;
		 double payable = new Service().calculateBill(total, type);
		
		 if (type.equals("veg")) {
			 discount = 150;

			
		}else if (type.equals("nonVeg")) {
			discount =100;
			
		}
		 
		 RequestDispatcher rd = req.getRequestDispatcher("Bill.jsp");
		 req.setAttribute("type", type);
		 req.setAttribute("name", name);
		 req.setAttribute("qty", qty);
		 req.setAttribute("price", price);
		 req.setAttribute("amount", total);
		 req.setAttribute("discount", discount);
		 req.setAttribute("payable", payable);
		 rd.forward(req, resp);
		
	}

}
