package com.tansun.eam2.zccz.ucc;

import java.util.List;
import java.util.Map;

import com.tansun.eam2.common.model.orm.bo.CzPgscJl;
import com.tansun.eam2.zccz.vo.EvalVO1;
import com.tansun.eam2.zccz.vo.EvalVO2;
import com.tansun.eam2.zccz.vo.EvalVO3;
import com.tansun.eam2.zccz.vo.EvalVO4;
import com.tansun.rdp4j.common.util.Paginator;

public interface IEvalQueryUCC {

	public void init();

	/**
	 * 查找一级分类列表
	 */
	public Map<String, String> findYjFl();

	/**
	 * 查找二级分类列表
	 */
	public Map<String, String> findEjFl(String yjFlBm);

	// 查找
	public CzPgscJl findLXbyID(String strId);

	public List<EvalVO1> queryCzPgscZskwhCld(Paginator paginator,
			EvalVO1 evalVO1);

	public List<EvalVO2> queryCzPgscZskwhCld2(Paginator paginator,
			EvalVO2 evalVO2);
	
	//评估审查台账 全口径查询
	public List<EvalVO4> queryCzPgscZskwhCld3(Paginator paginator,
			EvalVO3 evalVO3);
	
	//评估审查台账 统计查询
	public List<EvalVO4> queryCzPgscZskwhCld4(Paginator paginator,
			EvalVO3 evalVO3);
	
	public void updateMemo(String strId, String strMemo);

}
