package dao;

import java.util.ArrayList;

import bean.sachbean;

public class sachdao {
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds=new ArrayList<sachbean>();
		//String masach, String tensach, String tacgia, Long soluong, Long gia,String anh. String maloai
		ds.add(new sachbean("s1","Cơ sở dữ liệu","Hùng",(long)10,(long)100000, "b1.jpg", "tin"));
		ds.add(new sachbean("s2","Cấu trúc dữ liệu","Hùng",(long)10,(long)230000, "b2.jpg", "tin"));
		ds.add(new sachbean("s3","Giải tích","Hùng",(long)10,(long)650000, "b3.jpg", "toan"));
		ds.add(new sachbean("s4","Đại số tuyến tính","Hùng",(long)10,(long)190000, "b4.jpg", "toan"));
		ds.add(new sachbean("s5","Hóa Đại cương","Hùng",(long)10,(long)750000, "b5.jpg", "hoa"));
		ds.add(new sachbean("s6","Hóa hữu cơ","Hùng",(long)10,(long)660000, "b6.jpg", "hoa"));
		ds.add(new sachbean("s7","Vật lý đại cương","Hùng",(long)10,(long)10000, "b7.jpg", "ly"));
		return ds;
	}
}
