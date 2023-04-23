package kz.bitlab.techorda.servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;


@WebServlet("/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("task-name");
        String desc = request.getParameter("task-description");
        String deadline = request.getParameter("task-deadline");

        Tasks task = new Tasks();
        task.setName(name);
        task.setDescription(desc);
        task.setDeadlineDate(deadline);

        DBManager.addTask(task);

        response.sendRedirect("/");
    }
}
