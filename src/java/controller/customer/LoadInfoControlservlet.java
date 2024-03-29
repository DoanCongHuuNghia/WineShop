package controller.customer;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoadInfoControlservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null){
            DAO dao = new DAO();
            int id = a.getId();
            Account acc = dao.getAccountByAccID(id);
            String pass = acc.getPassword();
            String decodedpass = dao.getBase64Decoded(pass);
            request.setAttribute("decodedpass", decodedpass);
            request.setAttribute("account", acc);
            request.getRequestDispatcher("Info.jsp").forward(request, response);
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
