package kz.bitlab.techorda.servlet2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kz.bitlab.techorda.db.User;

import java.io.IOException;
@WebServlet("/account")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User currentUser = (User)request.getSession().getAttribute("currentUser");
        if (currentUser != null) {
            request.getRequestDispatcher("/account.jsp").forward(request, response);
        }
        else {
            response.sendRedirect("/login");
        }
    }
}
