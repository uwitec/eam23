package com.tansun.eam2.common.model.orm.bo;

import java.util.Date;

/**
 * JyzcHead generated by MyEclipse Persistence Tools
 */

public class JyzcHead extends com.tansun.rdp4j.common.web.vo.CommonBO implements
		java.io.Serializable {

	private static final long serialVersionUID = -2589386141031297989L;
	private String id;
	private String lcId;
	private String biaoti;
	private String bianhao;
	private String jhcd;
	private String ngr;
	private String ngrmc;
	private String lxdh;
	private Date ngrq;
	private String ngbm;
	private String ngbmmc;
	private String chengsong;
	private String pdjg;
	private String hqbm;
	private String beizhu;
	private String ywlx;
	private String sfsjfy;
	private String lcmc;
	private String describe;
	private Double applyMoney;
	private Double approveMoney;
	private Double moneyApproved;
	private String isrejected;
	private String erpnotice;
	private String region;
	private String senderp;
	private String xlid;
    
	private String sheettype;
	private String hqbmid;
	private String syhqbm;
	private String syhqbmid;
	private String cldZt;
	// Constructors

	public JyzcHead( String lcId, String biaoti, String bianhao,
			String jhcd, String ngr, String ngrmc, String lxdh, Date ngrq,
			String ngbm, String ngbmmc, String chengsong, String pdjg,
			String hqbm, String beizhu, String ywlx, String sfsjfy,
			String lcmc, String describe, Double applyMoney,
			Double approveMoney, Double moneyApproved, String isrejected,
			String erpnotice, String region, String senderp, String xlid,
			String sheettype, String cldZt) {
		super();
		
		this.lcId = lcId;
		this.biaoti = biaoti;
		this.bianhao = bianhao;
		this.jhcd = jhcd;
		this.ngr = ngr;
		this.ngrmc = ngrmc;
		this.lxdh = lxdh;
		this.ngrq = ngrq;
		this.ngbm = ngbm;
		this.ngbmmc = ngbmmc;
		this.chengsong = chengsong;
		this.pdjg = pdjg;
		this.hqbm = hqbm;
		this.beizhu = beizhu;
		this.ywlx = ywlx;
		this.sfsjfy = sfsjfy;
		this.lcmc = lcmc;
		this.describe = describe;
		this.applyMoney = applyMoney;
		this.approveMoney = approveMoney;
		this.moneyApproved = moneyApproved;
		this.isrejected = isrejected;
		this.erpnotice = erpnotice;
		this.region = region;
		this.senderp = senderp;
		this.xlid = xlid;
		this.sheettype = sheettype;
		this.cldZt =cldZt;
	}

	/** default constructor */
	public JyzcHead() {
	}

	/** full constructor */
	

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSheettype() {
		return sheettype;
	}

	public void setSheettype(String sheettype) {
		this.sheettype = sheettype;
	}

	public String getLcId() {
		return this.lcId;
	}

	public void setLcId(String lcId) {
		this.lcId = lcId;
	}

	public String getBiaoti() {
		return this.biaoti;
	}

	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}

	public String getBianhao() {
		return this.bianhao;
	}

	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}

	public String getJhcd() {
		return this.jhcd;
	}

	public void setJhcd(String jhcd) {
		this.jhcd = jhcd;
	}

	public String getNgr() {
		return this.ngr;
	}

	public void setNgr(String ngr) {
		this.ngr = ngr;
	}

	public String getNgrmc() {
		return this.ngrmc;
	}

	public void setNgrmc(String ngrmc) {
		this.ngrmc = ngrmc;
	}

	public String getLxdh() {
		return this.lxdh;
	}

	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}

	public Date getNgrq() {
		return this.ngrq;
	}

	public void setNgrq(Date ngrq) {
		this.ngrq = ngrq;
	}

	public String getNgbm() {
		return this.ngbm;
	}

	public void setNgbm(String ngbm) {
		this.ngbm = ngbm;
	}

	public String getNgbmmc() {
		return this.ngbmmc;
	}

	public void setNgbmmc(String ngbmmc) {
		this.ngbmmc = ngbmmc;
	}

	public String getChengsong() {
		return this.chengsong;
	}

	public void setChengsong(String chengsong) {
		this.chengsong = chengsong;
	}

	public String getPdjg() {
		return this.pdjg;
	}

	public void setPdjg(String pdjg) {
		this.pdjg = pdjg;
	}

	public String getHqbm() {
		return this.hqbm;
	}

	public void setHqbm(String hqbm) {
		this.hqbm = hqbm;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getYwlx() {
		return this.ywlx;
	}

	public void setYwlx(String ywlx) {
		this.ywlx = ywlx;
	}

	public String getSfsjfy() {
		return this.sfsjfy;
	}

	public void setSfsjfy(String sfsjfy) {
		this.sfsjfy = sfsjfy;
	}

	public String getLcmc() {
		return this.lcmc;
	}

	public void setLcmc(String lcmc) {
		this.lcmc = lcmc;
	}

	public String getDescribe() {
		return this.describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Double getApplyMoney() {
		return this.applyMoney;
	}

	public void setApplyMoney(Double applyMoney) {
		this.applyMoney = applyMoney;
	}

	public Double getApproveMoney() {
		return this.approveMoney;
	}

	public void setApproveMoney(Double approveMoney) {
		this.approveMoney = approveMoney;
	}

	public Double getMoneyApproved() {
		return this.moneyApproved;
	}

	public void setMoneyApproved(Double moneyApproved) {
		this.moneyApproved = moneyApproved;
	}

	public String getIsrejected() {
		return this.isrejected;
	}

	public void setIsrejected(String isrejected) {
		this.isrejected = isrejected;
	}

	public String getErpnotice() {
		return this.erpnotice;
	}

	public void setErpnotice(String erpnotice) {
		this.erpnotice = erpnotice;
	}

	public String getRegion() {
		return this.region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getSenderp() {
		return this.senderp;
	}

	public void setSenderp(String senderp) {
		this.senderp = senderp;
	}

	public String getXlid() {
		return this.xlid;
	}

	public void setXlid(String xlid) {
		this.xlid = xlid;
	}
	public String getHqbmid() {
		return hqbmid;
	}

	public void setHqbmid(String hqbmid) {
		this.hqbmid = hqbmid;
	}

	public String getSyhqbm() {
		return syhqbm;
	}

	public void setSyhqbm(String syhqbm) {
		this.syhqbm = syhqbm;
	}

	public String getSyhqbmid() {
		return syhqbmid;
	}

	public void setSyhqbmid(String syhqbmid) {
		this.syhqbmid = syhqbmid;
	}

	@Override
	public String getMid() {
	
		return null;
	}

	public String getCldZt() {
		return cldZt;
	}

	public void setCldZt(String cldZt) {
		this.cldZt = cldZt;
	}

}