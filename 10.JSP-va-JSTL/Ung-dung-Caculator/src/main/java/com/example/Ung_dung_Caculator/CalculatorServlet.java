package com.example.Ung_dung_Caculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstNumber = Float.parseFloat(request.getParameter("first"));
        float secondNumber = Float.parseFloat(request.getParameter("second"));
        char operator = request.getParameter("operator").charAt(0);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result:</h1>");
        try {
            float result = Calculator.getCalculator(firstNumber, secondNumber, operator);
            writer.println(firstNumber + " " + operator + " " + secondNumber + " = " + result);
        } catch (Exception e) {
            e.printStackTrace();
        }
        writer.println("</html>");
    }
}
