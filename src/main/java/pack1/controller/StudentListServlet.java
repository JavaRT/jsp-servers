package pack1.controller;

import pack1.database.EntityDao;
import pack1.model.Student;

import javax.servlet.HttpConstraintElement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.parser.Entity;
import java.io.IOException;
import java.util.List;

@WebServlet ("/students")
public class StudentListServlet extends HttpServlet {
    private final EntityDao<Student> studentEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        List <Student> listOfStudents = studentEntityDao.findAll(Student.class);
        req.setAttribute("students", listOfStudents);
req.getRequestDispatcher("/student_list.jsp").forward(req,resp);
    }
}
