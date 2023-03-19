package controller.customer;

import dao.DAO;
import entity.Account;
import entity.Cart;
import entity.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;


public class RemoveAllCartControlServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");       
        DAO dao = new DAO();
        if(a!=null){
            int id = a.getId();
            List<Cart> list = dao.getCartByAccID(id);
            int total = 0;  
            String allpname ="";
            String allamount ="";
            String allprice ="";
            for(Cart cart : list){
                total = total + cart.getAmount() * cart.getPrice();
                int price = cart.getAmount() * cart.getPrice();
                String allpr = String.valueOf(price);
                allpname = allpname + cart.getPname() + "<br>";
                allamount = allamount + cart.getAmount() + "<br>";
                allprice = allprice + allpr + "<br>";                           
            }
            LocalDate date = LocalDate.now();
            String datebuy = date.toString();
            dao.InsertBIll(id, allpname,allamount, allprice, total, datebuy);
            dao.UpdateQuantityProduct(id);
            dao.RemoveCartByCusID(id);
            Account acc = dao.getAccountByAccID(id);
            
            
            request.setAttribute("sum", total + (5*total)/100 + total/10);
            request.setAttribute("account", acc);
            request.setAttribute("check", "<i class=\"fas fa-check-circle text-success\"></i>");
            request.setAttribute("message", "BẠN ĐÃ MUA HÀNG THÀNH CÔNG");
            request.getRequestDispatcher("Checkout.jsp").forward(request, response);
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
