<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/inc/taglibs.inc"%>
<%@ include file="/inc/ProjectJQuery.inc"%>
<%
	String stid = (String)request.getAttribute("stid");
	String id = (String)request.getAttribute("id");
	String look = (String)request.getAttribute("look");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>实体处置信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
		var winVar = "toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no, directories=no ,center=yes";
		$(function(){
			jQuery("#project_list").setGridWidth($("#tableWidth").width());
			jQuery("#project_list1").setGridWidth($("#tableWidth").width());
			jQuery("#asset_list").setGridWidth($("#tableWidth").width());
			$(window).bind('resize', function(){
				jQuery("#project_list").setGridWidth($("#tableWidth").width());
				jQuery("#project_list1").setGridWidth($("#tableWidth").width());
				jQuery("#asset_list").setGridWidth($("#tableWidth").width());
			});
			//添加按钮  "#gview_list > .ui-jqgrid-titlebar
			var buttonxiangmuJSonString = '[{"buttonHandler":"chakanzichan","buttonIcon":"icon-add","buttonText":"查看资产"}\
			]';
			addButtons(jQuery("#gview_project_list > .ui-jqgrid-titlebar"),buttonxiangmuJSonString);
			
			var buttonxiangmuJSonString1 = '[{"buttonHandler":"disposationTrace","buttonIcon":"icon-add","buttonText":"会后跟踪"}\
			]';
			addButtons(jQuery("#gview_asset_list > .ui-jqgrid-titlebar"),buttonxiangmuJSonString1);
			var buttonxiangmuJSonString2 = '[{"buttonHandler":"disposationTrace1","buttonIcon":"icon-add","buttonText":"会后跟踪"}\
			]';
			addButtons(jQuery("#gview_project_list1 > .ui-jqgrid-titlebar"),buttonxiangmuJSonString2);
		});	
		function disposationTrace(){
			var zcId = jQuery("#asset_list").jqGrid('getGridParam','selarrrow');
			var zcCzfs = "";
			if( zcId.length >0){
				for(var i = 0;i<zcId.length;i++){
					for(var j = 0;j<zcId.length;j++){
						var czfs1 = jQuery("#asset_list").getCell(zcId[i],'czfs');
						var czfs2 = jQuery("#asset_list").getCell(zcId[j],'czfs');
						if(czfs1!=czfs2){
							alert("不同的处置方式，不能一起跟踪!");
							return false;
						}
					}
				}
				iframe1.style.display = "block";
				var czfs = jQuery("#asset_list").getCell(zcId[0],'czfs');
				var cldId = jQuery("#asset_list").getCell(zcId[0],'cldId');
				var xmId = jQuery("#asset_list").getCell(zcId[0],'xmId');
				if(czfs =='公开拍卖'){//处置方式为1的是公开拍卖
					zcCzfs = 'zc1';
				}else if(czfs =='交易所挂牌'){//处置方式为2的是交易所挂牌
					zcCzfs = 'zc2';
				}else if(czfs =='协议转让'){//处置方式为3协议转让
					zcCzfs = 'zc3';
				}else if(czfs =='拆迁'){//处置方式为4拆迁
					zcCzfs = 'zc4';
				}else {
					alert("该项目没有会后跟踪！");
					return false;
				} 
				var url = "<%=request.getContextPath()%>/zccz/disposeTrack_newTrack.do?zcIds="+zcId+"&xmIds="+xmId+"&zcCzfs="+zcCzfs;
				iframeSrc.window.location = url;
			}else alert("请选择要跟踪的记录");
		}
		function chakanzichan(){
			var xmId = jQuery("#project_list").jqGrid('getGridParam','selarrrow');
			if(xmId.length > 1){
				alert('只能选择一条记录');
			}else if( xmId.length == 1){
				var cldId = jQuery("#project_list").getCell(xmId,'cldId');
				iframe1.style.display = "none";
				jQuery("#asset_list").setGridParam({
				postData:{
					'stId':'${stid}','xmId':xmId+"",
					'cldId':cldId
				}}).trigger("reloadGrid") ;
			}else alert("请选择要查看的记录");
		}
		function disposationTrace1(){
			var xmId = jQuery("#project_list1").jqGrid('getGridParam','selarrrow');
			var zcCzfs = "";
			if( xmId.length >0){
				for(var i = 0;i<xmId.length;i++){
					for(var j = 0;j<xmId.length;j++){
						var czfs1 = jQuery("#project_list1").getCell(xmId[i],'czfs');
						var czfs2 = jQuery("#project_list1").getCell(xmId[j],'czfs');
						if(czfs1!=czfs2){
							alert("不同的处置方式，不能一起跟踪!");
							return false;
						}
					}
				}
				iframe1.style.display = "block";
				var fenlei = jQuery("#project_list1").getCell(xmId[0],'fenlei');
				var czfs = jQuery("#project_list1").getCell(xmId[0],'czfs');
				if(fenlei=='3'){//实体整体处置
					if(czfs =='破产注销'){//处置方式为1的是破产注销
						zcCzfs = 'st1';
					}else if(czfs =='清算注销'){//处置方式为2的是清算注销
						zcCzfs = 'st2';
					}else if(czfs =='股权转让'||czfs =='债权转让'){//处置方式为3，4的是股权转让，债权转让
						zcCzfs = 'st3';
					}else {
						alert("该项目没有会后跟踪！");
						return false;
					} 
				} else if(fenlei=='4'){//实体人员安置
					zcCzfs = 'st4';
				}
				var url = "<%=request.getContextPath()%>/zccz/disposeTrack_newTrack.do?zcIds=${stid}&xmIds="+xmId+"&zcCzfs="+zcCzfs;
				iframeSrc.window.location = url;
			}else alert("请选择要跟踪的记录");
			
		}
	</script>
  </head>
  <body>
  <div  width="100%" id="tableWidth">&nbsp;</div>
  <table id="project_list1"></table>
 <table id="project_list"></table>
 <table id="asset_list"></table>
 <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"  >
 	<tr id="iframe1">
 		<td>
 			<iframe id="iframeSrc" frameBorder=0 height="400" width="100%" scrolling="no" src=""></iframe>
 		</td>
 	</tr>
 </table>
	<script type="text/javascript">
	jQuery("#project_list").jqGrid({				
		url:'<%=request.getContextPath()%>/stgl/weihu_findCzXxList2.do',
		postData:{'stId'   : '${stid}'},
		datatype: "json",
		mtype:"POST",
	   	colNames: ['xmid','fenlei','cldId', '处置项目名称', '项目状态' , '会议次数', '审批委员', '主持人'],
		colModel: [
			{name: 'id',index: 'id',align: "center",hidden:true},
			{name: 'fenlei',index: 'id',align: "center",hidden:true},
			{name: 'cldId',index: 'id',align: "center",hidden:true},
			{name: 'czxmmc',align: "center",index: 'diqu'},
			{name: 'zhuangtai',index: 'czfs',align: "center"},
			{name: 'hycs',index: 'czfs',align: "center"},
			{name: 'spwy',index: 'zxzt',align: "center"},
			{name: 'zcr',index: 'cz',align: "center"}],
		multiselect:true,
		ondblClickRow:function(rowid,iRow,iCol,e){//rowId,rowNum,cellIndex,enentObj
			window.open("<%=basePath%>zccz/dealTrace1Head_viewItemInfo.do?itemId=" + rowid,"",winVar);
		},
		rownumbers:true,
		autowidth:true,
		height:'auto',
		viewrecords:true,
		caption: '实体内资产处置项目信息',
		jsonReader : {
			records: "records",
			repeatitems: false,
			id: "0"
		}
	});
 jQuery("#asset_list").jqGrid({				
		url:'<%=request.getContextPath()%>/stgl/weihu_findAssetByCzXxList.do',
		datatype: "json",
		mtype:"POST",
	   	colNames: ['id','cldId','xmId','资产编号', '资产名称', '资产类型' , '评估值', '存放位置', '处置方式'],
		colModel: [
		   {name: 'id',index: 'id',align: "center",hidden:true},
		   {name: 'cldId',index: 'id',align: "center",hidden:true},
		   {name: 'xmId',index: 'id',align: "center",hidden:true},
		   {name: 'bzcbh',index: 'id',align: "center"},
		 {name: 'bzcmc',align: "center",index: 'diqu'},
		 {name: 'bstzclx',index: 'czfs',align: "center"},
		 {name: 'bpgz',index: 'czfs',align: "center"},
		 {name: 'bcfwz',index: 'zxzt',align: "center"},
		 {name: 'czfs',index: 'cz',align: "center"}],
		multiselect:true,
		rownumbers:true,
		autowidth:true,
		height:'auto',
		viewrecords:true,
		caption: '资产信息',
		jsonReader : {
			records: "records",
			repeatitems: false,
			id: "0"
		}
	});
	jQuery("#project_list1").jqGrid({				
		url:'<%=request.getContextPath()%>/stgl/weihu_findCzXxList.do',
		postData:{'stId'   : '${stid}'},
		datatype: "json",
		mtype:"POST",
	   	colNames: ['xmid','fenlei', '处置项目名称', '项目状态', '处置方式', '会议次数', '审批委员', '主持人'],
		colModel: [
		   {name: 'id',index: 'id',align: "center",hidden:true},
		   {name: 'fenlei',index: 'id',align: "center",hidden:true},
		 {name: 'czxmmc',align: "center",index: 'diqu'},
		 {name: 'zhuangtai',index: 'czfs',align: "center"},
		 {name: 'czfs',index: 'czfs',align: "center"},
		 {name: 'hycs',index: 'czfs',align: "center"},
		 {name: 'spwy',index: 'zxzt',align: "center"},
		 {name: 'zcr',index: 'cz',align: "center"}],
		multiselect:true,
		ondblClickRow:function(rowid,iRow,iCol,e){//rowId,rowNum,cellIndex,enentObj
			window.open("<%=basePath%>zccz/dealTrace1Head_viewItemInfo.do?itemId=" + rowid,"",winVar);
		},
		rownumbers:true,
		autowidth:true,
		height:'auto',
		viewrecords:true,
		caption: '实体整体处置实体人员安置项目信息',
		jsonReader : {
			records: "records",
			repeatitems: false,
			id: "0"
		}
	});
	</script>
  </body>
</html>
