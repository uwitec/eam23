package com.tansun.eam2.jygdzc.vo;

import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang.StringUtils;

import com.tansun.eam2.common.model.orm.bo.CardAssetHistory;
import com.tansun.eam2.common.model.orm.bo.Cardinfo;
import com.tansun.eam2.common.model.orm.bo.Individualtree;
import com.tansun.eam2.common.model.orm.bo.JjzcHtZlwg;
import com.tansun.eam2.common.model.orm.bo.JyzcXx;
import com.tansun.eam2.common.model.orm.bo.JyzcXxLsb;
import com.tansun.eam2.common.model.orm.bo.Recordhistory;
import com.tansun.rdp4j.common.model.orm.PublicDao;

public class AssetBodyVO extends JyzcXxLsb {

	private static final long serialVersionUID = 7391310182305410658L;

	// 管理部门
	private String glbm;

	// 使用部门
	private String sybm;
	// 存放地点
	private String saveadsress;

	// 当前租赁状态
	private String zlzt;

	// 是否挂接卡片
	private String sfgjkp;
	//	挂接卡片数量
	private String gjkpsl;
	// 变动数量
	private String bdsl;

	// 主卡片编号
	private String zkpbh;

	// 主卡片名称
	private String kpmc;

	// 原币原值
	private String ybyz;
	//一级委托机构
	private String yjwtgljgvalue;
	//二级委托机构
	private String ejwtgljgvalue;
	// 减值准备
	private String jzzb;
	// 尚可使用年限
	private String sksynx;
	//已使用年限
	private String ysynx;
	//准用年限
	private String zynx;
	//月折旧额
	private Double yzje;
	//累计折旧
	private Double ljzj;
	//净值
	private Double jvalue;
	//净残值
	private Double jcz;
	//净额
	private Double jevalue;
	//审定金额
	private Double sdje;
	//申请金额
	private Double sqje;
	// 资产下挂接的卡片信息
	private List<Cardinfo> cardinfoList = new ArrayList();
 
	// 主卡片
	private Cardinfo cardinfo;


	// 设置资产相关的卡片信息项
	public void setValuesAboutCard(PublicDao publicDao) {
		// 设置主卡片信息
		//this.setCardinfo(publicDao);
		// 设置资产下挂接的卡片的列表信息
		//this.setCardinfoList(publicDao);
		
		// 设置管理部门
		if (this.getCardinfo() != null) {
			this.setGlbm(publicDao, this.getCardinfo().getGlbm());
			// 使用部门
			this.setSybm(publicDao, this.getCardinfo().getUsepartment());
			//存放地点
			if(this.getCardinfo().getSaveadsress()!=null&&!"".equals(this.getCardinfo().getSaveadsress())){
				this.setSaveadsress(this.getCardinfo().getSaveadsress());
			}
			
		}	
//		//租赁状态
//		this.setZlzt(publicDao);
		//是否挂接卡片
		this.setSfgjkp();
		//挂接卡片数量
		this.setGjkpsl();
		//已使用年限
		this.setYsynx();
		//尚可使用年限
		this.setSksynx();
		//原币原值
		this.setYbyz();
		//减值准备
		this.setJzzb();
		//主卡片编号
		this.setZkpbh();
		//主卡片名称
		this.setKpmc();
		//月折旧额
		this.setYzje();
		//累计折旧
		this.setLjzj();
		//净值
		this.setJvalue();
		//净残值
		this.setJcz();
		//净额
		this.setJevalue();
		
		
	}

	@SuppressWarnings("unchecked")
	public void setCardinfo(PublicDao publicDao) {
		// 查询主卡片信息
		String hql = "select o from CardAssetHistory o where o.zcId = ? and o.dqgjzt = '0' and o.sfwzkp = '1'";
		Object[] params = new Object[] { this.getId() };
		List<CardAssetHistory> tempList = (List<CardAssetHistory>) publicDao.find(hql, params);
		CardAssetHistory history = null;
		if (tempList != null && tempList.size()>0) {
			history = tempList.get(0);
		} 
		if(history != null){
			this.cardinfo = publicDao.findById(Cardinfo.class, Long.valueOf(history.getKpId()));
		}
	}
	@SuppressWarnings("unchecked")
	public void setCardinfo(PublicDao publicDao,String zczsbId) {
		// 查询主卡片信息
		String hql = "select o from CardAssetHistory o where o.zczsbId = ? and o.dqgjzt = '0' and o.sfwzkp = '1'";
		List params = new ArrayList();
		params.add(zczsbId);
		List<CardAssetHistory> tempList = (List<CardAssetHistory>) publicDao.find(hql, params);
		CardAssetHistory history = null;
		if (tempList != null && tempList.size()>0) {
			history = tempList.get(0);
		} 
		if(history != null){
			this.cardinfo = publicDao.findById(Cardinfo.class, Long.valueOf(history.getKpId()));
		}
	}
	@SuppressWarnings("unchecked")
	public void setCardinfoList(PublicDao publicDao,String zczsbId) {
		// 根据资产id查询出所有的卡片信息
		String hql = "select o.kpId from CardAssetHistory o where o.zczsbId = ? and o.dqgjzt = '0'";
		Object[] params = new Object[] {zczsbId };
		List list = new ArrayList();
		list = (List<Cardinfo>) publicDao.find(hql, params);
		for(int i=0;i<list.size();i++ ){
			List param = new ArrayList();
			String cardhql = "select card from Cardinfo card where card.id = ? ";
			param.add(Long.valueOf((String) list.get(i)));
			List<Cardinfo> listcard = (List<Cardinfo>) publicDao.find(cardhql, param);
			if(listcard.size()>0){
				this.cardinfoList.add(listcard.get(0));
			}
		}
		
	}
	@SuppressWarnings("unchecked")
	public void setCardinfoList(PublicDao publicDao) {
		// 根据资产id查询出所有的卡片信息
		String hql = "select o.kpId from CardAssetHistory o where o.zcId = ? and o.dqgjzt = '0'";
		Object[] params = new Object[] { this.getId() };
		List list = new ArrayList();
		list = (List<Cardinfo>) publicDao.find(hql, params);
		for(int i=0;i<list.size();i++ ){
			List param = new ArrayList();
			String cardhql = "select card from Cardinfo card where card.id = ? ";
			param.add(Long.valueOf((String) list.get(i)));
			List<Cardinfo> listcard = (List<Cardinfo>) publicDao.find(cardhql, param);
			if(listcard.size()>0){
				this.cardinfoList.add(listcard.get(0));
			}
		}
		
	}

	public String getGlbm() {
		return glbm;
	}

	// 设置管理部门
	@SuppressWarnings("unchecked")
	public void setGlbm(PublicDao publicDao, String glbm) {
		// 根据管理部门编号在individualtree中查询管理部门名称
		String hql = "select tree from Individualtree tree where tree.nodevalue = ?";
		List params = new ArrayList();
		params.add(glbm);
		List temp =  publicDao.find(hql,params);
		if (temp != null) {
			this.glbm = ((Individualtree) temp.get(0)).getCategoryname();
		} else {
			this.glbm = null;
		}
	}

	// 变动数量
	public String getSybm() {
		return sybm;
	}

	// 设置使用部门
	@SuppressWarnings("unchecked")
	public void setSybm(PublicDao publicDao, String sybm) {
		// 根据管理部门编号在individualtree中查询管理部门名称
		String hql = "select tree from Individualtree tree where tree.nodevalue = ?";
		List params = new ArrayList();
		params.add(sybm);
		List<Individualtree> temp = (List<Individualtree>) publicDao.find(hql,
				params);
		if (temp != null) {
			this.sybm = temp.get(0).getCategoryname();
		} else {
			this.sybm = null;
		}
	}

	public void copyProperties(JyzcXx jyzcXx) {
		try {
			BeanUtils.copyProperties(this, jyzcXx);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	public void copyProperties(JyzcXxLsb jyzcXxLsb) {
		try {
			BeanUtils.copyProperties(this, jyzcXxLsb);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	public String getZlzt() {
		return zlzt;
	}

	// 设置租赁状态
	public void setZlzt(PublicDao publicDao) {
		/* 查询合同，根据租赁合同的合同开始日期进行判断该资产当前的租赁状态 */
		// 租赁合同key 2,合同状态为 执行中 0
		String hql = "select o from JjzcHtZlwg o where o.CHtlx = '2' and o.CHtzt = '0' and o.zcid = ?";
		Object[] params = new Object[] { this.getId() };
		JjzcHtZlwg ht = (JjzcHtZlwg) publicDao.findSingleResult(hql, params);
		if (ht == null) {
			this.zlzt = "2";
		} else if (ht.getHtdqrq().after(new Date())) { // 合同结束日期和当前日期进行判断
			// 1:在租 2：空闲
			this.zlzt = "再租";
		} else {
			this.zlzt = "空闲";
		}
	}

	public String getSfgjkp() {
		return sfgjkp;
	}

	// 是否挂接卡片
	public void setSfgjkp() {
		if (getCardinfoList()!=null&&this.getCardinfoList().size() > 0) {
			// 是
			this.sfgjkp = "是";
		} else {
			// 否
			this.sfgjkp = "否";
		}
	}

	public String getBdsl() {

		return bdsl;
	}

	// 变动数量
	@SuppressWarnings("unchecked")
	public void setBdsl(PublicDao publicDao) {
		// 资产变动时变动临时表和风险信息表两张表
		String hql = "select o from Recordhistory o where o.pkId = ? and o.zcId = ? ";
		Object[] params = new Object[] { this.getCldId(), this.getId() };
		List<Recordhistory> temp = (List<Recordhistory>) publicDao.find(hql,
				params);
		if (temp == null) {
			this.bdsl = 0 + "";
		} else {
			this.bdsl = "" + temp.size();
		}
	}

	public String getKpmc() {
		return kpmc;
	}

	// 设置卡片名称
	public void setKpmc() {
		if (this.cardinfo != null) {
			this.kpmc = this.getCardinfo().getZcname();
		} else {
			this.kpmc = null;
		}
	}

	public String getYbyz() {
		return ybyz;
	}

	// 设置原币原值
	public void setYbyz() {
		Double ybyz = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getYbyz()!=null ){
					if(!"03".equals(info.getState())){
						ybyz += info.getYbyz();
					}
				}
			}
			this.ybyz = ybyz.toString();
		} else {
			this.ybyz = "";
		}
	}

	public String getJzzb() {
		return jzzb;
	}

	// 减值准备
	public void setJzzb() {
		Double jzzb = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(0);
				if(info.getJzzb()!=null){
					if(!"03".equals(info.getState())){
						jzzb += info.getJzzb();
					}
				}
			}
			this.jzzb = jzzb.toString();
		} else {
			this.jzzb = "";
		}
	}

	 // 尚可使用年限
	
	 public void setSksynx() {
		SimpleDateFormat nowDate = new SimpleDateFormat("yyyy");
		if(this.getKssyrq() == null || StringUtils.equals(this.getZynx(),"")||this.getZynx() == null){
			this.sksynx = this.getZynx();
		}else{
			int kssyrq = Integer.parseInt(nowDate.format(this.getKssyrq()));//开始使用年限
			int jinnian = Integer.parseInt(nowDate.format(new Date()));// 今年
			int ksynx = Integer.parseInt(this.getZynx()); // 可使用年限
			sksynx = String.valueOf(ksynx - (jinnian - kssyrq)); // 尚可使用年限
		    this.sksynx = sksynx;
		}
	 }
	
	 public String getSksynx() {
		 return sksynx;
	 }

	// 费用信息
	public Double getSdje() {
		return sdje;
	}

	// 设置审定金额 //
	public void setSdje(Double sdje) {
			this.sdje = sdje;
	}

	public String getZkpbh() {
		return zkpbh;
	}

	// 主卡片编号
	public void setZkpbh() {
		if (this.cardinfo != null) {
			this.zkpbh = this.getCardinfo().getCardcode().toString();
		} else {
			this.zkpbh = null;
		}
	}

	public Cardinfo getCardinfo() {
		return cardinfo;
	}

	public List<Cardinfo> getCardinfoList() {
		return cardinfoList;
	}

	public void setSfgjkp(String sfgjkp) {
		this.sfgjkp = sfgjkp;
	}

	public void setKpmc(String kpmc) {
		this.kpmc = kpmc;
	}

	public void setYbyz(String ybyz) {
		this.ybyz = ybyz;
	}

	public void setCardinfoList(List<Cardinfo> cardinfoList) {
		this.cardinfoList = cardinfoList;
	}

	public void setCardinfo(Cardinfo cardinfo) {
		this.cardinfo = cardinfo;
	}

	public Double getYzje() {
		return yzje;
	}
	//月折旧额
	public void setYzje() {
		Double yzje = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getYzje()!=null){
					if(!"03".equals(info.getState())){
						yzje += info.getYzje();
					}
				}
			}
			this.yzje = yzje;
		} else {
			this.yzje =new Double(0);
		}
	}

	public Double getLjzj() {
		return ljzj;
	}
//累计折旧
	public void setLjzj() {
		Double ljzj = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getLjzj()!=null){
					if(!"03".equals(info.getState())){
						ljzj += info.getLjzj();
					}
				}
			}
			this.ljzj = ljzj;
		} else {
			this.ljzj =new Double(0);
		}
	}

	public Double getJvalue() {
		return jvalue;
	}
//净值
	public void setJvalue() {
		Double jvalue = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getJvalue()!=null){
					if(!"03".equals(info.getState())){
						jvalue += info.getJvalue();
					}
				}
			}
			this.jvalue = jvalue;
		} else {
			this.jvalue =new Double(0);
		}
	}

	public Double getJcz() {
		return jcz;
	}
//净残值
	public void setJcz() {
		Double jcz = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getJcz()!=null){
					if(!"03".equals(info.getState())){
						jcz += info.getJcz();
					}
				}
			}
			this.jcz = jcz;
		} else {
			this.jcz =new Double(0);
		}
	}

	public Double getJevalue() {
		return jevalue;
	}
//净额
	public void setJevalue( ) {
		Double jevalue = new Double(0);
		if (this.cardinfoList != null) {
			for (int i = 0; i < this.cardinfoList.size(); i++) {
				Cardinfo info = this.cardinfoList.get(i);
				if(info.getJevalue()!=null){
					if(!"03".equals(info.getState())){
						jevalue += info.getJevalue();
					}
				}
			}
			this.jevalue = jevalue;
		} else {
			this.jevalue =new Double(0);
		}
	}

	public String getSaveadsress() {
		return saveadsress;
	}

	public void setSaveadsress(String saveadsress) {
		this.saveadsress = saveadsress;
	}

	public String getGjkpsl() {
		return gjkpsl;
	}

	public void setGjkpsl() {
		if(this.cardinfoList.size()>0){
			this.gjkpsl =String.valueOf( this.cardinfoList.size());
		}else{
			this.gjkpsl = "0";
		}
	}

	public String getYjwtgljgvalue() {
		return yjwtgljgvalue;
	}

	public void setYjwtgljgvalue(String yjwtgljgvalue) {
		
		this.yjwtgljgvalue = yjwtgljgvalue;
	}

	public String getEjwtgljgvalue() {
		return ejwtgljgvalue;
	}

	public void setEjwtgljgvalue(String ejwtgljgvalue) {
		this.ejwtgljgvalue = ejwtgljgvalue;
	}

	public String getYsynx() {
		return ysynx;
	}

	public void setYsynx() {
		SimpleDateFormat nowDate = new SimpleDateFormat("yyyy");
		if(this.getKssyrq()==null){
			this.ysynx="0";
		}else{
			int kssyrq = Integer.parseInt(nowDate.format(this.getKssyrq()));//开始使用年限
			int jinnian = Integer.parseInt(nowDate.format(new Date()));// 今年
			ysynx = String.valueOf(jinnian - kssyrq); // 已使用年限
			this.ysynx = ysynx;
		}
	}

	public String getZynx() {
		return zynx;
	}

	public void setZynx(String zynx) {
		this.zynx = zynx;
	}

	public Double getSqje() {
		return sqje;
	}

	public void setSqje(Double sqje) {
		this.sqje = sqje;
	}
}
