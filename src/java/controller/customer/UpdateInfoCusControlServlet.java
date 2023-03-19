package controller.customer;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UpdateInfoCusControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null) {
            String id = request.getParameter("accid");
            String name = request.getParameter("fullname");
            String Username = request.getParameter("username");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
            String phone = request.getParameter("phonenumber");
            String age = request.getParameter("age");
            String isSeller = request.getParameter("seller");
            String isAdmin = request.getParameter("admin");
            DAO dao = new DAO();
            dao.UpdateAccount(name, Username, address, phone, age, id, password, isSeller, isAdmin);
            request.getRequestDispatcher("home").forward(request, response);
        } else {
            response.sendRedirect("Login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
