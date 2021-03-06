package com.tansun.eam2.common.model.orm.bo;

/**
 * JyzcSqsdfyXx generated by MyEclipse Persistence Tools
 */

public class JyzcSqsdfyXx extends com.tansun.rdp4j.common.web.vo.CommonBO
		implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -6702646858460174734L;
	//ID
	private String id;
	//资产ID
	private String zcId;
	//项目名称
	private String xmmc;
	//申请金额
	private Double sqje;
	//审定金额
	private Double sdje;
	
	//实际费用
	private Double sjfy;
	//审批状态
	private String spzt;
	//处理单id
	private String cldId;
	
	// Constructors

	public String getCldId() {
		return cldId;
	}

	public void setCldId(String cldId) {
		this.cldId = cldId;
	}

	/** default constructor */
	public JyzcSqsdfyXx() {
	}

	/** full constructor */
	public JyzcSqsdfyXx(String zcId, String xmmc, Double sqje, Double sdje,Double sjfy,String spzt,String cldId) {
		this.zcId = zcId;
		this.xmmc = xmmc;
		this.sqje = sqje;
		this.sdje = sdje;
		this.sjfy = sjfy;
		this.spzt = spzt;
		this.cldId = cldId;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZcId() {
		return this.zcId;
	}

	public void setZcId(String zcId) {
		this.zcId = zcId;
	}

	public String getXmmc() {
		return this.xmmc;
	}

	public void setXmmc(String xmmc) {
		this.xmmc = xmmc;
	}

	public Double getSqje() {
		return this.sqje;
	}

	public void setSqje(Double sqje) {
		this.sqje = sqje;
	}

	public Double getSdje() {
		return this.sdje;
	}

	public void setSdje(Double sdje) {
		this.sdje = sdje;
	}

	@Override
	public String getMid() {
		// TODO Auto-generated method stub
		return null;
	}

	public Double getSjfy() {
		return sjfy;
	}

	public void setSjfy(Double sjfy) {
		this.sjfy = sjfy;
	}

	public String getSpzt() {
		return spzt;
	}

	public void setSpzt(String spzt) {
		this.spzt = spzt;
	}

}