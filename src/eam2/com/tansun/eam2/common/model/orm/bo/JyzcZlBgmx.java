package com.tansun.eam2.common.model.orm.bo;

/**
 * JyzcZlBgmx generated by MyEclipse Persistence Tools
 */

public class JyzcZlBgmx extends com.tansun.rdp4j.common.web.vo.CommonBO
		implements java.io.Serializable {

	private static final long serialVersionUID = 1588454944929913752L;
	private String id;
	private String jyzlId;
	private String bgsx;
	private String bgqnr;
	private String bghnr;
	private String spzt;

	// Constructors

	/** default constructor */
	public JyzcZlBgmx() {
	}

	/** full constructor */
	public JyzcZlBgmx(String jyzlId, String bgsx, String bgqnr, String bghnr,
			String spzt) {
		this.jyzlId = jyzlId;
		this.bgsx = bgsx;
		this.bgqnr = bgqnr;
		this.bghnr = bghnr;
		this.spzt = spzt;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getJyzlId() {
		return jyzlId;
	}

	public void setJyzlId(String jyzlId) {
		this.jyzlId = jyzlId;
	}

	public String getBgsx() {
		return this.bgsx;
	}

	public void setBgsx(String bgsx) {
		this.bgsx = bgsx;
	}

	public String getBgqnr() {
		return this.bgqnr;
	}

	public void setBgqnr(String bgqnr) {
		this.bgqnr = bgqnr;
	}

	public String getBghnr() {
		return this.bghnr;
	}

	public void setBghnr(String bghnr) {
		this.bghnr = bghnr;
	}

	public String getSpzt() {
		return this.spzt;
	}

	public void setSpzt(String spzt) {
		this.spzt = spzt;
	}

	@Override
	public String getMid() {
		// TODO Auto-generated method stub
		return null;
	}

}