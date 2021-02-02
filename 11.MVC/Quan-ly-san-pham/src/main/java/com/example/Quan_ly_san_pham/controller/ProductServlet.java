package com.example.Quan_ly_san_pham.controller;

import com.example.Quan_ly_san_pham.model.Product;
import com.example.Quan_ly_san_pham.service.ProductService;
import com.example.Quan_ly_san_pham.service.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    ProductService productService=new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action == null){
            action= " ";
        }
        switch (action){
            case "create":
                showCreateForm(request,response);
            case "edit":
                showEditForm(request,response);
            case "delete":
                showDeleteForm(request,response);
            case "view":
                viewProduct(request,response);
                break;
            default:
                viewList(request,response);


        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        Product product=this.productService.findById(id);
        RequestDispatcher dispatcher;
        if(product == null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("product",product);
            dispatcher=request.getRequestDispatcher("product/delete.jsp");
        }
        dispatcher.forward(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        Product product=this.productService.findById(id);
        RequestDispatcher dispatcher;
        if(product == null){
            dispatcher= request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("product",product);
            dispatcher= request.getRequestDispatcher("product/edit.jsp");
        }
        dispatcher.forward(request,response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher= request.getRequestDispatcher("product/create.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action == null ){
            action = " ";
        }
        switch (action){
            case "create":
                createProduct(request,response);
                break;
            case "edit":
                editProduct(request,response);
            case "delete":
                deleteProduct(request,response);
                break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        double price= Double.parseDouble(request.getParameter("price"));
        String description=request.getParameter("description");
        String manufacturer=request.getParameter("manufacturer");

        this.productService.save(new Product(id,name,price,description,manufacturer));
        RequestDispatcher dispatcher= request.getRequestDispatcher("product/create.jsp");
        request.setAttribute("message","New product has to add");
        dispatcher.forward(request,response);

    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        double price=Double.parseDouble(request.getParameter("price"));
        String description=request.getParameter("description");
        String manufacturer=request.getParameter("manufacturer");
        Product product=this.productService.findById(id);
        RequestDispatcher dispatcher;
        if (product == null ){
            dispatcher= request.getRequestDispatcher("error.jsp");
        }else {
            product.setName(name);
            product.setPrice(price);
            product.setDescription(description);
            product.setManufacturer(manufacturer);
            this.productService.update(id,product);
            request.setAttribute("product",product);
            request.setAttribute("message","Done!");
            dispatcher= request.getRequestDispatcher("product/edit.jsp");
        }
        dispatcher.forward(request,response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id =Integer.parseInt(request.getParameter("id"));
        Product product=this.productService.findById(id);
        RequestDispatcher dispatcher;
        if(product==null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            this.productService.remove(id);
            response.sendRedirect("/products");
        }
    }

    private void viewList(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList=productService.findAll();
        request.setAttribute("productList",productList);
        RequestDispatcher dispatcher= request.getRequestDispatcher("product/list.jsp");
        try{
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        Product product=productService.findById(id);
        RequestDispatcher dispatcher;
        if(product == null ){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("product",product);
            dispatcher= request.getRequestDispatcher("product/view.jsp");
        }
        dispatcher.forward(request,response);
    }
}
