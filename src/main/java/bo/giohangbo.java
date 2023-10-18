package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them (String masach, String tensach, Long gia, Long soluongmua, String anh) {
		for(giohangbean g: ds) {
			if(g.getMasach().equals(masach)) {
				g.setSoluongmua(g.getSoluongmua()+ soluongmua);
				return;
			}
		}
		ds.add(new giohangbean(masach,tensach, gia, soluongmua,anh));
	}
	public void Xoa(String masach) {
		for(giohangbean g: ds) {
			if(g.getMasach().equals(masach)) {
				ds.remove(0);
				return;
			}
		}
	}
	public void CapNhatSoLuong(String masach, long soluongmoi) {
		for(giohangbean g: ds) {
			if(g.getMasach().equals(masach)) {
				g.setSoluongmua(soluongmoi);
				return;
			}
		}
	}
	public Long TongTien() {
		long sum=0;
		for(int i=0;i < ds.size();i++) {
			sum+=ds.get(i).getThanhtien();
		}
		return sum;
	}
}
