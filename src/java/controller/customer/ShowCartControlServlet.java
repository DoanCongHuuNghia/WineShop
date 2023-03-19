package controller.customer;

import dao.DAO;
import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Product;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class ShowCartControlServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null){
            int id = a.getId();
            DAO dao = new DAO();
            List<Cart> list = dao.getCartByAccID(id);
            List<Category> listC = dao.getAllCategory();


            int total = 0;
            for(Cart cart : list){
                total = total + cart.getAmount() * cart.getPrice();
            }  

            request.setAttribute("total", total);
            request.setAttribute("sale", 0 * total);
            request.setAttribute("ship", (5 * total)/100);
            request.setAttribute("VAT", total/10);
            request.setAttribute("sum", total + (5*total)/100 + total/10);
            
            request.setAttribute("listC", listC);
            request.setAttribute("listCP", list);       
            request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
