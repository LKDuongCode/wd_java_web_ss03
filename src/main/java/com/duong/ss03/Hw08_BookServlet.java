package com.duong.ss03;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Hw08_BookServlet", value = "/book-servlet")
public class Hw08_BookServlet extends HttpServlet {
    List<Book> books = new ArrayList<>();
    @Override
    public void init(){
        //init
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        if (books == null) {
            books = new ArrayList<>();
        }
        req.getServletContext().setAttribute("books",books);
        req.getRequestDispatcher("hw08/home.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if(action.equals("add")){
            String name = req.getParameter("b_name");
            String author = req.getParameter("b_auth");
            int ply;
            try {
                ply = Integer.parseInt(req.getParameter("b_public"));
            }catch (NumberFormatException e){
                System.err.println(e.getMessage());
                ply = 0;
            }

            Book b = new Book(name,author,ply);
            List<Book> books = (List<Book>) getServletContext().getAttribute("books");
            if (books == null) {
                books = new ArrayList<>();
            }
            books.add(b);
            req.getServletContext().setAttribute("books",books);
            req.getRequestDispatcher("hw08/home.jsp").forward(req,resp);
        }

        if (action.equals("search")){
            String value = req.getParameter("search_value");
            List<Book> books = (List<Book>) getServletContext().getAttribute("books");
            if (books == null) {
                books = new ArrayList<>();
            }
            List<Book> searchs = books.stream().filter(b-> b.getName().contains(value)).toList();
            req.getServletContext().setAttribute("search_books",searchs);
            req.getRequestDispatcher("hw08/home.jsp").forward(req,resp);
        }


    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
