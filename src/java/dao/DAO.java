
package dao;

import context.Connections;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from CATEGORY";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Category(rs.getInt(1), 
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
//    public List<Product> getAllProductByCategory(){
//        List<Product> list = new ArrayList<>();
//        String query = "select * \n" +
//"	from PRODUCT p, CATEGORY c\n" +
//"	where p.cateid = c.cateid and c.catename = 'rs.getString()';";
//        try {
//            con = new Connections().getConnection();
//            ps = con.prepareStatement(query);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add(new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(8),
//                        rs.getString(9)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    
    public List<Product> getAllLatestProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select top(3) * \n"
                + "	from PRODUCT\n"
                + "	order by pid desc";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getProductByCategoryID(String cid){
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT\n"
                + "	where cateid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Product getProductByID(String pid){
        String query = "select * from PRODUCT\n"
                + "	where pid = ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Product> SearchProductByName(String textSearch){
        List<Product> list = new ArrayList<>();
        String query = "select * from PRODUCT\n"
                + "	where pname like ?";
        try {
            con = new Connections().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1,"%" + textSearch + "%");
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Product> list = dao.getAllProduct();
//        System.out.println(list);
//        
//        List<Category> listC = dao.getAllCategory();
//        System.out.println(listC);
        List<Product> listLP = dao.getAllLatestProduct();
        System.out.println(listLP);
    }
}
