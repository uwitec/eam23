package com.tansun.eam2.common.model.orm.bo;

import java.util.Date;

/**
 * DebtInfo generated by MyEclipse Persistence Tools
 */

public class DebtInfo extends com.tansun.rdp4j.common.web.vo.CommonBO implements
		java.io.Serializable {

	private static final long serialVersionUID = -905478112619116737L;
	private String id;
	//债权人名称包括中国建投和内部实体
	private String zqrmc;
	//债权人ID，如果债权人是中国建投，id记录中国建投编号，如果是内部实体，记录内部实体id
	private String zqrid;
	//债务人名称
	private String zwrmc;
	//债务人ID
	private String zwrid;
	//内部实体、外部实体
	private String glstlx;
	//购入债余额
	private Double grzye;
	//本金
	private Double bj;
	//利息
	private Double lx;
	//合计
	private Double hj;
	//合同金额币种ID,对应CODE表
	private String bzid;
	//币种编码，取自CODE表
	private String bzbm;
	//币种名称，取自CODE表
	private String bzmc;
	//合同金额原币金额
	private Double htje;
	//合同档案编号
	private String htbh;
	//合同起始日期
	private Date htqsrq;
	//合同终止日期
	private Date htzzrq;
	//担保类型ID,取自CODE表
	private String dblxid;
	//担保类型编码
	private String dblxbm;
	//担保类型名称
	private String dblxmc;
	//担保合同编号
	private String dbhtbh;
	//担保合同金额
	private Double dbhtje;
	//担保物资类别ID
	private String dbwzlbid;
	//担保物资类别编号
	private String dbwzlbbh;
	//担保物资类别名称
	private String dbwzlbmc;
	//保证人名称
	private String bzrmc;
	//1是诉讼0不诉讼
	private String sfss;
	//诉讼费用
	private Double ssfy;
	//是否有生效法律文书    1有0无
	private String sfysxflws;
	//主合同是否胜诉  1是0否
	private String zhtsfss;
	//担保合同是否胜诉 1是0否
	private String dbhtsfss;
	//1是0否 是否核销
	private String fshx;
	//对价转让情况
	private String djzr;
	//备注
	private String beizhu;
	//处置状态 0未处置 1：处置中2：已处置
	private String czzt;
	//省份
	private String shengfen;
	//债权种类   ZQZL	"债权种类 0：全部  1：信达转让 2： 建银转让  3：其他
	private String zqzl;
	//对价转让金额
	private Double djzrje;
	//担保方式
	private String dbfs;
	//债权金额
	private Double zqje;
	//诉讼时效
	private String sssx;
	//保证人等说明
	private String bzrdsm;
	//债务人情况介绍
	private String zwrqkjs;
	//负债介绍
	private String fzjs;
	//债权期限（天）
	private Long zqqx;
	//合同名称
	private String htmc;
	//抵押质押财产
	private String dyzycc;
	//是否保存
	private String sfbc;
	//债务人编号，如果实体是内部实体，存资产编号
	private String zwrbh;
	// Constructors
	
	private String CZcqs;
	private String wtrmc;

	// Constructors

	/** default constructor */
	public DebtInfo() {
	}

	/** full constructor */
	public DebtInfo(String zqrmc, String zqrid, String zwrmc, String zwrid,
			String glstlx, Double grzye, Double bj, Double lx, Double hj,
			String bzid, String bzbm, String bzmc, Double htje, String htbh,
			Date htqsrq, Date htzzrq, String dblxid, String dblxbm,
			String dblxmc, String dbhtbh, Double dbhtje, String dbwzlbid,
			String dbwzlbbh, String dbwzlbmc, String bzrmc, String sfss,
			Double ssfy, String sfysxflws, String zhtsfss, String dbhtsfss,
			String fshx, String djzr, String beizhu, String czzt,
			String shengfen, String zqzl, Double djzrje, String dbfs,
			Double zqje, String sssx, String bzrdsm, String zwrqkjs,
			String fzjs, Long zqqx, String htmc, String dyzycc, String sfbc,
			String zwrbh, String CZcqs, String wtrmc) {
		this.zqrmc = zqrmc;
		this.zqrid = zqrid;
		this.zwrmc = zwrmc;
		this.zwrid = zwrid;
		this.glstlx = glstlx;
		this.grzye = grzye;
		this.bj = bj;
		this.lx = lx;
		this.hj = hj;
		this.bzid = bzid;
		this.bzbm = bzbm;
		this.bzmc = bzmc;
		this.htje = htje;
		this.htbh = htbh;
		this.htqsrq = htqsrq;
		this.htzzrq = htzzrq;
		this.dblxid = dblxid;
		this.dblxbm = dblxbm;
		this.dblxmc = dblxmc;
		this.dbhtbh = dbhtbh;
		this.dbhtje = dbhtje;
		this.dbwzlbid = dbwzlbid;
		this.dbwzlbbh = dbwzlbbh;
		this.dbwzlbmc = dbwzlbmc;
		this.bzrmc = bzrmc;
		this.sfss = sfss;
		this.ssfy = ssfy;
		this.sfysxflws = sfysxflws;
		this.zhtsfss = zhtsfss;
		this.dbhtsfss = dbhtsfss;
		this.fshx = fshx;
		this.djzr = djzr;
		this.beizhu = beizhu;
		this.czzt = czzt;
		this.shengfen = shengfen;
		this.zqzl = zqzl;
		this.djzrje = djzrje;
		this.dbfs = dbfs;
		this.zqje = zqje;
		this.sssx = sssx;
		this.bzrdsm = bzrdsm;
		this.zwrqkjs = zwrqkjs;
		this.fzjs = fzjs;
		this.zqqx = zqqx;
		this.htmc = htmc;
		this.dyzycc = dyzycc;
		this.sfbc = sfbc;
		this.zwrbh = zwrbh;
		this.CZcqs = CZcqs;
		this.wtrmc = wtrmc;
	}

	public String getSfbc() {
		return sfbc;
	}

	public void setSfbc(String sfbc) {
		this.sfbc = sfbc;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZqrmc() {
		return this.zqrmc;
	}

	public void setZqrmc(String zqrmc) {
		this.zqrmc = zqrmc;
	}

	public String getZqrid() {
		return this.zqrid;
	}

	public void setZqrid(String zqrid) {
		this.zqrid = zqrid;
	}

	public String getZwrmc() {
		return this.zwrmc;
	}

	public void setZwrmc(String zwrmc) {
		this.zwrmc = zwrmc;
	}

	public String getZwrid() {
		return this.zwrid;
	}

	public void setZwrid(String zwrid) {
		this.zwrid = zwrid;
	}

	public String getGlstlx() {
		return this.glstlx;
	}

	public void setGlstlx(String glstlx) {
		this.glstlx = glstlx;
	}

	public Double getGrzye() {
		return this.grzye;
	}

	public void setGrzye(Double grzye) {
		this.grzye = grzye;
	}

	public Double getBj() {
		return this.bj;
	}

	public void setBj(Double bj) {
		this.bj = bj;
	}

	public Double getLx() {
		return this.lx;
	}

	public void setLx(Double lx) {
		this.lx = lx;
	}

	public Double getHj() {
		return this.hj;
	}

	public void setHj(Double hj) {
		this.hj = hj;
	}

	public String getBzid() {
		return this.bzid;
	}

	public void setBzid(String bzid) {
		this.bzid = bzid;
	}

	public String getBzbm() {
		return this.bzbm;
	}

	public void setBzbm(String bzbm) {
		this.bzbm = bzbm;
	}

	public String getBzmc() {
		return this.bzmc;
	}

	public void setBzmc(String bzmc) {
		this.bzmc = bzmc;
	}

	public Double getHtje() {
		return this.htje;
	}

	public void setHtje(Double htje) {
		this.htje = htje;
	}

	public String getHtbh() {
		return this.htbh;
	}

	public void setHtbh(String htbh) {
		this.htbh = htbh;
	}

	public Date getHtqsrq() {
		return this.htqsrq;
	}

	public void setHtqsrq(Date htqsrq) {
		this.htqsrq = htqsrq;
	}

	public Date getHtzzrq() {
		return this.htzzrq;
	}

	public void setHtzzrq(Date htzzrq) {
		this.htzzrq = htzzrq;
	}

	public String getDblxid() {
		return this.dblxid;
	}

	public void setDblxid(String dblxid) {
		this.dblxid = dblxid;
	}

	public String getDblxbm() {
		return this.dblxbm;
	}

	public void setDblxbm(String dblxbm) {
		this.dblxbm = dblxbm;
	}

	public String getDblxmc() {
		return this.dblxmc;
	}

	public void setDblxmc(String dblxmc) {
		this.dblxmc = dblxmc;
	}

	public String getDbhtbh() {
		return this.dbhtbh;
	}

	public void setDbhtbh(String dbhtbh) {
		this.dbhtbh = dbhtbh;
	}

	public Double getDbhtje() {
		return this.dbhtje;
	}

	public void setDbhtje(Double dbhtje) {
		this.dbhtje = dbhtje;
	}

	public String getDbwzlbid() {
		return this.dbwzlbid;
	}

	public void setDbwzlbid(String dbwzlbid) {
		this.dbwzlbid = dbwzlbid;
	}

	public String getDbwzlbbh() {
		return this.dbwzlbbh;
	}

	public void setDbwzlbbh(String dbwzlbbh) {
		this.dbwzlbbh = dbwzlbbh;
	}

	public String getDbwzlbmc() {
		return this.dbwzlbmc;
	}

	public void setDbwzlbmc(String dbwzlbmc) {
		this.dbwzlbmc = dbwzlbmc;
	}

	public String getBzrmc() {
		return this.bzrmc;
	}

	public void setBzrmc(String bzrmc) {
		this.bzrmc = bzrmc;
	}

	public String getSfss() {
		return this.sfss;
	}

	public void setSfss(String sfss) {
		this.sfss = sfss;
	}

	public Double getSsfy() {
		return this.ssfy;
	}

	public void setSsfy(Double ssfy) {
		this.ssfy = ssfy;
	}

	public String getSfysxflws() {
		return this.sfysxflws;
	}

	public void setSfysxflws(String sfysxflws) {
		this.sfysxflws = sfysxflws;
	}

	public String getZhtsfss() {
		return this.zhtsfss;
	}

	public void setZhtsfss(String zhtsfss) {
		this.zhtsfss = zhtsfss;
	}

	public String getDbhtsfss() {
		return this.dbhtsfss;
	}

	public void setDbhtsfss(String dbhtsfss) {
		this.dbhtsfss = dbhtsfss;
	}

	public String getFshx() {
		return this.fshx;
	}

	public void setFshx(String fshx) {
		this.fshx = fshx;
	}

	public String getDjzr() {
		return this.djzr;
	}

	public void setDjzr(String djzr) {
		this.djzr = djzr;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getCzzt() {
		return this.czzt;
	}

	public void setCzzt(String czzt) {
		this.czzt = czzt;
	}

	public String getShengfen() {
		return this.shengfen;
	}

	public void setShengfen(String shengfen) {
		this.shengfen = shengfen;
	}

	public String getZqzl() {
		return this.zqzl;
	}

	public void setZqzl(String zqzl) {
		this.zqzl = zqzl;
	}

	public Double getDjzrje() {
		return this.djzrje;
	}

	public void setDjzrje(Double djzrje) {
		this.djzrje = djzrje;
	}

	public String getDbfs() {
		return this.dbfs;
	}

	public void setDbfs(String dbfs) {
		this.dbfs = dbfs;
	}

	public Double getZqje() {
		return this.zqje;
	}

	public void setZqje(Double zqje) {
		this.zqje = zqje;
	}

	public String getSssx() {
		return this.sssx;
	}

	public void setSssx(String sssx) {
		this.sssx = sssx;
	}

	public String getBzrdsm() {
		return this.bzrdsm;
	}

	public void setBzrdsm(String bzrdsm) {
		this.bzrdsm = bzrdsm;
	}

	public String getZwrqkjs() {
		return this.zwrqkjs;
	}

	public void setZwrqkjs(String zwrqkjs) {
		this.zwrqkjs = zwrqkjs;
	}

	public String getFzjs() {
		return this.fzjs;
	}

	public void setFzjs(String fzjs) {
		this.fzjs = fzjs;
	}

	public Long getZqqx() {
		return this.zqqx;
	}

	public void setZqqx(Long zqqx) {
		this.zqqx = zqqx;
	}

	public String getHtmc() {
		return this.htmc;
	}

	public void setHtmc(String htmc) {
		this.htmc = htmc;
	}

	public String getDyzycc() {
		return this.dyzycc;
	}

	public void setDyzycc(String dyzycc) {
		this.dyzycc = dyzycc;
	}

	@Override
	public String getMid() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getZwrbh() {
		return zwrbh;
	}

	public void setZwrbh(String zwrbh) {
		this.zwrbh = zwrbh;
	}

	public String getCZcqs() {
		return CZcqs;
	}

	public void setCZcqs(String zcqs) {
		CZcqs = zcqs;
	}

	public String getWtrmc() {
		return wtrmc;
	}

	public void setWtrmc(String wtrmc) {
		this.wtrmc = wtrmc;
	}
	
	

}