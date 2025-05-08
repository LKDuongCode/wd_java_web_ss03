package com.duong.ss03;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Hw10_Servlet", value = "/products-servlet")
public class Hw10_Servlet extends HttpServlet {
    @Override
    public void init(){
        Hw10_CartManager.initProducts();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product_Hw10> productHw10List = (List<Product_Hw10>) getServletContext().getAttribute("products_hw10");
        List<Product_Hw10> carts = (List<Product_Hw10>) getServletContext().getAttribute("carts");
        if (productHw10List == null) {
            productHw10List = new ArrayList<>();
        }
        req.getServletContext().setAttribute("products_hw10",productHw10List);
        req.getServletContext().setAttribute("carts",carts);
        req.getRequestDispatcher("hw10/products.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action.equals("add")){
            int id = Integer.parseInt(req.getParameter("productId"));
            String name = req.getParameter("productName");
            double price = Double.parseDouble(req.getParameter("productPrice"));
            Hw10_CartManager.addProduct(new Product_Hw10(id,name,price));
            req.getServletContext().setAttribute("carts",Hw10_CartManager.carts);
        }
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
