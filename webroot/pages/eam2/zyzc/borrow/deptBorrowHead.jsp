<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inc/taglibs.inc"%>
<%@ include file="/inc/ProjectJQuery.inc"%>
<%
	String userTid = (String) request.getAttribute("userTid");
	String headId = request.getAttribute("head.sheadId").toString();
%>
<!-- ==========================  权限控制添加     ======================================== -->
<r:controlfile file="/pages/eam2/zyzc/borrow/borrow.ctl.xml"></r:controlfile>
<!-- ================================================================================== -->
<!-- ==========================工作流属性初始化=========================================== -->
<%@ include file="/pages/rdp4j/workflow/task/workflow_attribute_include.jsp"%>
<!-- ================================================================================== -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>自用固定资产借用申请</title>
		<!-- ==========================工作流javascript========================================= -->
		<%
			String formName = "myform";
			actionSpaceName = "zyzcWorkflow";
			actionPath = "zyzcWorkflow";
		%>
		<%@ include	file="/pages/rdp4j/workflow/task/workflow_javascript_include.jsp"%>
		<!-- ================================================================================== -->
		<script type="text/javascript">
			$(function(){
			   window.parent.clearPanelTool();
				<%@ include file="/pages/rdp4j/workflow/task/workflow_button_include.jsp"%>
				jQuery("#blyj_reason_list").setGridWidth($("#gridTable").width());  
				jQuery("#file_list").setGridWidth($("#gridTable").width());
				jQuery("#dept_borrow_list").setGridWidth($("#gridTable").width());
		        $(window).bind('resize', function(){
		        	jQuery("#blyj_reason_list").setGridWidth($("#gridTable").width()); 
					jQuery("#dept_borrow_list").setGridWidth($("#gridTable").width());
					jQuery("#file_list").setGridWidth($("#gridTable").width());
		        });
		        <e:pc id="dept_borrow_list">
		       		var buttonJSonString = '[{"buttonHandler":"addDeptApply","buttonIcon":"icon-add","buttonText":"增加部门申请"},\
		       								 {"buttonHandler":"addPersonalApply","buttonIcon":"icon-add","buttonText":"增加个人申请"},\
											 {"buttonHandler":"modifyBody","buttonIcon":"icon-edit","buttonText":"修改"},\
											 {"buttonHandler":"detail","buttonIcon":"icon-search","buttonText":"查看"},\
											 {"buttonHandler":"deleteBody","buttonIcon":"icon-remove","buttonText":"删除"}\
					]';
					addButtons(jQuery("#gview_dept_borrow_list > .ui-jqgrid-titlebar"),buttonJSonString);
				</e:pc>
				//{"buttonHandler":"addZcbh","buttonIcon":"icon-add","buttonText":"分配物品"},\
				<e:pc id="generZcbh">
					var buttonJSonString = '[{"buttonHandler":"modifyBody","buttonIcon":"icon-edit","buttonText":"修改"}\
					]';
					addButtons(jQuery("#gview_dept_borrow_list > .ui-jqgrid-titlebar"),buttonJSonString);
				</e:pc>
				
				//----------------------------------------办理依据按钮--------------------------------------------	
				<e:pc id="blyj_reason_list">
					var buttonBlyjJSonString = '[{"buttonHandler":"addblyjAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"delblyjAss","buttonIcon":"icon-remove","buttonText":"删除"}\
					]';
					addButtons(jQuery("#gview_blyj_reason_list > .ui-jqgrid-titlebar"),buttonBlyjJSonString);
				</e:pc>
				//----------------------------------------开启采购按钮--------------------------------------------
				<e:pc id="startPurchase">	
					var aaaa = '[{"buttonHandler":"mainWindow.startPurchase","buttonIcon":"icon-ok","buttonText":"开启采购"}]';
					window.parent.appendButtonsFromChildren(aaaa,"");
				</e:pc>
				<e:pc id="completeButton">
					var parentButtonStr = '[{"buttonHandler":"mainWindow.saveToTZ","buttonIcon":"icon-finishFlow","buttonText":"办结"}]';		
										  window.parent.appendButtonsFromChildren(parentButtonStr,"");
				</e:pc>
			    //添加按钮  "#gview_list > .ui-jqgrid-titlebar
			    <e:pc id="file_list">
					var buttonFileJSonString = '[{"buttonHandler":"addFileAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"delFileAss","buttonIcon":"icon-remove","buttonText":"删除"}\
					]';
					addButtons(jQuery("#gview_file_list > .ui-jqgrid-titlebar"),buttonFileJSonString);
		       	</e:pc>
				
				<e:pc id="shengcheng">
					var headBHGen = document.getElementById("bianhao11").value;
					if(headBHGen == null || headBHGen.length == 0){
						var buttonStr_stztcz5 = '[{"id":"shengchenButton","buttonHandler":"mainWindow.generateSheetNum","buttonIcon":"icon-bianhao","buttonText":"生成编号"}]';
						window.parent.prependButtonsFromChildren(buttonStr_stztcz5,"");
					}
				</e:pc>
				<e:pc id="dayin">
					var dayin = '[{"buttonHandler":"mainWindow.dayin","buttonIcon":"icon-save","buttonText":"打印单据"}]';		
				  	window.parent.appendButtonsFromChildren(dayin,"");
			  	</e:pc>
			});
			
			
			
				//验证标题为空
			function checkEAMFormTitle(){
				var title = document.getElementById("title");
				if(title.value == null || title.value.trim().length == 0){
					alert("标题不能为空！");
					title.focus();
      				return false;
    				}
    		 	return true;
			}  
			
			function beforeWorkFlowSubmit(){
				$("input").removeAttr("disabled");	
				$("textarea").removeAttr("disabled");	
				$("select").removeAttr("disabled");	
				return true;
			}
			
			function dayin(){
				var url="<%=request.getContextPath()%>/zyzc/ZCManageHead_print.do?headId="+$('#sheadId').val()+"&filename1=borrowAppTable_shen";		
				window.open(url,'_self');	
			}
		</script>
	</head>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<s:form action="zyzc/ZCManageHead_saveHead.do" name="myform" id="myform">
	<!-- 	<div style="text-align: right">
			<input type="button" style="display:none;margin-right:5px" id="completeButton" value="办结" onclick="saveToTZ();"/>
		</div> -->
		<br/><br/>
		<div align="center"><span class="STYLE1">中国建银投资有限责任公司自用资产借用申请</span></div>
		<br/>
		<hr color="#6600CC" align="center" width="100%" />
		<!-- ==========================工作流信息项======================================= -->
		<%@ include file="/pages/rdp4j/workflow/task/workflow_header_include.jsp"%>
		<!-- =========================================================================== -->
		<s:hidden name="head.sheadId" id="sheadId" value="%{#request.head.sheadId}"></s:hidden>
		<s:hidden name="head.sheetType" id="sheetType" value="%{#request.head.sheetType}"></s:hidden>
		<s:hidden name="sheettype" id="sheettype"></s:hidden>
		<s:hidden name="deptId" id="deptId"></s:hidden>
		<s:hidden name="headId" id="headId" value="%{#request.head.sheadId}"></s:hidden>
		<s:hidden name="delBodyIds" id="delBodyIds"></s:hidden>
		<s:set name="biaodanid" value="%{#request.head.sheadId}"/>
		<s:hidden name="biaodanid" value="%{#request.biaodanid}"/>
		<r:depthidden id="deptid" view="N" />
		<!-- ==========================定义工作流隐藏域==================================== -->
		<% String urlHeader = request.getContextPath()+"/"+actionSpaceName+"/"+actionPath+"_";%>
		<!-- 工作流表单提交URL设置 -->
		<input type="hidden" id="commitUrl" value="<%=request.getContextPath()%>/zyzc/ZCManageHead_saveHead.do"/>
		<input type="hidden" id="abandonUrl" value="<%=urlHeader+abandonMethod+".do"%>"/>
		<input type="hidden" id="abandonViewUrl" value="<%=urlHeader + "abandonView.do"%>"/>
		<input type="hidden" id="endUrl" value="<%=urlHeader+endMethod+".do"%>"/>
		<input type="hidden" id="endViewUrl" value="<%=urlHeader + "endView.do"%>"/>
		<input type="hidden" id="participationUrl" value="<%=urlHeader+participationMethod+".do"%>"/>
		<input type="hidden" id="commitDraftUrl" value="<%=request.getContextPath()%>/zyzc/ZCManageHead_saveHead.do"/>
		<input type="hidden" id="draftParticipationUrl" value="<%=urlHeader+draftParticipationMethod+".do"%>"/>
		<input type="hidden" id="saveDraftUrl" value="<%=request.getContextPath()%>/zyzc/ZCManageHead_saveHead.do"/>
		<input type="hidden" id="saveTodoUrl" value="<%=request.getContextPath()%>/zyzc/ZCManageHead_saveHead.do"/>
		<!-- 保存后台的URL -->
		<input type="hidden" id="commitNextTodoUrl" value="<%=actionSpaceName%>/<%=actionPath%>_todo.do"/>
		<input type="hidden" id="commitDidUrl" value="<%=urlHeader + "did.do"%>" />
		<input type="hidden" id="draftCommitUrl" value="<%=actionSpaceName%>/<%=actionPath%>_toDraft.do"/>
		<input type="hidden" id="draftCommitTodoUrl" value="<%=actionSpaceName%>/<%=actionPath%>_todo.do"/>
		<input type="hidden" id="draftCommitNextTodoUrl" value="<%=actionSpaceName%>/<%=actionPath%>_todo.do"/>
		<input type="hidden" id="draftCommitDidUrl" value="<%=urlHeader + "did.do"%>" />
		<!-- 传阅 -->
		<input type="hidden" name="circulationUrl" value="zyzc/ZCManageHead_modifyHead.do"/>
		<input type="hidden" name="circulationParam" value="headId=<%=headId%>"/>
		<input type="hidden" name="circulationTitle" value="[传阅] <s:property value="head.title" />"/>
		<input type="hidden" id="circulationParticipation" value="<%=urlHeader+"getCirculationParticipationList.do"%>"/>
		<!-- =========================================================================== -->
			
		<table id="gridTable" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td class="td_zxy01"> 
					<font color="#FF0000"><strong>*</strong></font>标题：
				</td>
				<td colspan="3" class="td_zxy02">
					<r:textfield name="head.title" cssClass="input2" id="title" />
				</td>
			</tr>
			<tr>
				<td class="td_zxy01">编号：</td>
				<td class="td_zxy02">
					<s:textfield name="head.sheetId" disabled="true" cssClass="input" id="bianhao11" />
				</td>
				<td class="td_zxy01">拟稿日期：</td>
				<td class="td_zxy02">
					<s:textfield id="ngrq" disabled="true" name="head.ngrq" cssClass="input"/>
				</td>
			</tr>
			<tr>
				<td class="td_zxy01">拟稿人：</td>
				<td class="td_zxy02">
					<s:hidden name="head.ngrbh" id="ngrbh"></s:hidden>
					<s:textfield name="head.ngrmc" disabled="true" cssClass="input" id="ngrmc" />
				</td>
				<td class="td_zxy01">
					<font color="#FF0000"><strong>*</strong></font>联系电话：
				</td>
				<td class="td_zxy02">
					<r:textfield name="head.ldxh" cssClass="input" id="ldxh" />
				</td>
			</tr>
			<tr>
				<td class="td_zxy01">拟稿部门：</td>
				<td class="td_zxy02">
					<s:hidden name="head.ngbmmc" id="ngbmmc"></s:hidden>
					<e:dept userTid="<%=userTid%>" list="#{}" cssClass="input" name="head.ngbmbh" onchange ="changeNgbmmc()" id="ngbmbh"/>
					
				</td>
				<td class="td_zxy01">急缓程度：</td>
				<td class="td_zxy02">
					<r:select name="head.jhcd" cssClass="input" list="{'一般','急','特急'}" id="jhcd"/>
				</td>
			</tr>
		</table>

		<table id="dept_borrow_list"></table>
		<!-- ------------------------------- 办理依据 --------------------------------- -->
		<%@ include file="/inc/according.inc"%> 
		<div id="pgtoolbar" style="display: none"></div>
		<script type="text/javascript">
			jQuery("#dept_borrow_list").jqGrid({
				url:"<%=basePath%>zyzc/ZCManageBody_displayBodyListForBorrowOrConsuming.do",
				datatype:"json",
				postData:{
					"head.sheadId" 	: $("#sheadId").val(), 
					"head.ngbmbh" 	: $("#ngbmbh").val(), 
					"sheettype" 	: $("#sheettype").val()
				},
				colNames:['id','grsqdbodyid','一级分类','二级分类','三级分类',
						  '资产编号','数量','在库数量','分配数量','单位',
						  '借用人','借用部门','借用开始日期','借用到期日期','借用天数','备注'],
				colModel:[
					{name:'sbodyId',index:'sbodyId',hidden:true},
					{name:'grsqdbodyid',index:'grsqdbodyid',hidden:true},
					{name:'yjflmc',index:'yjflmc'},
					{name:'ejflmc',index:'ejflmc'},
					{name:'sjflmc',index:'sjflmc'},
					{name:'zcbh',index:'zcbh'},
					{name:'sl',index:'sl',align:"center",sorttype:"int"},		
					{name:'zksl',index:'zksl',align:"center",sorttype:"int",hidden:true},	
					{name:'bz3',index:'bz3',align:'center'},	
					{name:'jldw',index:'jldw',align:"center"},
					{name:'sqrmc',index:'sqrmc',align:"center"},
					{name:'sqbmmc',index:'sqbmmc'},
					{name:'jylyrq',index:'jylyrq'},
					{name:'jydqrq',index:'jydqrq'},
					{name:'jyts',index:'jyts'},
					{name:'bz2',index:'bz2'}
					
				],
				multiselect:true,
				rownumbers:true,
				autowidth:true,
				height:'auto',
				rowNum:1000000,
				rowList:[10,20,30],
				viewrecords:true,
				prmNames:{page:"paginator.currentPage",rows:"paginator.pageSize"},
				caption: "部门借用物品清单 ",
				loadComplete:function(data){
					if(data && data.rows.length>0){
						jQuery("#dept_borrow_list").setGridHeight(data.rows.length * 22 + 18);
					}else{
						jQuery("#dept_borrow_list").setGridHeight(0);
					}
				},
				shrinkToFit:false,
				jsonReader : {
					root:"rows",
					page: "page",
					total: "total",
					records: "records",
					repeatitems: false,
					id: "0"
				},
				gridComplete:function(){
					var bodyIdArr = jQuery("#dept_borrow_list").getDataIDs();
					if(bodyIdArr.length > 0){
						$.post(
							"<%=basePath%>zyzc/ZCManageBody_getSlBySbodyId.do",
							{"bodyIdStr"	:	""+bodyIdArr},
							function(bodyAndSLStr){
								var bodyAndSLArr = bodyAndSLStr.split(">#[]#<");
								for(var i = 0; i < bodyAndSLArr.length; i++){
									if(bodyAndSLArr[i].length > 0){
										var bodyAndSL = bodyAndSLArr[i].split(">##<");
										jQuery("#dept_borrow_list").setCell(bodyAndSL[0],"zksl",bodyAndSL[1]);
										var fpsl = jQuery("#dept_borrow_list").getCell(bodyAndSL[0],"bz3");
										if(fpsl == ""){
											jQuery("#dept_borrow_list").setCell(bodyAndSL[0],"bz3","0");
										}
									}
								}
							}
						);
					}
				}
			});
		</script>
		<e:opinion id="test" width="100%">
			<e:opinionPart id="CHECK_DEPT" biaodanid="%{#request.biaodanid}"  name="CHECK_DEPT" value="" text="承办部门意见："></e:opinionPart>
			<e:opinionPart id="DRAFT_DEPT" biaodanid="%{#request.biaodanid}"  name="DRAFT_DEPT" value="" text="拟稿部门意见："></e:opinionPart>
		</e:opinion>
		<%@ include file="/inc/file.inc"%>
		<%@ include file="/inc/listMessage.inc"%>
	</s:form>
	<script type="text/javascript">
	
		function changeNgbmmc(){
		   var dept = document.getElementById("ngbmbh");
	       var i =document.getElementById("ngbmbh").selectedIndex;
	       document.getElementById("ngbmmc").value =dept.options[i].text;
		}
		
		function checkEAMFormJSMethod(){
			var ti = document.getElementById("title");
			if(ti.value == null || ti.value.length == 0){
				alert("标题不能为空！");
				ti.focus();
		      return false;
		    }
		    var tel = document.getElementById("ldxh").value;
		    var telElement = document.getElementById("ldxh");
			if(trim(tel).length > 0){
				if(!(isPhoneWithoutAlert(tel) || checkMobilePhoneWithoutAlert(tel))){
					alert("电话号码输入不正确，请重新输入！");
					telElement.focus();
					return false;
				}
			}else{
				alert("联系电话不能为空！");
				telElement.focus();
				return false;
			}
			var idArray = $("#dept_borrow_list").getDataIDs();
		    if(idArray == null||idArray.length == 0){
		       alert("请至少添加一条资产");
		        return false;
		    }	
		    
		    var slArr = jQuery("#dept_borrow_list").getCol("sl");
		    var sqrmc = jQuery("#dept_borrow_list").getCol("sqrmc");
		    var sqbmmc = jQuery("#dept_borrow_list").getCol("sqbmmc");
		    var jylyrq = jQuery("#dept_borrow_list").getCol("jylyrq");
		    var jydqrq = jQuery("#dept_borrow_list").getCol("jydqrq");
		    var jyts = jQuery("#dept_borrow_list").getCol("jyts");
		    for(var i = 0; i < slArr.length; i++){
		    	if(slArr[i] == 0){
		    		alert("物品数量不能为0！");
		    		return false;
		    	}else if(sqrmc[i] == ""){
		    		alert("申请人不能为空！");
		    		return false;
		    	}else if(sqbmmc[i] == ""){
		    		alert("申请部门不能为空！");
		    		return false;
		    	}else if(jylyrq[i] == ""){
		    		alert("借用开始日期不能为空！");
		    		return false;
		    	}else if(jydqrq[i] == ""){
		    		alert("借用到期日期不能为空！");
		    		return false;
		    	}else if(jyts[i] == "" || jyts[i] == 0){
		    		alert("借用天数不能为0！");
		    		return false;
		    	}
		    }
		    
			return true;
		}
		
		function generateSheetNum(){
			$.post("zyzc/ZCManageHead_generateSheetNum.do",{
				"headId"		:	$("#sheadId").val(),
				"sheettype"		:	$("#sheetType").val(),
				"head.ngbmbh"	:	$("#ngbmbh").val(),
				"head.ngbmmc" 	:	$("#ngbmmc").val()
			},function(data){
				$("#bianhao11").val(data);
				window.parent.removeObj("#shengchenButton");
			});
		}
		
		function addDeptApply(){
			var sheadId = $("#sheadId").val();
			var sheettype = $("#sheetType").val();
			window.open('<%=basePath%>zyzc/ZCQuery_init.do?sheettype='+sheettype+'&headId='+sheadId,
			'','height=700, width=800, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
		}
		
		function addPersonalApply(){
			var sheettype = $("#sheettype").val();
			var ngbmbh = $("#ngbmbh").val();
			var grsqdBodyId =jQuery("#dept_borrow_list").getCol("grsqdbodyid");
			window.open('<%=basePath%>zyzc/ZCManageBody_initPersonalConsumingOrBorrow.do?sheettype='+sheettype+'&ngbmbh='+ngbmbh+'&grsqdBodyId='+grsqdBodyId,
			'','height=700, width=800, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
		}
		
		function copyPersonalApplyToBody(Ids){
			$.post("<%=basePath%>zyzc/ZCManageBody_copyPersonalApplyToBody.do",
					{
						"bodyIds"		:	""+Ids,
						"headId"		:	""+$("#sheadId").val()
					},function(data){
						jQuery("#dept_borrow_list").trigger("reloadGrid");
					}
			);
		}
	
		function deleteBody(){
			var gr = jQuery("#dept_borrow_list").jqGrid('getGridParam','selarrrow');
			if (gr.length == 0){
				alert("请选择要删除的记录!");
			}else{
				if(confirm("确认删除？")){
					var ZCManagedeleteBody ="<%=request.getContextPath()%>/zyzc/ZCManageBody_deleteBody.do";
					$.post(ZCManagedeleteBody,{delBodyIds:"" + gr + ""}, function(data){
						jQuery("#dept_borrow_list").trigger("reloadGrid");
					});
				}
			}
		}
		
		function modifyBody(){
			var gr=jQuery("#dept_borrow_list").jqGrid('getGridParam','selarrrow');
			var sheettype = $("#sheetType").val();
			if(gr.length > 1){
				alert('只能修改一条记录');
			}else if( gr.length == 1 ){
				var bodyId = gr;
				var displayFpslOrNOt = "No";
				if("<%=workflowVO.taskName%>" == "账管处理"){
					var zksl = jQuery("#dept_borrow_list").getCell(gr,"zksl");
					var zcSLTPTK = zcSLThisPageThisKind();
					displayFpslOrNOt = "Yes";
				}
				window.open('<%=request.getContextPath()%>/zyzc/ZCManageBody_modBody.do?sheettype='+sheettype+'&bodyId='+bodyId+'&displayFpslOrNOt='+displayFpslOrNOt+'&zksl='+zksl+'&zcSLTPTK='+zcSLTPTK,
					'','top=200,left=200,width=800,height=330,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
			}else alert("请选择要修改的记录");
		}
		
		function zcSLThisPageThisKind(){
			var bodyId = jQuery("#dept_borrow_list").jqGrid('getGridParam','selarrrow');
			/**
			var yjflmc = jQuery("#dept_borrow_list").getCell(bodyId,'yjflmc');
			if(yjflmc.indexOf("易耗品") > 0){
				var sl = jQuery("#dept_borrow_list").getCell(bodyId,'sl');
				return sl
			}else{
			*/
			var yjflmc = jQuery("#dept_borrow_list").getCell(bodyId,'yjflmc');
			var ejflmc = jQuery("#dept_borrow_list").getCell(bodyId,'ejflmc');
			var sjflmc = jQuery("#dept_borrow_list").getCell(bodyId,'sjflmc');
			var	mcStr = yjflmc+ejflmc+sjflmc;
			var dataIDs = jQuery("#dept_borrow_list").getDataIDs();
			var counter = 0;
			for(var i = 0; i < dataIDs.length; i++){
				var yjflmc = jQuery("#dept_borrow_list").getCell(dataIDs[i],'yjflmc');
				var ejflmc = jQuery("#dept_borrow_list").getCell(dataIDs[i],'ejflmc');
				var sjflmc = jQuery("#dept_borrow_list").getCell(dataIDs[i],'sjflmc');
				var tempStr = yjflmc+ejflmc+sjflmc;
				if(mcStr == tempStr){
					var sl1 = jQuery("#dept_borrow_list").getCell(dataIDs[i],'bz3');
					counter = counter + parseInt(sl1);
				}
			}
			return counter;
		}
		
		//查看物品详细信息
		function detail(){
			var gr = jQuery("#dept_borrow_list").jqGrid('getGridParam','selarrrow');
			if (gr.length == 0){
				alert("请选择要查看的记录!");
			}else if(gr.length > 1){
				alert("一次只能查看一条记录!");
			}else if (gr.length == 1){
				window.open('<%=basePath%>zyzc/ZCManageBody_viewGoodDetail.do?bodyId=' + gr+"&sheettype="+$("#sheetType").val()+"_view",
			'','height=210, width=800, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
			}
		}
		
		function saveZcListToBody(delBodyIds,sl){
			$.post("<%=basePath%>zyzc/ZCManageBody_saveZcListToBody.do",
					{
						"sqrmc"			:	""+$("#ngrmc").val(),
						"sqrid"			:	""+$("#ngrbh").val(),
						"sqbmid"		:	""+$("#ngbmbh").val(),
						"sqbmmc"		:	""+$("#ngbmmc").val(),
						"jylyrq"		:	""+$("#ngrq").val(),
						"delBodyIds"	:	""+delBodyIds,
						"dic3_id"		:	""+delBodyIds,
						"unionIds"		:	""+delBodyIds,
						"sl"			:	"123",
						"head.sheadId"	:	$("#sheadId").val(),
						"sheettype"		:	$("#sheettype").val()
					},function(data){
						jQuery("#dept_borrow_list").trigger("reloadGrid");
					}
			);
		}
		
		//保存到台账
		function saveToTZ(){
			if("<%=workflowVO.taskName%>" == "账管处理"){
				var DataArr = jQuery("#dept_borrow_list").getDataIDs();
				for(var i = 0; i < DataArr.length; i++){
					var yjflmc = jQuery("#dept_borrow_list").getCell(DataArr[i],"yjflmc");
			    	if(yjflmc.indexOf("固定资产") > 0){
			    		var zcbh = jQuery("#dept_borrow_list").getCell(DataArr[i],"zcbh");
			    		if(zcbh == ""){
				    		alert("固定资产的资产编号必须在账管处理环节指定！");
				    		return false;
			    		}
			    	}
			    }
			}
			
			var DataArr = jQuery("#dept_borrow_list").getDataIDs();
			for(var i=0; i<DataArr.length; i++){
				var fpslArr = jQuery("#dept_borrow_list").getCell(DataArr[i],"bz3");
				var sjflmc = jQuery("#dept_borrow_list").getCell(DataArr[i],"sjflmc");
				if(fpslArr == "0"){
					alert("三级分类名称为'"+sjflmc+"'的物品分配数量为0，请您为其分配数量！");
					return;
				}
			}
			
			if(!confirm('确定要办结处理单吗？')){
				return false;
			}
			
			var gridIds = jQuery("#dept_borrow_list").getDataIDs();
			var tempSL = 0;
			for(var i = 0; i < gridIds.length; i++){
				var yjflmc = jQuery("#dept_borrow_list").getCell(gridIds[i],"yjflmc");
				var fixAssetSL = ""; 
				if(yjflmc.indexOf("固定资产") > 0){
					fixAssetSL = jQuery("#dept_borrow_list").getCell(gridIds[i],"sl");
					tempSL = tempSL + parseInt(fixAssetSL);
				}
			}
			
			if(tempSL > 0){
				alert("借用的物品含有"+tempSL+"项固定资产，请您在本表单办结完成后，到卡片管理模块下的卡片变动处理单中，对相应的资产做卡片变动！");
			}
			
			var taskId = "<%=workflowVO.taskId%>";
			var outCome = document.myform.outCome.value;
			var sheettype = document.getElementById("sheetType").value;
			var sheadId = document.getElementById("sheadId").value;
			$.post("<%=basePath%>zyzc/ZCManageBody_finishWork4Borrow.do",
				   {'sheettype':sheettype,'headId':sheadId,'ngbmbm':""+$("#ngbmbh").val()},
				   function(data){
				   		taskDone(data, taskId);
				   }
			);
		}
		
		function taskDone(data, taskId){
			if(data == "ok"){
				// if(confirm('确定要办结处理单吗？')){
					//alert("<%=workflowVO.taskId%>");
					document.myform.action = document.getElementById("endUrl").value;
					document.myform.url.value = document.getElementById("endViewUrl").value;
					document.myform.taskId.value = taskId;
					document.myform.sheetId.value = document.getElementById("bianhao11").value;
					document.myform.outCome.value = "流程办结";
					document.myform.submit();
					return;
				// }
			}else{
				alert("办结处理未成功！");
			}
		}
		
		function addZcbh(){
			var gr=jQuery("#dept_borrow_list").jqGrid('getGridParam','selarrrow');
			var sheettype = $("#sheetType").val()+"_addZcbh";
			if(gr.length > 1){
				alert('只能修改一条记录');
			}else if( gr.length == 1 ){
				var bodyId = gr;
				var zcbhExitThisPage = jQuery("#assetList").getCol("zcbh");
				window.open('<%=request.getContextPath()%>/zyzc/ZCManageBody_modBody.do?sheettype='+sheettype+'&bodyId='+bodyId+'&zcbhExitThisPage='+zcbhExitThisPage,
					'','top=200,left=200,width=800,height=330,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
			}else alert("请选择要修改的记录");
		}
		
		//修改的情况下用此函数刷新grid
		function refreshGrid(){
			jQuery("#dept_borrow_list").trigger("reloadGrid");
		}
		
		function notEnoughZcSLAndBodyId(){
				var bodyIdThisPage = jQuery("#dept_borrow_list").getDataIDs();
				var zcmcArr = new Array();
				var AllZcmcStr = "";
				var index = 0;
				for(var i = 0; i < bodyIdThisPage.length; i++){
					var yjflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'yjflmc');
					var ejflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'ejflmc');
					var sjflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'sjflmc');
					var tempZcmcStr = yjflmc+","+ejflmc+","+sjflmc;
					if(AllZcmcStr.indexOf(tempZcmcStr) == -1){
						AllZcmcStr = AllZcmcStr + tempZcmcStr + "=";
						zcmcArr[index] = tempZcmcStr;
						index++;
					}
				}
				
				var returnResult = "";
				for(var j = 0; j < zcmcArr.length; j++){
					var counterSl = 0;
					for(var i = 0; i < bodyIdThisPage.length; i++){
						var sl = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'sl');
						var fpsl = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'bz3');
						var yjflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'yjflmc');
						var ejflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'ejflmc');
						var sjflmc = jQuery("#dept_borrow_list").getCell(bodyIdThisPage[i],'sjflmc');
						var tempZcmcStr = yjflmc+","+ejflmc+","+sjflmc;
						if(zcmcArr[j] == tempZcmcStr && parseInt(fpsl) < parseInt(sl)){
							counterSl = counterSl + (parseInt(sl) - parseInt(fpsl));
						}
					}
					returnResult = returnResult + zcmcArr[j] + "," + counterSl + "=";
				}
				return returnResult;
			}
		
		function startPurchase(){
			var str = notEnoughZcSLAndBodyId();
			var bianhao = document.getElementById('bianhao11').value;
			if(bianhao==null||bianhao==''){
				alert('请先生成编号');
				return false;
			}
			var headId = document.getElementById("sheadId").value;
			var enurl = encodeURIComponent("zyzc/ZCManageHead_newPurchaseHead.do?sheettype=purchase&applyId="+headId+"&pdk=zyzc_purchase&str="+str);
			//var openCardUrl = basePathJs + "zyzc/index.do?urlPortal=" + enurl;
			document.getElementById("ypl").value=enurl;
			var type = 'height=600, width=1211,toolbar=yes,scrollbars=yes,menubar=yes,resizable=yes,left=100,top=0';
			//window.open(openCardUrl,'采购管理',type);
			window.open(basePathJs+"pages/eam2/zyzc/consuming/test.jsp",'采购管理',type);
			return false;
		}
      </script>
      <input type="hidden" name='ypl'/>
	</body>
</html>