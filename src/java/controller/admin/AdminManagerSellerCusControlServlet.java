package controller.admin;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class AdminManagerSellerCusControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null && a.getIsAdmin() == 1) {
            DAO dao = new DAO();
            String isCustomer = request.getParameter("isCustomer");
            String isSeller = request.getParameter("isSeller");
            //
            if (isSeller != null && isSeller.equals("1")) {
                List<Account> listSeller = dao.getAllSeller();
                request.setAttribute("listA", listSeller);
            }
            if (isCustomer != null && isCustomer.equals("1")) {
                List<Account> listCustomer = dao.getAllCustomer();
                request.setAttribute("listA", listCustomer);
            }
            request.getRequestDispatcher("AdminManagerAccount.jsp").forward(request, response);
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
