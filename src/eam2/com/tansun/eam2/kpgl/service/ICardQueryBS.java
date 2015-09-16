package com.tansun.eam2.kpgl.service;

import java.util.List;

import com.tansun.eam2.common.model.orm.bo.Individualtree;
import com.tansun.eam2.common.model.orm.bo.LcCardtemp;
import com.tansun.eam2.kpgl.vo.CardListInfoVO;
import com.tansun.eam2.kpgl.vo.CardQueryVO;
import com.tansun.eam2.zyzc.vo.CardVO;
import com.tansun.rdp4j.common.util.Paginator;

/**
 * @author 陈煜霄
 * @date 2010-11-12 卡片查询
 */
public interface ICardQueryBS {
	/**
	 * 卡片查询（资产挂接卡片）
	 * 
	 * @param queryVO
	 * @param paginator
	 * @return
	 */
	public List<CardListInfoVO> queryforAsset(CardQueryVO queryVO,
			Paginator paginator);

	/**
	 * 卡片查询，查询结果由List<CardListInfoVO>转化为json串
	 * 
	 * @param card
	 *            查询bo
	 * @param sfzy是否自用，判断查询的资产是否为自用资产，1：自用，0：非自用
	 * @param zcbh资产编号
	 *            查询条件
	 * @param zcmc资产名称
	 *            查询条件
	 * @param startLRTime
	 *            录入时间（大于等于startLRTime 小于等于endLRTime）格式为MM/dd/yyyy
	 * @param endLRTime
	 *            录入时间（大于等于startLRTime 小于等于endLRTime）格式为MM/dd/yyyy
	 * @param startKSTime
	 *            开始使用时间（大于等于startKSTime，小于等于endKSTime)格式为MM/dd/yyyy
	 * @param endKSTime
	 *            开始使用时间（大于等于startKSTime，小于等于endKSTime)格式为MM/dd/yyyy
	 * @return 查询结果 {"total" : "total的值","page" : "page的值","records" :
	 *         "records的值","rows" : [{id: '卡片id的值',cardcode: '卡片编号的值',zcname:
	 *         '卡片名称的值',zcbh: '资产编号的值',zcmc: '资产名称的值',saveadsress:
	 *         '存放地点的值',usepartment: '使用部门的值',glbm:
	 *         '管理部门的值',fristbranch:'一级分行的值'},{...},{...}]}
	 *         其中total是一共多少页，page当前第几页，records一共多少条数据
	 */
	public String query(CardQueryVO queryVO, Paginator paginator);

	/**
	 * 根据nodeValue查询卡片类型id
	 * 
	 * @param nodeValue
	 * @return
	 */
	public Individualtree getColoNizeValue(String nodeValue);

	/**
	 * 根据id 查询卡片类型
	 * 
	 * @param cateIds
	 * @return
	 */
	public List getCardTypeList(String[] cateIds);

	/**
	 * 根据treeType和nodeValue查找cateName
	 * 
	 * @param treeType
	 * @param nodeValue
	 * @return
	 */
	public String findCateNameByNodeValue(String treeType, String nodeValue);

	/**
	 * 根据headId查找卡片添加的表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardAddBody(String headId);

	/**
	 * 根据headId查找卡片减少表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardReduceBody(String headId);

	/**
	 * 根据headId查找卡片修改表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardModifyBody(String headId);

	/**
	 * 根据headId查找卡片变动表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardChangeBody(String headId);

	/**
	 * 根据headId查找卡片减值表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardDevalueBody(String headId);

	/**
	 * 根据headId查找卡片调配表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findCardAllocateBody(String headId);

	/**
	 * 根据headId查找卡片拆分之前表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findBeforeSplit(String headId);

	/**
	 * 根据headId查找卡片拆分之后表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findAfterSplit(String headId);

	/**
	 * 根据headId查找卡片合并之前表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findBeforeMerge(String headId);

	/**
	 * 根据headId查找卡片合并之后表体内容
	 * 
	 * @param headId
	 * @return
	 */
	public String findAfterMerge(String headId);

	/**
	 * 生成编号
	 * 
	 * @param headId
	 * @return
	 */
	public String queryCode(String headId);

	/**
	 * 查找一级分行
	 * 
	 * @return
	 */
	public List findFirstBranch();

	/**
	 * 根据headId查找卡片添加的表体内容 自用资产
	 * 
	 * @param headId
	 * @return
	 */
	public String findAddBody4ZyKp(String headId);

	/**
	 * 根据caSheadId（对应lc_cardtemp表中KPXZID的字段）和sbodid（对应zy_Sbody表中的Sbody_id）
	 * 到这两张表中查询出数据保存到VO中显示在界面上
	 * 
	 * @param caSheadId
	 * @param sbodyId
	 * @return
	 */
	public List<CardVO> obtainBody4ZyKp(String caSheadId, String sbodyId);

	/**
	 * @author Yanpeiling 2011-1-8
	 *         根据caSheadId（对应lc_cardtemp表中KPXZID的字段）和sbodid（对应zy_Sbody表中的Sbody_id）
	 *         到这两张表中查询出数据保存到VO中显示在界面上
	 * @param caSheadId
	 * @param sbodyId
	 * @return
	 */
	public LcCardtemp obtainLcCardtemp4ZyKp(String caSheadId, String sbodyId);

	/**
	 * 根据headId到ZyShead表中查找Ngbmyj(这个字段当作存储caSheadId使用)
	 * 
	 * @param headId
	 * @return
	 */
	public String getcaSheadIdWithHeadId(String headId);

	public String findRecordhistorys(String cardId, Paginator paginator);

	public String findRecordhistorys1(String headId, String bodyId);

	public String findAsset(String cardId);

	/**
	 * excel勾选导出
	 * 
	 * @param ids
	 * @return
	 */
	public String excelCheck(String ids);
}
