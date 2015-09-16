package com.tansun.eam2.zccz.ucc.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tansun.eam2.common.model.orm.bo.CzSczskHead;
import com.tansun.eam2.zccz.service.IKnowOperateBS;
import com.tansun.eam2.zccz.ucc.IKnowOperateUCC;
import com.tansun.rdp4j.common.util.Paginator;

/**
 * 知识库维护
 * 
 * @author 陈煜霄
 * @date 2010-12-22
 */
@Service
public class KnowOperateUCCImpl implements IKnowOperateUCC {

	@Autowired
	private IKnowOperateBS knowOperateBSImpl;

	/**
	 * 保存表头信息
	 * 
	 * @param head
	 */
	public void saveHead(CzSczskHead head) {
		knowOperateBSImpl.saveHead(head);
	}

	/**
	 * 修改表头信息
	 * 
	 * @param head
	 */
	public void updateHead(CzSczskHead head) {
		knowOperateBSImpl.updateHead(head);
	}

	/**
	 * 根据表头id查询表头信息
	 * 
	 * @return
	 */
	public CzSczskHead findHeadByHeadId(String headId) {
		return knowOperateBSImpl.findHeadByHeadId(headId);
	}

	/**
	 * 根据表头id查询表体信息
	 * 
	 * @param headId
	 * @return
	 */
	public String findBodyByHeadId(String headId) {
		return knowOperateBSImpl.findBodyByHeadId(headId);
	}

	/**
	 * 删除临时表中的内容
	 * 
	 * @param headId
	 * @param itemId
	 */
	public void deleteLSB(String headId, String itemId, String level) {
		knowOperateBSImpl.deleteLSB(headId, itemId, level);
	}

	/**
	 * 保存表体
	 * 
	 * @param headId
	 * @param itemId
	 */
	public void saveDeleteBody(String headId, String itemId, String level) {
		knowOperateBSImpl.saveDeleteBody(headId, itemId, level);
	}

	/**
	 * 修改临时表的内容
	 * 
	 * @param headId
	 * @param itemId
	 * @param value
	 */
	public void updateLSB(String headId, String itemId, String value,
			String level) {
		knowOperateBSImpl.updateLSB(headId, itemId, value, level);
	}

	/**
	 * 迁移临时表
	 * 
	 * @param itemId
	 * @param parentId
	 * @param nextId
	 * @return
	 */
	public void moveLSB(String itemId, String parentId, String nextId,
			String headId) {
		knowOperateBSImpl.moveLSB(itemId, parentId, nextId, headId);
	}

	/**
	 * 是否通过审批
	 * 
	 * @param Ids
	 * @param isAgree
	 */
	public void isAgree(String[] Ids, String isAgree) {
		knowOperateBSImpl.isAgree(Ids, isAgree);
	}

	/**
	 * 添加一级分类
	 * 
	 * @param headId
	 */
	public void addLSBParent1(String headId) {
		knowOperateBSImpl.addLSBParent1(headId);
	}

	/**
	 * 添加二级分类
	 * 
	 * @param headId
	 * @param itemId
	 */
	public void addLSBParent2(String headId, String itemId) {
		knowOperateBSImpl.addLSBParent2(headId, itemId);
	}

	/**
	 * 添加子节点
	 * 
	 * @param headId
	 * @param itemId
	 */
	public void addLSBChild(String headId, String itemId, String itemText) {
		knowOperateBSImpl.addLSBChild(headId, itemId, itemText);
	}

	/**
	 * 流程办结时候将变动信息写入正式表
	 * 
	 * @param headId
	 */
	public void writeToZSB(String headId) {
		knowOperateBSImpl.writeToZSB(headId);
	}

	/**
	 * 点击按钮迁移
	 * 
	 * @param headId
	 * @param qyjid
	 * @param hxmid
	 * @param hxmtext
	 * @param hydid
	 * @param hydtext
	 */
	public void moveYJ(String headId, String qyjid, String hxmid,
			String hxmtext, String hydid, String hydtext) {
		knowOperateBSImpl.moveYJ(headId, qyjid, hxmid, hxmtext, hydid, hydtext);
	}

	/**
	 * 通过用户id查找用户名
	 * 
	 * @param userId
	 * @return
	 */
	public String getUserName(String userId) {
		return knowOperateBSImpl.getUserName(userId);
	}

}
