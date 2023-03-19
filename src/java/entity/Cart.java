
package entity;

public class Cart {
    private int cartid, accid, pid;
    private String pname, pimage;
    private int price,amount;
    private int cateid;
    private int quantityproduct;

    public Cart() {
    }

    public Cart(int cartid, int accid, int pid, String pname, String pimage, int price, int amount) {
        this.cartid = cartid;
        this.accid = accid;
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.price = price;
        this.amount = amount;
    }

    public Cart(int cartid, int accid, int pid, String pname, String pimage, int price, int amount, int cateid) {
        this.cartid = cartid;
        this.accid = accid;
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.price = price;
        this.amount = amount;
        this.cateid = cateid;
    }

    public Cart(int cartid, int accid, int pid, String pname, String pimage, int price, int amount, int cateid, int quantityproduct) {
        this.cartid = cartid;
        this.accid = accid;
        this.pid = pid;
        this.pname = pname;
        this.pimage = pimage;
        this.price = price;
        this.amount = amount;
        this.cateid = cateid;
        this.quantityproduct = quantityproduct;
    }
    

    
    public Cart(int cartid, int pid, int accid, int amount) {
        this.cartid = cartid;
        this.accid = accid;
        this.pid = pid;
        this.amount = amount;
    }

    public int getCartid() {
        return cartid;
    }

    public void setCartid(int cartid) {
        this.cartid = cartid;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartid=" + cartid + ", accid=" + accid + ", pid=" + pid + ", pname=" + pname + ", pimage=" + pimage + ", price=" + price + ", amount=" + amount + ", cateid=" + cateid + ", quantityproduct=" + quantityproduct + '}';
    }

    
    


    
}
