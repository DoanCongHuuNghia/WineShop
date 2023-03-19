
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

public class AddToCartControlServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int amount;
        String id = request.getParameter("pid");
        int pid = Integer.parseInt(id);
        DAO dao = new DAO();
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listC", listC);
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null){
            int accid = a.getId();
            if (id != null) {
                Product p = dao.getProductByID(id);
                
                if (p != null && p.getSellid()!=accid) {
                    if (request.getParameter("amount") != null) {
                        amount = Integer.parseInt(request.getParameter("amount"));
                    } else {
                        amount = 1;
                    }                 
                    Cart cart = dao.CheckCartExist(pid, accid);                      
                    if (cart == null) {                      
                        dao.InsertCart(pid, accid, amount);
                        List<Cart> list = dao.getCartByAccID(accid);
                        request.setAttribute("listCP", list);                         
                    }else{
                        int newamount = amount + cart.getAmount();
                        if( newamount > Integer.parseInt(p.getQuantity())){
                            dao.UpdateAmountCart(pid, accid, Integer.parseInt(p.getQuantity()));
                        }else{
                            dao.UpdateAmountCart(pid, accid, newamount);                          
                        }
                    }                          
                }
                int total = 0;
                List<Cart> list = dao.getCartByAccID(accid);
                for(Cart cart : list){
                    total = total + cart.getAmount() * cart.getPrice();
                }                                           
                request.setAttribute("total", total);
                request.setAttribute("sale", 0 * total);
                request.setAttribute("ship", (5 * total)/100);
                request.setAttribute("VAT", total/10);
                request.setAttribute("sum", total + (5*total)/100 + total/10);
                request.setAttribute("listCP", list);
//                response.sendRedirect("shop");
                
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
        
        int amount;
        String id = request.getParameter("pid");
        int pid = Integer.parseInt(id);
        DAO dao = new DAO();
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listC", listC);
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if(a!=null){
            int accid = a.getId();
            if (id != null) {
                Product p = dao.getProductByID(id);                
                if (p != null && p.getSellid()!=accid) {
                    if (request.getParameter("amount") != null) {
                        amount = Integer.parseInt(request.getParameter("amount"));
                    } else {
                        amount = 1;
                    }                 
                    Cart cart = dao.CheckCartExist(pid, accid);                      
                    if (cart == null) {
                        dao.InsertCart(pid, accid, amount);
                        List<Cart> list = dao.getCartByAccID(accid);
                        request.setAttribute("listCP", list);                         
                    }else{
                        int newamount = amount + cart.getAmount();
                        if( newamount > Integer.parseInt(p.getQuantity())){
                            dao.UpdateAmountCart(pid, accid, Integer.parseInt(p.getQuantity()));                            
                        }else{
                            dao.UpdateAmountCart(pid, accid, newamount);                         
                        }                      
                    }                          

                }
                int total = 0;
                List<Cart> list = dao.getCartByAccID(accid);
                for(Cart cart : list){
                    total = total + cart.getAmount() * cart.getPrice();
                }  
                
                request.setAttribute("total", total);
                request.setAttribute("sale", 0 * total);
                request.setAttribute("ship", (5 * total)/100);
                request.setAttribute("VAT", total/10);
                request.setAttribute("sum", total + (5*total)/100 + total/10);
                request.setAttribute("listCP", list);
                response.sendRedirect("shop");
//                request.getRequestDispatcher("Cart.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("Cart.jsp").forward(request, response);
            }
        }else{
            response.sendRedirect("Login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
