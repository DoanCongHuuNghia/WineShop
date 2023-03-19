/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminCreateProductControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a != null && a.getIsAdmin() == 1) {
            String pname = request.getParameter("name");
            String pimage = request.getParameter("image");
            String pprice = request.getParameter("price");
            String pdescription = request.getParameter("description");
            String pcategory = request.getParameter("category");
            String pquantity = request.getParameter("quantity");
            String porigin = request.getParameter("origin");
            int sid = Integer.parseInt(request.getParameter("seller"));
//            int sid = a.getId();

            DAO dao = new DAO();

            dao.InsertProduct(pname, pimage, pprice, pdescription, pcategory, sid, pquantity, porigin);
            response.sendRedirect("adminmanagerproduct");
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
