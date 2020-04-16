package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Basia
 */
@WebServlet(name = "PersonListServlet", urlPatterns = {"/personlist"})
public class PersonListServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        
         List<Person> osoby= new ArrayList<>();
        osoby.add(new Person("Basia","Jagielska","jb41375@zut.edu.pl"));
        osoby.add(new Person("Piotrek","Wyczołek","wp41375@zut.edu.pl"));
        osoby.add(new Person("Kuba","Piechota","pk41375@zut.edu.pl"));
        
        request.setAttribute("osoby", osoby);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
        
    }}
      

