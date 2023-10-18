package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao{
	public ArrayList<loaibean> getloai()throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("tin","Công nghệ thông tin"));
		ds.add(new loaibean("toan","Tóan ứng dụng"));
		ds.add(new loaibean("ly","Công nghệ vật liệu"));
		ds.add(new loaibean("hoa","Hóa hữu cơ"));
		return ds;
	}
} 