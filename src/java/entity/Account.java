
package entity;

public class Account {
    private int id;
    private String username, password, name, address, phonenumber, age;
    private int isAdmin;
    private int isSeller;
    public Account() {
    }

    public Account(String password) {
        this.password = password;
    }

    public Account(String username, String password, int isAdmin, int isSeller) {
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isSeller = isSeller;
    }

    public Account(String username, String password, String name, String address, String phonenumber, String age, int isAdmin, int isSeller) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.address = address;
        this.phonenumber = phonenumber;
        this.age = age;
        this.isAdmin = isAdmin;
        this.isSeller = isSeller;
    }

    public Account(int id, String username, String password, String name, String address, String phonenumber, String age, int isAdmin, int isSeller) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.address = address;
        this.phonenumber = phonenumber;
        this.age = age;
        this.isAdmin = isAdmin;
        this.isSeller = isSeller;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenummber) {
        this.phonenumber = phonenummber;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getIsSeller() {
        return isSeller;
    }

    public void setIsSeller(int isSeller) {
        this.isSeller = isSeller;
    }

//    @Override
//    public String toString() {
//        return password;
//    }

//    @Override
//    public String toString() {
//        return "Account{" + "username=" + username + ", password=" + password + ", name=" + name + ", address=" + address + ", phonenummber=" + phonenummber + ", age=" + age + ", isAdmin=" + isAdmin + ", isSeller=" + isSeller + '}';
//    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", address=" + address + ", phonenumber=" + phonenumber + ", age=" + age + ", isAdmin=" + isAdmin + ", isSeller=" + isSeller + '}';
    }


    
    
}
