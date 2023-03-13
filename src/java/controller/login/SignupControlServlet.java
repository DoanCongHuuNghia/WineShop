package controller.login;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignupControlServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");       
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phonenumber = request.getParameter("phonenumber");
        String age = request.getParameter("age");
        String password = request.getParameter("pass");
        String repassword = request.getParameter("repass");
        
        DAO dao = new DAO();
        Account a = dao.CheckAccountExist(username);
        if(!password.equals(repassword)){
            response.sendRedirect("Signup.jsp");
        }else{
            if(a==null){
                dao.Signup(username, password, fullname, address, phonenumber, age);
//                response.sendRedirect("Login.jsp");
                request.getRequestDispatcher("login").forward(request, response);
            }else{
                response.sendRedirect("Signup.jsp");
            }
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
