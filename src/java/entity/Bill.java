
package entity;

public class Bill {
    private int bid;
    private int cusid;
    private String allpname, allamount, allprice;
    private int total;
    private String datebuy;
    private String cusname;

    public Bill() {
    }

    public Bill(int bid, int cusid, String allpname, String allamount, String allprice, int total) {
        this.bid = bid;
        this.cusid = cusid;
        this.allpname = allpname;
        this.allamount = allamount;
        this.allprice = allprice;
        this.total = total;
    }

    public Bill(int bid, int cusid, String allpname, String allamount, String allprice, int total, String datebuy) {
        this.bid = bid;
        this.cusid = cusid;
        this.allpname = allpname;
        this.allamount = allamount;
        this.allprice = allprice;
        this.total = total;
        this.datebuy = datebuy;
    }
    
    public Bill(int bid, int cusid, String cusname, String allpname, String allamount, String allprice, int total, String datebuy) {
        this.bid = bid;
        this.cusid = cusid;
        this.cusname = cusname;     
        this.allpname = allpname;
        this.allamount = allamount;
        this.allprice = allprice;
        this.total = total;
        this.datebuy = datebuy;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public int getCusid() {
        return cusid;
    }

    public void setCusid(int cusid) {
        this.cusid = cusid;
    }

    public String getAllpname() {
        return allpname;
    }

    public void setAllpname(String allpname) {
        this.allpname = allpname;
    }

    public String getAllamount() {
        return allamount;
    }

    public void setAllamount(String allamount) {
        this.allamount = allamount;
    }

    public String getAllprice() {
        return allprice;
    }

    public void setAllprice(String allprice) {
        this.allprice = allprice;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getDatebuy() {
        return datebuy;
    }

    public void setDatebuy(String datebuy) {
        this.datebuy = datebuy;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname;
    }

    @Override
    public String toString() {
        return "Bill{" + "bid=" + bid + ", cusid=" + cusid + ", allpname=" + allpname + ", allamount=" + allamount + ", allprice=" + allprice + ", total=" + total + ", datebuy=" + datebuy + ", cusname=" + cusname + '}';
    }



    
    
}
