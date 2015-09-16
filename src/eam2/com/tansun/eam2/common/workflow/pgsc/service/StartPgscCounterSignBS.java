package com.tansun.eam2.common.workflow.pgsc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.*;



import com.tansun.eam2.common.workflow.counterSign.model.ETCounterSignBO;
import com.tansun.rdp4j.common.model.orm.PublicDao;
import com.tansun.rdp4j.common.model.orm.bo.PTDeptBO;
import com.tansun.rdp4j.generalapps.dept.service.impl.DeptBSimpl;
import com.tansun.rdp4j.generalapps.user.service.impl.UserBSimpl;
import com.tansun.rdp4j.workflow.common.util.WorkflowUtil;
import com.tansun.rdp4j.workflow.task.service.PTCommonOpinionBS;
import com.tansun.rdp4j.workflow.task.service.PTDidBS;
import com.tansun.rdp4j.workflow.task.service.PTEndBS;
import com.tansun.rdp4j.workflow.task.service.PTTodoBS;

@Service
public class StartPgscCounterSignBS {
	@Autowired
	PublicDao publicDao;
	@Autowired
	WorkflowUtil workflowutil;
	@Autowired
	PTTodoBS pTTodoBS;
	@Autowired
	PTDidBS pTDidBS;
	@Autowired
	PTEndBS pTEndBS;
	@Autowired
	UserBSimpl userBSimpl;
	@Autowired
	DeptBSimpl deptBSimpl;
	@Autowired
	PTCommonOpinionBS commonOpinionBS;
	
	public ArrayList<PTDeptBO> getParentDeptListByDeptId(Long deptId){
		PTDeptBO dept = deptBSimpl.getSingleById(deptId);
		ArrayList<PTDeptBO> deptList = new ArrayList<PTDeptBO>();
		if(dept.getParId()==1) {
			deptList.add(dept);
		}else{
			deptList.addAll(getParentDeptListByDeptId(dept.getParId()));
			deptList.add(dept);
		}
		return deptList;
	}
	/**
	 * 得到整个机构数的部门和对应的综合员列表 假设:一个部门只有一个综合员,这个综合员是一个需拟人员 无此需拟人员的部门不参与会签,不显示.
	 * @param string 
	 * 
	 * @return
	 */
	public List getDeptAndPersonList(String bizPiId, String[] deptids) {
		int k = 0, m = 0;
		for(int i = 0; i < deptids.length; i++){
			if(deptids[i].equals("10775")){
				k++;
			} else if (deptids[i].equals("113")) {
				m++;
			}
		}

		String hsql = "";
		// 建投的部门
		String hsql1 = "select dept.TID deptid,dept.DEPT_NAME deptname,us.TID userid,us.USERNAME," +
				"		case " +
				"		when dept.TID not in " +
				"			(select C.deptId " +
				"			from E_T_COUNTERSIGN C " +
				"			where C.BIZ_PIID = '"+bizPiId+"' and C.ISFINISHED='0')" +
				" 		then '1' " +
				" 		else '0' end ischeck " +
				"	from p_t_user us,p_t_dept dept, p_t_user_l_dept userdept,p_t_user_l_role urole " +
				"	where us.TID = userdept.USER_ID " +
				"		and dept.TID = userdept.DEPT_ID " +
				"		and dept.PAR_ID=10775 " +
				"		and urole.USER_ID = us.TID " +
				"		and urole.ROLE_ID = 107 " +
				"		order by dept.tid";
		
		// 建银实业的部门
		String hsql2 = "select dept.TID deptid,dept.DEPT_NAME deptname,us.TID userid,us.USERNAME," +
				"		case " +
				"		when dept.TID not in " +
				"			(select C.deptId " +
				"			from E_T_COUNTERSIGN C " +
				"			where C.BIZ_PIID = '"+bizPiId+"' and C.ISFINISHED='0')" +
				" 		then '1' " +
				" 		else '0' end ischeck " +
				"	from p_t_user us,p_t_dept dept, p_t_user_l_dept userdept,p_t_user_l_role urole " +
				"	where us.TID = userdept.USER_ID " +
				"		and dept.TID = userdept.DEPT_ID " +
				"		and dept.PAR_ID=113 " +
				"		and urole.USER_ID = us.TID " +
				"		and urole.ROLE_ID = 107 " +
				"		order by dept.tid";
		
		if(k > 0){
			hsql = hsql1;
		} else {
			hsql = hsql2;
		}
		List l1 = this.publicDao.queryForList(hsql, new ArrayList());

		return l1;
	}

	/**
	 * 得到整个机构树的部门和对应的综合员列表 假设:一个部门只有一个综合员,这个综合员是一个需拟人员 无此需拟人员的部门不参与会签,不显示.
	 * 已选为会签的为选中，未选为会签的为未选中
	 * @param string 
	 * 
	 * @return
	 */
	public List getDeptAndPersonListAll(String bizPiId, String hqbmids, String[] deptids) {
		int k = 0, m = 0;
		for(int i = 0; i < deptids.length; i++){
			if(deptids[i].equals("10775")){
				k++;
			} else if (deptids[i].equals("113")) {
				m++;
			}
		}
		String[] strs = hqbmids.trim().split(",");
		StringBuffer ids = new StringBuffer();
		for(int i = 0; i < strs.length; i++){
			if(strs.length >= 1 && i == (strs.length - 1)){
				ids.append("'" + strs[i] + "'");
			} else if(strs.length >= 1 && i != (strs.length - 1)){
				ids.append("'" + strs[i] + "'");
				ids.append(",");
			}
		}
		String hsql = "";
		// 建投的部门
		String hsql1 = "select dept.TID deptid,dept.DEPT_NAME deptname,us.TID userid,us.USERNAME," +
				"		case when dept.tid in (" + ids.toString() + ") then '0' " +
				"		when dept.TID not in " +
				"			(select C.deptId " +
				"			from E_T_COUNTERSIGN C " +
				"			where C.BIZ_PIID = '"+bizPiId+"' and C.ISFINISHED='0')" +
				" 		then '1' " +
				" 		else '0' end ischeck " +
				"	from p_t_user us,p_t_dept dept, p_t_user_l_dept userdept,p_t_user_l_role urole " +
				"	where us.TID = userdept.USER_ID " +
				"		and dept.TID = userdept.DEPT_ID " +
				"		and dept.PAR_ID=10775 " +
				"		and urole.USER_ID = us.TID " +
				"		and urole.ROLE_ID = 107 " +
				"		order by dept.tid";
		
		// 建银实业的部门
		String hsql2 = "select dept.TID deptid,dept.DEPT_NAME deptname,us.TID userid,us.USERNAME," +
				"		case when dept.tid in (" + ids.toString() + ") then '0' " +
				"		when dept.TID not in " +
				"			(select C.deptId " +
				"			from E_T_COUNTERSIGN C " +
				"			where C.BIZ_PIID = '"+bizPiId+"' and C.ISFINISHED='0')" +
				" 		then '1' " +
				" 		else '0' end ischeck " +
				"	from p_t_user us,p_t_dept dept, p_t_user_l_dept userdept,p_t_user_l_role urole " +
				"	where us.TID = userdept.USER_ID " +
				"		and dept.TID = userdept.DEPT_ID " +
				"		and dept.PAR_ID=113 " +
				"		and urole.USER_ID = us.TID " +
				"		and urole.ROLE_ID = 107 " +
				"		order by dept.tid";
		
		if(k > 0){
			hsql = hsql1;
		} else {
			hsql = hsql2;
		}
		
		List l1 = this.publicDao.queryForList(hsql, new ArrayList());

		return l1;
	}
	
	/**
	 * 获得当前用户的父部门
	 * @param deptid
	 * @return
	 */
	public String getParDept(String deptid){
		String sql = " 	select case " +
                     "  	when '"+ deptid + "' in " +
                     "       	(select t.tid " +
                     "          	from p_t_dept t " +
                     "         		start with t.par_id = '10775' " +
                     "        		connect by prior t.tid = t.par_id) then " +
                     "   		'10775' " +
                     "  	when '"+ deptid + "' in " +
                     "       	(select t.tid " +
                     "          	from p_t_dept t " +
                     "         		start with t.par_id = '113' " +
                     "        		connect by prior t.tid = t.par_id) then " +
                     "   		'113' " +
                     "  	else " +
                     "   		'10775' " +
                     "		end DEPTID " +
                	 "	from dual";
		List list = this.publicDao.queryForList(sql, new ArrayList());
		String parentDept = (String)((Map)list.get(0)).get("DEPTID");
		return parentDept;
	}
	
	/**
	 * 获得会签的详细信息
	 * @param headId
	 * @param status
	 * @return
	 */
	public List getMeetingDetail(String headId, String status){
		String hsql = "	select  t.piid piid, to_char(t.creattime,'yyyy-MM-dd HH:mm:ss') createtime, t.title title, " +
						"		dept.tid deptid, dept.dept_name deptname, us.tid userid, us.username username" +
						"	from e_t_countersign t, p_t_user us," + 
						"    	p_t_dept dept" + 
						"	where t.deptid = dept.tid" +
						"      	and t.assignid = us.tid" +
						"      	and t.headid= '" + headId + "'" +
						"      	and t.isfinished=" + status;
		List detailList = publicDao.queryForList(hsql, new ArrayList());
		return detailList;
	}
}
