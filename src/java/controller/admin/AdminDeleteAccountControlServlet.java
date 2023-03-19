package controller.admin;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminDeleteAccountControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null && a.getIsAdmin()==1){
            int accid = Integer.parseInt(request.getParameter("accId"));
            int accadmin = Integer.parseInt(request.getParameter("isAdmin"));
            DAO dao = new DAO();
            if(a.getId()==accid || accadmin == 1){
                response.sendRedirect("adminmanageraccount");
            }else{
                dao.RemoveAccount(accid);
                response.sendRedirect("adminmanageraccount");
            }
            
        }else{
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
