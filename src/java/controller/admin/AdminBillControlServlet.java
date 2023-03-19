package controller.admin;

import dao.DAO;
import entity.Account;
import entity.Bill;
import entity.Category;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class AdminBillControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null && a.getIsAdmin()==1){
            DAO dao = new DAO();
            List<Bill> listB = dao.getAllBill();
            List<Category> listC = dao.getAllCategory();
            request.setAttribute("listC", listC);
            request.setAttribute("listB", listB);
            request.getRequestDispatcher("AdminBill.jsp").forward(request, response);
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
