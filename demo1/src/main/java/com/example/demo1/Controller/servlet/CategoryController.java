package com.example.demo1.Controller.servlet;

import com.example.demo1.model.dao.CategoryDAO;
import com.example.demo1.model.entity.Category;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryController", value = "/categories")
public class CategoryController extends HttpServlet {
    private final CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categories = categoryDAO.findAllActive();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/view/listCategory.jsp").forward(request, response);
    }
}

