package Dao.porder;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dao.DbConnection;
import Model.porder;

public class implPorder implements porderDao{

	public static void main(String[] args) {
		//new implPorder().add(new porder("C桌",1,2,3));
		//System.out.println(new implPorder().selectAll());
		//System.out.println(new implPorder().selectId(2));
		//porder p=new implPorder().selectId(8);
		//p.setDesk("A桌");
		
		
		//new implPorder().delete(8);
		List<porder> l=new implPorder().selectSum(2000,3000);
		for(porder p:l)
		{
			System.out.println(p.getId()+"\t"+p.getDesk());
		}

	}

	@Override
	public void add(porder p) {
		SqlSession session=DbConnection.getDb();
		session.insert("porderMapper.add", p);
		session.commit();
		
	}

	@Override
	public List<porder> selectAll() {
		SqlSession session=DbConnection.getDb();
		List<porder> l=session.selectList("porderMapper.selectAll");
		return l;
	}

	@Override
	public porder selectId(int id) {
		porder p=null;
		SqlSession session=DbConnection.getDb();
		List<porder> l=session.selectList("porderMapper.selectId",id);
		porder[] P=l.toArray(new porder[l.size()]);
		if(l.size()!=0) p=P[0];
		
		return p;
	}

	@Override
	public void update(porder p) {
		SqlSession session=DbConnection.getDb();
		session.update("porderMapper.update", p);
		session.commit();
		
	}

	@Override
	public void delete(int id) {
		SqlSession session=DbConnection.getDb();
		session.delete("porderMapper.delete", id);
		session.commit();
		
	}

	@Override
	public List<porder> selectSum(int start, int end) {
		SqlSession session=DbConnection.getDb();
		Map<String,Integer> map=new HashMap();
		map.put("start",start);
		map.put("end",end);
		
		List<porder> l=session.selectList("porderMapper.selectSum",map);
		return l;
	}

}