package dao;

import context.Connections;
import entity.Account;
import entity.Bill;
import entity.Cart;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    //Product 
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //Category
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from CATEGORY";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //LatestProduct
    public List<Product> getAllLatestProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select top(3) * \n"
                + "	from PRODUCT\n"
                + "	order by pid desc";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //List Product Category
    public List<Product> getProductByCategoryID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT\n"
                + "	where cateid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    // Product
    public Product getProductByID(String pid) {
        String query = "select * from PRODUCT\n"
                + "	where pid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //Search
    public List<Product> SearchProductByName(String textSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT\n"
                + "	where pname like ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + textSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    //Login
    public Account Login(String user, String pass) {
        String query = "select * from ACCOUNT\n"
                + "where accusername = ?\n"
                + "and accpassword = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //Check account exist
    public Account CheckAccountExist(String user) {
        String query = "select * from ACCOUNT\n"
                + "where accusername = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //sign up
    public void Signup(String user, String pass, String name, String address, String phonenumber, String age) {
        String query = "insert into ACCOUNT\n"
                + "values\n"
                + "	(?, ?, ?, ?, ?, ?, 0, 0);";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, address);
            ps.setString(5, phonenumber);
            ps.setString(6, age);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    // fotgotpassword
    public Account ResetPassword(String user, String phonenumber) {
        String query = "select distinct accpassword from ACCOUNT\n"
                + "where accusername = ?\n"
                + "and accphonenumber = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, phonenumber);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1));
            }
        } catch (Exception e) {
        }
        return null;
    }
    // List product of seller
    public List<Product> getProductBySellID(int sellid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT\n"
                + "where sellid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, sellid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    // delete product
    public void DeleteProduct(String pid) {
        String query = "delete from PRODUCT\n"
                + "where pid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //insert product
    public void InsertProduct(String name, String image, String price,
            String description, String category, int sid, String quantity, String origin) {
        String query = "insert into PRODUCT\n"
                + "	values\n"
                + "		(?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, category);
            ps.setInt(6, sid);
            ps.setString(7, quantity);
            ps.setString(8, origin);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    // update product
    public void UpdateProduct(String name, String image, String price,
            String description, String category, String quantity, String origin, String pid, int sellid) {
        String query = "update PRODUCT\n"
                + "set pname = ?,\n"
                + "pimage = ?,\n"
                + "price = ?,\n"
                + "[description] = ?,\n"
                + "cateid = ?,\n"
                + "quantity = ?,\n"
                + "origin = ?,\n"
                + "sellid = ?\n"
                + "where pid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, category);
            ps.setString(9, pid);
            ps.setString(6, quantity);
            ps.setString(7, origin);
            ps.setInt(8, sellid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //list cart of cus
    public List<Cart> getCartByAccID(int accid) {
        List<Cart> list = new ArrayList<>();
        String query = "select c.cartid, a.accid, p.pid, p.pname, p.pimage, p.price, c.amount, p.cateid, p.quantity\n"
                + "from CART c, PRODUCT p, ACCOUNT a\n"
                + "where c.cusid = a.accid and c.pid = p.pid and a.accid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, accid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Cart(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    // add product to cart
    public void InsertCart(int pid, int cusid, int amount) {
        String query = "insert into CART(pid, cusid, amount)\n"
                + "values (?, ?, ?);";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, pid);
            ps.setInt(2, cusid);
            ps.setInt(3, amount);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    // Check Cart Exist
    public Cart CheckCartExist(int pid, int cusid) {
        String query = "select * from CART\n"
                + "where pid = ? and cusid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, pid);
            ps.setInt(2, cusid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Cart(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void UpdateAmountCart(int pid, int cusid, int amount) {
        String query = "update CART\n"
                + "set amount = ?\n"
                + "where pid = ? and cusid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, amount);
            ps.setInt(2, pid);
            ps.setInt(3, cusid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void RemoveFromCart(String cartid) {
        String query = "delete from CART\n"
                + "where cartid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cartid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountByAccID(int accid) {

        String query = "select * from ACCOUNT\n"
                + "where accid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, accid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void RemoveCartByCusID(int cusid) {
        String query = "delete from CART\n"
                + "where cusid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, cusid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateQuantityProduct(int cusid) {
        String query = "update PRODUCT\n"
                + "set quantity = p.quantity - c.amount\n"
                + "from PRODUCT p, CART c\n"
                + "where c.cusid = ? and p.pid = c.pid";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, cusid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getAllSeller() {
        List<Account> list = new ArrayList<>();
        String query = "select * from ACCOUNT \n"
                + "where isSeller = '1';";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void InsertBIll(int cusid, String allpname, String allamount,
            String allprice, int total, String datebuy) {
        String query = "insert into BILL\n"
                + "values (?,?,?,?,?,?);";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, cusid);
            ps.setString(2, allpname);
            ps.setString(3, allamount);
            ps.setString(4, allprice);
            ps.setInt(5, total);
            ps.setString(6, datebuy);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Bill> getBillByCusID(int cusid) {
        List<Bill> list = new ArrayList<>();
        String query = "select * from BILL\n"
                + "where cusid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, cusid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Bill> getAllBill() {
        List<Bill> list = new ArrayList<>();
        String query = "select b.orderid, b.cusid, a.accname, b.allpname, b.allamount, b.price, b.total, b.datebuy\n"
                + "from ACCOUNT a, BILL b\n"
                + "where a.accid = b.cusid";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void RemoveBillByBillID(int bid) {
        String query = "delete BILL\n"
                + "where orderid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, bid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Account> getAllAccount() {
        List< Account> list = new ArrayList<>();
        String query = "select * from ACCOUNT ";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                //String username, String password, String name, String address, String phonenummber, String age, int isAdmin, int isSeller
                Account newAccount = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));

                list.add(newAccount);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllCustomer() {
        List< Account> list = new ArrayList<>();
        String query = "select * from ACCOUNT\n"
                + "where isAdmin = '0' AND isSeller ='0';";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                //String username, String password, String name, String address, String phonenummber, String age, int isAdmin, int isSeller
                Account newCustomer = new Account(rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));

                list.add(newCustomer);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account getAccountByID(String id) {

        String query = "select * from ACCOUNT\n"
                + "where accid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                //String username, String password, String name, String address, String phonenummber, String age, int isAdmin, int isSeller
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9));

            }
        } catch (Exception e) {

        }
        return null;
    }

    public void UpdateAccount(String name, String Username, String address,
            String phone, String age, String id, String password, String isSeller, String isAdmin) {
        String query = "UPDATE ACCOUNT\n"
                + "SET  accname = ?,accusername = ?,accpassword = ?,accphonenumber = ?,accaddress = ?,accage = ?,isSeller = ?,isAdmin = ?\n"
                + "WHERE accid =?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, Username);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, age);
            ps.setString(7, isSeller);
            ps.setString(8, isAdmin);
            ps.setString(9, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void RemoveAccount(int accid) {
        String query = "delete ACCOUNT\n"
                + "where accid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, accid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public String getBase64Encoded(String input) {
    return Base64.getEncoder().encodeToString(input.getBytes());
    }
   

    public String getBase64Decoded(String encoded) {
    byte[] decodedBytes = Base64.getDecoder().decode(encoded);
    return new String(decodedBytes);
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Product> list = dao.getAllProduct();
//        System.out.println(list);
//        
//        List<Category> listC = dao.getAllCategory();
//        System.out.println(listC);
//        List<Product> listLP = dao.getProductBySellID(4);
//        System.out.println(listLP);
//        List<Cart> listP = dao.getCartByAccID(4);
//        System.out.println(listP);
//        Cart cart = dao.CheckCartExist(2, 17);
//        System.out.println(cart);
//        Account a = dao.CheckAccountExist("nguyenvtp");
//        System.out.println(a);
//        List<Account> la = dao.getAllAccount();
//        System.out.println(la);
//        System.out.println(dao.getNameCategory(20));
//        List<Bill> listb = dao.getAllBill();
//        System.out.println(listb);
//        dao.UpdateAccount("ab", "ac", "nv", "0987656789", "42", "19", "1221");
//        String a = "987656789";
//        String b = dao.getBase64Encoded(a);
//        System.out.println(b);

    }
}
