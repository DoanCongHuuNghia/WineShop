/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.login;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ForgotPasswordControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String phonenumber = request.getParameter("phonenumber");
        DAO dao = new DAO();
        Account pass = dao.ResetPassword(username, phonenumber);
        if(pass!=null){
            request.setAttribute("mess", "Your password is: ");
            request.setAttribute("mess1", pass);
            request.setAttribute("user", username);
            request.setAttribute("phone", phonenumber);
            request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
        }else{
            request.setAttribute("mess2", "Your username or phonenumber no exist.");
            request.getRequestDispatcher("ForgotPassword.jsp").forward(request, response);
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
