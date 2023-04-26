package kz.bitlab.techorda.servlet2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBConnection;
import kz.bitlab.techorda.db.Item;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/items")
public class ItemsPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = DBConnection.getItem();

        request.setAttribute("tovar", items);

        request.getRequestDispatcher("/ShopMain.jsp").forward(request,response);
    }
}
