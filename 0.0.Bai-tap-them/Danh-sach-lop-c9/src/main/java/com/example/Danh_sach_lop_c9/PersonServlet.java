package com.example.Danh_sach_lop_c9;

import com.example.Danh_sach_lop_c9.model.Person;
import com.example.Danh_sach_lop_c9.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PersonServlet", urlPatterns = "/persons")
public class PersonServlet extends HttpServlet {
    PersonService personService=new PersonService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action=" ";
        }
        switch (action){
            case "view":
                viewPerson(request,response);
                break;
            default:
                listPerson(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void viewPerson(HttpServletRequest request, HttpServletResponse response) {
        int id=Integer.parseInt(request.getParameter("id"));
        Person person=this.personService.findById(id);
        RequestDispatcher dispatcher;
        if(person == null){
            dispatcher=request.getRequestDispatcher("error.jsp");
        }else {
            request.setAttribute("person",person);
            dispatcher=request.getRequestDispatcher("person/view.jsp");

        }
        try {
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listPerson(HttpServletRequest request, HttpServletResponse response) {
        List<Person> persons=this.personService.findAll();
        request.setAttribute("persons",persons);

        RequestDispatcher dispatcher= request.getRequestDispatcher("person/list.jsp");

        try{
            dispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

    }

}
