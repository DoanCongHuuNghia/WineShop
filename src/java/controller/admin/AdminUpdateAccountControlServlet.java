package controller.admin;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminUpdateAccountControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null && a.getIsAdmin() == 1) {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String Username = request.getParameter("Username");
            String pass = request.getParameter("password");
            String address = request.getParameter("address");
            String phone = request.getParameter("phonenumber");
            String age = request.getParameter("age");
            String isSeller = request.getParameter("seller");
            String isAdmin = request.getParameter("admin");
            DAO dao = new DAO();

            dao.UpdateAccount(name, Username, address, phone, age, id, pass, isSeller, isAdmin);
            response.sendRedirect("adminmanageraccount");

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
