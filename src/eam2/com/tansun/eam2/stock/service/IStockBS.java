package com.tansun.eam2.stock.service;

import java.util.List;
import java.util.Map;

import com.tansun.eam2.common.model.orm.bo.StockBookvalue;
import com.tansun.eam2.common.model.orm.bo.StockInfo;
import com.tansun.eam2.common.model.orm.bo.StockList;
import com.tansun.eam2.common.model.orm.bo.StockSbody;
import com.tansun.eam2.common.model.orm.bo.StockShead;
import com.tansun.eam2.common.model.orm.bo.StockWorklog;
import com.tansun.eam2.stock.vo.StockQueryVO;
import com.tansun.rdp4j.common.util.Paginator;

public interface IStockBS {

	
	/**
	 * 债券日常维护清单查询
	 * @param stockVO
	 * @return
	 */
	public List<StockInfo> listStockRework(StockQueryVO stockVO);
	
	

	/**
	 * 新增记录
	 * @param stwork
	 */
	public void newEntity(StockWorklog stwork);
	
	/**
	 * 保存记录
	 * @param stwork
	 */
	public void saveStock(StockWorklog stwork);
	
	
	/**
	 * 根据工作记录id查找工作记录
	 * @param id
	 * @return
	 */
	public StockWorklog viewStock(String id);
	
	
	/**
	 * 通过债券id查询 该id下所有工作记录
	 * @param id
	 * @return
	 */
	public String workLogList(String id,Paginator paginator);
	
	
	/**
	 * 通过债券id和催办人id查询 工作记录的详细信息
	 * @param stockId
	 * @param dunPersonId
	 * @return
	 */
	public StockWorklog workLogDetail(String stockId , String dunPersonId );
	
	/**
	 * 新增记录
	 * @param stwork
	 */
	public void newBookValue(StockBookvalue sb);
	
	
	/**
	 * 保存
	 * @param sb
	 */
	public void saveBookValue(StockBookvalue sb);
	
	
	/**
	 * 通过id查找bookValue表是否为新增
	 * @param id
	 * @return
	 */
	public StockBookvalue viewBookValue(String id);
	
	/**
	 * 通过id查找债券信息;
	 * @param id
	 * @return
	 */
	public StockInfo viewStockInfo(String id);
	
	
	/**
	 * 按年份查找工作记录
	 * @param cbrq
	 * @return
	 */
	public StockBookvalue viewbookValue(String nf ,String stockId);
	
	
	/**
	 * 按stockId查找工作记录
	 * @param cbrq
	 * @return
	 */
	public StockBookvalue lookBookValue(String stockId);
	
	
	/**
	 * 按照stockID查找工作记录列表
	 * @param stockId
	 * @return
	 */
	public List<StockBookvalue> bookValueList(String stockId);
	
	
	
	/**
	 * 通过id查询债券投资详细信息
	 * @param id
	 * @return
	 */
	public StockList viewDetail(String id);

	
	/**
	 * 查看流程信息
	 * @param StockId
	 * @return
	 */
	public List listStockFlow(String StockId);
	
	
	/**
	 * 债券事项审批查询  债券信息列表
	 */
	@SuppressWarnings("unchecked")
	public String stockReworkList(StockQueryVO stockVO,String id,Paginator paginator);
	
	
	/**
	 * 查看流程信息detail
	 * @param shead_id
	 * @return
	 */
	public StockShead viewStockSheadDetail(String shead_id);
	
	
	
	//--------------------日志更新--------------------
	public void saveSSchangeInfo(StockBookvalue stockBookvalue_old,
			StockBookvalue stockBookvalue_new,String opType,String yearData) ;



	/**
	 * 通过id查找债券信息;
	 * @param id
	 * @return
	 */
	public StockInfo viewStockInfo1(String id);
	
}
