
package entity;

public class Account {
    private String username, password, name, address, phonenummber, age;
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

    public Account(String username, String password, String name, String address, String phonenummber, String age, int isAdmin, int isSeller) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.address = address;
        this.phonenummber = phonenummber;
        this.age = age;
        this.isAdmin = isAdmin;
        this.isSeller = isSeller;
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

    public String getPhonenummber() {
        return phonenummber;
    }

    public void setPhonenummber(String phonenummber) {
        this.phonenummber = phonenummber;
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

    @Override
    public String toString() {
        return password;
    }

//    @Override
//    public String toString() {
//        return "Account{" + "username=" + username + ", password=" + password + ", name=" + name + ", address=" + address + ", phonenummber=" + phonenummber + ", age=" + age + ", isAdmin=" + isAdmin + ", isSeller=" + isSeller + '}';
//    }
    
}
