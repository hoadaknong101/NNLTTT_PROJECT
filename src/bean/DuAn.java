package bean;

public class DuAn {
	private int maDuAn;
	private String tenDuAn;
	private String diaDiem;
	
	public int getMaDuAn() {
		return maDuAn;
	}
	public void setMaDuAn(int maDuAn) {
		this.maDuAn = maDuAn;
	}
	public String getTenDuAn() {
		return tenDuAn;
	}
	public void setTenDuAn(String tenDuAn) {
		this.tenDuAn = tenDuAn;
	}
	public String getDiaDiem() {
		return diaDiem;
	}
	public void setDiaDiem(String diaDiem) {
		this.diaDiem = diaDiem;
	}

	public DuAn() {}
	
	public DuAn(int maDuAn, String tenDuAn, String diaDiem) {
		this.maDuAn = maDuAn;
		this.tenDuAn = tenDuAn;
		this.diaDiem = diaDiem;
	}
}
