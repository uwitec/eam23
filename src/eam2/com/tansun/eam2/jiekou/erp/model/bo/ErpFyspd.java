package com.tansun.eam2.jiekou.erp.model.bo;

import com.tansun.rdp4j.common.web.vo.CommonBO;

/**
 * ErpFyspd generated by MyEclipse Persistence Tools
 */

public class ErpFyspd extends CommonBO implements java.io.Serializable {

	// Fields

	private Long id;
	private String sfjs;
	private String bdocid;
	private String bill;
	private String erpbill;
	private String eampk;
	private String erppk;
	private String sfsc;

	// Constructors

	/** default constructor */
	public ErpFyspd() {
	}

	/** full constructor */
	public ErpFyspd(String sfjs, String bdocid, String bill, String erpbill,
			String eampk, String erppk, String sfsc) {
		this.sfjs = sfjs;
		this.bdocid = bdocid;
		this.bill = bill;
		this.erpbill = erpbill;
		this.eampk = eampk;
		this.erppk = erppk;
		this.sfsc = sfsc;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSfjs() {
		return this.sfjs;
	}

	public void setSfjs(String sfjs) {
		this.sfjs = sfjs;
	}

	public String getBdocid() {
		return this.bdocid;
	}

	public void setBdocid(String bdocid) {
		this.bdocid = bdocid;
	}

	public String getBill() {
		return this.bill;
	}

	public void setBill(String bill) {
		this.bill = bill;
	}

	public String getErpbill() {
		return this.erpbill;
	}

	public void setErpbill(String erpbill) {
		this.erpbill = erpbill;
	}

	public String getEampk() {
		return this.eampk;
	}

	public void setEampk(String eampk) {
		this.eampk = eampk;
	}

	public String getErppk() {
		return this.erppk;
	}

	public void setErppk(String erppk) {
		this.erppk = erppk;
	}

	public String getSfsc() {
		return this.sfsc;
	}

	public void setSfsc(String sfsc) {
		this.sfsc = sfsc;
	}

	@Override
	public String getMid() {
		// TODO Auto-generated method stub
		return null;
	}

}