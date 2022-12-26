package Dao.porder;

import java.util.List;

import Model.porder;

public interface porderDao {
	//Create
	void add(porder p);
	//read
	List<porder> selectAll();
	porder selectId(int id);
	List<porder> selectSum(int start,int end);
	
	//update
	void update(porder p);
	
	//delete
	void delete(int id);
	
	
	

}