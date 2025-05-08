package com.duong.ss03.hw07;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    @Override
    public void init(){
        //init
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/hw07/order.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            double price = Double.parseDouble(req.getParameter("p_price"));
            int quantity = Integer.parseInt(req.getParameter("p_quantity"));

            req.setAttribute("total_order",(price*quantity));
            req.getRequestDispatcher("hw07/order.jsp").forward(req, resp);
        }catch (Exception e){
            System.err.println("Lỗi bất định " + e.getMessage());
        }
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
