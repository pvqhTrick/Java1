package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao sdao = new sachdao();
	ArrayList<sachbean> ds;
	public ArrayList<sachbean> getsach() throws Exception{
		ds=sdao.getsach();
		return ds;
	}
	public ArrayList<sachbean> TimMa(String maloai) throws Exception{
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for (sachbean s: ds) {
			if(maloai.toLowerCase().trim().equals(s.getMaloai().toLowerCase().trim())) {
				tam.add(s);
			}
		}
		return tam;
	}
	public ArrayList<sachbean> Tim(String key) throws Exception{
		ArrayList<sachbean> tam = new ArrayList<sachbean>();
		for (sachbean s: ds){
			if(key.toLowerCase().trim().contains(s.getTensach().toLowerCase().trim())
			||key.toLowerCase().trim().contains(s.getTacgia().toLowerCase().trim())
			||key.toLowerCase().trim().contains(s.getMasach().toLowerCase().trim())) {
				tam.add(s);
			}
		}
		return tam;
	}
	
}
