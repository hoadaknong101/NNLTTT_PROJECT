package bean;

import java.sql.Date;

public class ThanNhan {
	private String tenThanNhan;
	private String phai;
	private Date ngaySinh;
	private String quanHe;
	
	public String getPhai() {
		return phai;
	}
	public void setPhai(String phai) {
		this.phai = phai;
	}
	public String getTenThanNhan() {
		return tenThanNhan;
	}
	public void setTenThanNhan(String tenThanNhan) {
		this.tenThanNhan = tenThanNhan;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getQuanHe() {
		return quanHe;
	}
	public void setQuanHe(String quanHe) {
		this.quanHe = quanHe;
	}
	
	public ThanNhan() {}
	
	public ThanNhan(String tenThanNhan, String phai, Date ngaySinh, String quanHe) {
		this.tenThanNhan = tenThanNhan;
		this.phai = phai;
		this.ngaySinh = ngaySinh;
		this.quanHe = quanHe;
	}
}
