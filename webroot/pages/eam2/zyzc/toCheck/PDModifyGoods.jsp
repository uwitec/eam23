<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inc/taglibs.inc"%>
<%@ include file="/inc/ProjectJQuery.inc"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>资产属性修改</title>
		<script type="text/javascript">
			$(function(){
				var isSaveSuccess = "<%=request.getAttribute("isSaveSuccess")%>";
				if(isSaveSuccess == "success"){
					window.opener.refreshGrid();
					window.close();
				}
				
				$("#cbrq").datebox({
			    	formatter:function(date){
			    		return formatDate(date);
			    	}
				});
			});
			
			//当一级分类改变时触发此方法，显示出二级分类供选择
			function ejflRefresh(fl){
				$.post("<%=basePath%>zyzc/ZCQuery_ejflRefresh.do",{
					"zyZc.yjflbm" : $(fl).val()
				},function(returnStr){
					var returnObj = eval('(' + returnStr + ')');
					if(returnObj.ejfls.length>=1){
						for(var i=0; i<returnObj.ejfls.length; i++){
							$("#ejflbm").append("<option value='" + returnObj.ejfls[i].ejflbm + "'>" + returnObj.ejfls[i].ejflmc + "</option>");
						}
					}
				});
				$("#sjflbm").html("<option value='0'>--请选择--</option>");
				$("#ejflbm").html("<option value='0'>--请选择--</option>");
			}
			
			//当二级分类改变时触发此方法，显示出三级分类供选择（如果有三级分类）
			function sjflRefresh(fl){
				$.post("<%=basePath%>zyzc/ZCQuery_sjflRefresh.do",{
					"zyZc.ejflbm" : $(fl).val()
				},function(returnStr){
					var returnObj = eval('(' + returnStr + ')');
					if(returnObj.sjfls.length>=1){
						for(var i=0; i<returnObj.sjfls.length; i++){
							$("#sjflbm").append("<option value='" + returnObj.sjfls[i].sjflbm + "'>" + returnObj.sjfls[i].sjflmc + "</option>");
						}
					}
				});
				$("#sjflbm").html("<option value='0'>--请选择--</option>");
			}
		
			function getJE(){
				var sl = $("#sl").val();
				var dj = $("#dj").val();
				$("#je").val(sl*dj);
			}
			
			function checkValues(){
				var values = new Array([4]);
				values[0] = $("#yjflbm").val();
				values[1] = $("#ejflbm").val();
				values[2] = $("#sjflbm").val();
				values[3] = $("#zcmc").val();
				values[4] = $("#gg").val();
				values[5] = $("#sl").val();
				for(var i=0; i < values.length; i++){
					if(values[i]== null || values[i] == "" || values[i] == 0){
						if(i==0){
							alert("一级分类不能为空！");
							return false;
						}else if(i==1){
							alert("二级分类不能为空！");
							return false;
						}else if(i==2){
							alert("三级分类不能为空！");
							return false;
						}else if(i==3){
							alert("资产名称不能为空！");
							return false;
						}else if(i==4){
							alert("规格不能为空！");
							return false;
						}else if(i==5){
							alert("数量不能为空！");
							return false;
						}
					}
				}
				return true;
			}
			
			function setPdjg(){
				var pdsl = $("#pdsl").val();
				var sl = $("#sl").val();
				if(parseFloat(pdsl) > parseFloat(sl)){
					$("#pdjg").val("盘盈");
					return true;
				}else if(parseFloat(pdsl) == parseFloat(sl)){
					$("#pdjg").val("盘平");
					return true;
				}else if(parseFloat(pdsl) < parseFloat(sl)){
					$("#pdjg").val("盘亏");
					return true;
				}else{
					alert("您填入数量或盘点的数据只能是数字，请您重新填入！");
					return false;
				}
			}
			
			function saveBody(){
				if(setPdjg()){
					myform.submit();
				}
			}
		</script>
	</head>
	<body>
		<s:form action="zyzc/ToCheck_saveInfoToPdxx.do" name="myform"  id="myform">
			<s:hidden name="sheettype" id="sheettype"></s:hidden>
			<s:hidden name="headId" id="headId"></s:hidden>
			<s:hidden name="bodyIds" id="bodyIds"/>
			<s:hidden name="body.sbodyId" id="bodyId"/>
			<s:hidden name="saveSuccess" id="saveSuccess"/>
			<s:hidden name="pdxx.id" id="id"/>
			<s:hidden name="pdxx.pdjg" id="pdjg"/>
			<table class="newtable" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td class="td_zxy01">
						一级分类名称：
					</td>
					<td class="td_zxy02">
						<s:select name="pdxx.yjflbm" disabled="true" list="%{#session.yjMap}" id="yjflbm"
						headerKey="0" headerValue="----请选择----"  onchange="ejflRefresh(this)"/>
					</td>
					<td class="td_zxy01">
						二级分类名称：
					</td>
					<td class="td_zxy02">
						<s:select name="pdxx.ejflbm" disabled="true" list="%{#session.ejMap}" id="ejflbm"
						 headerKey="0" headerValue="----请选择----" onchange="sjflRefresh(this)"/>
					</td>
				</tr>
				<tr>
					<td class="td_zxy01">
						三级分类名称：
					</td>
					<td class="td_zxy02">
						<s:select name="pdxx.sjflbm" disabled="true" list="%{#session.sjMap}" id="sjflbm"
							headerKey="0" headerValue="----请选择----" />
					</td>
					<td class="td_zxy01">
						资产名称：
					</td>
					<td class="td_zxy02">
						<s:textfield name="pdxx.zcmc" disabled="true" cssClass="input" id="zcmc"/>
					</td>
				</tr>
				<tr>
					<td class="td_zxy01">
						资产编号：
					</td>
					<td class="td_zxy02">
						<s:textfield name="pdxx.zcbh" disabled="true" cssClass="input" id="zcbh"/>
					</td>
					<td class="td_zxy01">
						规 格：
					</td>
					<td class="td_zxy02">
						<s:textfield name="pdxx.gg" cssClass="input" id="gg"/>
					</td>
				</tr>
				<tr>
					<td class="td_zxy01">单 位：</td>
					<td class="td_zxy02">
						<s:select name="pdxx.jldw" headerValue="" cssClass="input"
							list="#{'本':'本','包':'包','根':'根','打':'打','件':'件','个':'个',
							'台':'台','车':'车','辆':'辆','令':'令','把':'把','张':'张','支':'支','瓶':'瓶',
							'套':'套','只':'只','盒':'盒','桶':'桶','箱':'箱','块':'块','节':'节',
							'组':'组','50个/包':'50个/包','10个/包':'10个/包'}"/>
					</td>
					<td class="td_zxy01">
						数 量：
					</td>
					<td class="td_zxy02">
						<s:textfield name="pdxx.sl" cssClass="input" id="sl" onblur="getJE()"/>
					</td>
				</tr>
				<tr>
					<td class="td_zxy01">使用人姓名：</td>
					<td class="td_zxy02">
						<s:textfield  name="pdxx.syrmc" cssClass="input" id="syrmc"/>
					</td>
					<td class="td_zxy01">使用人部门：</td>
					<td class="td_zxy02">
						<s:textfield name="pdxx.sybmbmc" id="sybmbmc" cssClass="input"/>
					</td>
				</tr>
				<tr>
					<td class="td_zxy01">盘点数量：</td>
					<td class="td_zxy02">
						<s:textfield  name="pdxx.pdsl" cssClass="input" id="pdsl"/>
					</td>
					<td class="td_zxy01">&nbsp;</td>
					<td class="td_zxy02">&nbsp;</td>
					<!--  
					<td class="td_zxy01">盘点结果：</td>
					<td class="td_zxy02">
						<s:select name="pdxx.pdjg" list="#{'盘平':'盘平','盘盈':'盘盈','盘亏':'盘亏'}" id="pdjg" cssClass="input"/>
					</td>
					-->
				</tr>
				<tr>
					<td class="td_zxy01">存放地点：</td>
					<td class="td_zxy02" colspan="3">
						<s:textfield  name="pdxx.cfdd" style="width:100%" cssClass="input" id="cfdd"/>
					</td>
				</tr>
				<tr>
				<td class="td_zxy02" colspan="4" style="text-align:right">
					<input type="button" value="提交" class="buttonface" onclick="saveBody();"/>
				</td>
			</tr>	
			</table>
		</s:form>
	</body>
</html>