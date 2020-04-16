
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Basia
 */
@WebServlet(name = "StudentListServlet", urlPatterns = {"/studentList"})
public class StudentListServlet extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
         HttpSession session = request.getSession();
        List<Student> students = new ArrayList<>();
        if (session.getAttribute("students") != null) {
            students = (List<Student>) session.getAttribute("students");
        }
        request.setAttribute("students", students);
        request.getRequestDispatcher("studentList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Student> students = new ArrayList<>();
        if (session.getAttribute("students") != null) {
            students = (List<Student>) session.getAttribute("students");
        }
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");
        students.add(new Student(firstName, lastName, emailAddress));

        session.setAttribute("students", students);
        request.getRequestDispatcher("studentList.jsp").forward(request, response);
        
        }
}
