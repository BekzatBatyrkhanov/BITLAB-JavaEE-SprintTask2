package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;
@WebServlet(value = "/save-task")
public class SaveTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("task-name");
        String desc = request.getParameter("task-description");
        String deadline = request.getParameter("task-deadline");

        int id = Integer.parseInt(request.getParameter("task-id"));

        String done = request.getParameter("task_done");

        Tasks task = DBManager.getTask(id);

        if(task != null) {
            task.setName(name);
            task.setDescription(desc);
            task.setDeadlineDate(deadline);
            task.setDone(done);

            DBManager.updateTask(task);

            response.sendRedirect("/details?task_id="+id);
        }
        else {
            response.sendRedirect("/");
        }


    }
}
