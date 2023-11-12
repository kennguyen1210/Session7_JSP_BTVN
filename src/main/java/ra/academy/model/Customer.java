package ra.academy.model;

import java.util.Date;

public class Customer {
    private String name;
    private Date ngaySinh;
    private String diaChi;
    private String img;

    public Customer() {
    }

    public Customer(String name, String ngaySinh, String diaChi, String img) {
        this.name = name;
        this.ngaySinh = new Date(ngaySinh);
        this.diaChi = diaChi;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
