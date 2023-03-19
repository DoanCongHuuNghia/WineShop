package controller.admin;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoadAccountToUpdateControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null && a.getIsAdmin() == 1) {
            String accId = request.getParameter("accId");
            DAO dao = new DAO();
            int accadmin = Integer.parseInt(request.getParameter("isAdmin"));
            if(a.getId()== Integer.parseInt(accId) || accadmin == 1){
                response.sendRedirect("adminmanageraccount");
            }else{
                Account Account = dao.getAccountByID(accId);
                request.setAttribute("load", Account);
                request.getRequestDispatcher("AdminUpdateAccount.jsp").forward(request, response);
            }
            
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
