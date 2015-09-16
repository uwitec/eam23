package com.tansun.eam2.kpgl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class KpglCommonImpl implements KpglCommon {
	public static Map getCardMap(){
		Map map = new HashMap();
		map.put("id", "id");
		map.put("zcid", "资产id");
		map.put("bwid", "办文说明id");
		map.put("cardcode", "卡片编码");
		map.put("zcname", "卡片名称");
		map.put("saveadsress", "存放地点");
		map.put("typecode", "类别编码");
		map.put("ggxh", "规格型号");
		map.put("addtype", "增加方式");
		map.put("zjtype", "折旧方法");
		map.put("ifjc", "是否承继");
		map.put("glbm", "管理部门");
		map.put("usepartment", "使用部门");
		map.put("zjcdbm", "折旧承担部门");
		map.put("usestatus", "使用状况");
		map.put("zcstatus", "资产状态");
		map.put("mainyt", "主要用途");
		map.put("ksdate", "开始使用日期");
		map.put("qydate", "启用日期");
		map.put("ybyz", "原币原值");
		map.put("yzje", "月折旧额");
		map.put("yzjl", "月折旧率");
		map.put("ljzj", "累计折旧");
		map.put("jcz", "净残值");
		map.put("jczl", "净残值率");
		map.put("jvalue", "净值");
		map.put("syyx", "使用月限");
		map.put("yjtyf", "已计提月份");
		map.put("jzzb", "减值准备");
		map.put("jevalue", "净额");
		map.put("oldcode", "旧卡片编号");
		map.put("pgqyz", "评估前原值");
		map.put("pgqljzj", "评估前累计折旧");
		map.put("bzsm", "备注");
		map.put("fdjhm", "发动机号码");
		map.put("clpxh", "车辆牌照号");
		map.put("txff", "摊销方法");
		map.put("txcdbm", "摊销承担部门");
		map.put("txnx", "摊销年限");
		map.put("ytxyf", "已摊销月份");
		map.put("ytxe", "已摊销额");
		map.put("montxe", "月摊销额");
		map.put("wtxe", "未摊销额");
		map.put("qszm", "权属证明");
		map.put("tdzhm", "土地证号码");
		map.put("qzsyz", "权证所有者");
		map.put("ysqdjz", "原始取得价值");
		map.put("oldyearyz", "2004年1月1日原值");
		map.put("oldyearjz", "2004年1月1日累计折旧");
		map.put("oldjz", "2004年1月1日净额");
		map.put("zyzt", "在用状态");
		map.put("cupxh", "cup型号");
		map.put("wzyp", "外置硬盘");
		map.put("nzyp", "内置硬盘");
		map.put("xsq", "显示器");
		map.put("qpxh", "硬盘型号");
		map.put("nsave", "内存");
		map.put("sbxlh", "设备序列号");
		map.put("gys", "供应商");
		map.put("hthm", "合同号码");
		map.put("bxq", "保修期");
		map.put("smbxq", "上门保修期");
		map.put("sxbxq", "送修保修期");
		map.put("yxtlry", "原系统录入人员");
		map.put("username", "使用人");
		map.put("zhcfzr", "综合处负责人");
		map.put("gdzcgly", "固定资产管理员");
		map.put("zxrq", "注销日期");
		map.put("fdzhm", "房地证号码");
		map.put("ywdytd", "有无对应土地");
		map.put("dytdzh", "对应土地证号");
		map.put("dytdkp", "对应土地原卡片编号");
		map.put("jzmj", "建筑面积");
		map.put("zdmj", "占地面积");
		map.put("zxmj", "装修面积");
		map.put("zyzk", "在用状况");
		map.put("rkdh", "入库单号");
		map.put("parentid", "大类id");
		map.put("childid", "小类code编码");
		map.put("state", "状态标识");
		map.put("lctempid", "卡片临时表id");
		map.put("lrrq", "未知日期");
		map.put("attachmenturl", "附件id");
		map.put("oldcardid", "旧卡片编号");
		map.put("changereason", "触发流程原因");
		map.put("bcjt", "本次计提");
		map.put("firstbranch", "一级分行");
		map.put("synx", "使用年限");
		map.put("erpassetcode", "erp资产标识");
		map.put("erppk", "erp关联主键");
		map.put("assetstate", "经营分类状态--资产状态");
		map.put("memo_1", "拟分类结果");
		map.put("dealmethod", "减少方式");
		map.put("used_person", "正在使用该卡片的人");
		map.put("used_workflow_key", "正在使用该卡片的流程");
		map.put("sfzy", "是否自用");
		return map;
	}
}