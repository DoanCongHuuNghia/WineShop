package controller;

import dao.DAO;
import entity.Category;
import entity.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name="CategoryControlServlet", urlPatterns={"/category"})
public class CategoryControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String CateID = request.getParameter("cid");
        
        DAO dao = new DAO();
        List<Product> listPBCID = dao.getProductByCategoryID(CateID);
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("listP", listPBCID);
        request.setAttribute("listC", listC);
//        request.setAttribute("tag", CateID);
        
        request.getRequestDispatcher("Shop.jsp").forward(request, response);
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
