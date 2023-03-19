package entity;

public class Product {
    private int id;
    private String name, image;
    private int price;
    private String description, quantity, orgin;
    private String cateid;
    private int sellid;
    public Product() {
    }

    public Product(int id, String name, String image, int price, String description, String quantity, String orgin) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.orgin = orgin;
    }

    public Product(int id, String name, String image, int price, String description, String quantity, String orgin, String cateid, int sellid) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.orgin = orgin;
        this.cateid = cateid;
        this.sellid = sellid;
    }

    public Product(int id, String name, String image, int price, String description, String quantity, String orgin, String cateid) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.orgin = orgin;
        this.cateid = cateid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getOrgin() {
        return orgin;
    }

    public void setOrgin(String orgin) {
        this.orgin = orgin;
    }

    public String getCateid() {
        return cateid;
    }

    public void setCateid(String cateid) {
        this.cateid = cateid;
    }

    public int getSellid() {
        return sellid;
    }

    public void setSellid(int sellid) {
        this.sellid = sellid;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", description=" + description + ", quantity=" + quantity + ", orgin=" + orgin + ", cateid=" + cateid + ", sellid=" + sellid + '}';
    }
    


    
    
}
