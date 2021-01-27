package com.example.Product_Discount_Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DisplayAcountServlet", value = "/product")
public class DisplayAcountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price =Float.parseFloat(request.getParameter("price"));
        float percent =Float.parseFloat(request.getParameter("discount-percent"));

        float amount = (float) (price*percent*0.01);
        float priceCurrent=price-amount;

        PrintWriter writer= response.getWriter();
        writer.println("<html>");
        writer.println("<h1>description: "+description+"</h1>");
        writer.println("<h1>Discount Amount: "+amount+"</h1>");
        writer.println("<h1>Discount Price: "+priceCurrent+"</h1>");
        writer.println("</html>");
    }
}
