<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/inc/taglibs.inc"%>
<%@ include file="/inc/ProjectJQuery.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<base href="<%=basePath %>"/>
<title>非造价咨询类实体</title>
<SCRIPT language=JavaScript type=text/JavaScript><!--	
	function AddTable(){
	var tr = TableBox1.insertRow();

	var td = tr.insertCell()
	
	td.colSpan = '19';

	td.innerHTML="<a href='#' onclick='DeleteTr()'>&nbsp;x&nbsp;</a>股东名称：<input type='text'>控股比例（%）：<input type='text'>注册资本（万元）：<input type='text'>出资方式：<select><option value='1'>货币</option><option value='2'>实物</option><option value='3'>土地（含房屋）</option><option value='4'>无形资产</option><option value='5'>其他（见备注）</option></select>\
                出资情况:\
                  <select>\
                  <option value='1'>出资到位</option>\
                  <option value='2'>出资不实但达到最低出资额</option>\
                  <option value='3'>出资不实未达到最低出资额</option>\
                  <option value='4'>未出资</option>\
                  </select>\
				  <br>出资不实的数额(元）:<input type='text'>\
                  抽逃出资:\
                  <select >\
                  <option value='1'>存在</option>\
                  <option value='2'>不存在</option>\
                  <option value='3'>无资料</option>\
                  </select>\
                  抽逃数额(元 )：\
                &nbsp;\
                <input ></input>\
                独立法人资格:\
                <select >\
                  <option value='1'>是</option>\
                  <option value='2'>否</option>\
                </select><br><br>";
	
	}	
function AddTable1(tableid){
	
	var tr =  document.getElementById(tableid).insertRow();
	var td = tr.insertCell();
	 td.className = 'td_form01_1';
	td.colSpan = '8';
	td.innerHTML="<a href='#' onclick='DeleteTr1(this,\"" + tableid + "\")'>&nbsp;x&nbsp;</a>&nbsp;姓名：<input  style='width:100'>&nbsp;联系方式：<input   style='width:100'>&nbsp;工作单位：<input   style='width:100'>";
	
	}
	function DeleteTr1(r,id){

			 var b=r.parentNode.parentNode.rowIndex
			 document.getElementById(id).deleteRow(b)
 
	}
	function up(){
	var a="启动清算";
	var b="清算报告审批";
	var c="缴销营业执照";
	var huanjie=document.getElementById("dqjd");
				
			if (huanjie.value ==a ){
				alert("已经是起始阶段");
			
			}else{
				if(huanjie.value==b ){
					huanjie.value=a;
					qidong.style.display="block";
					shenpi.style.display="none";
					jiaoxiao.style.display="none";
				}else{
					if(huanjie.value==c ){
						huanjie.value=b;
						qidong.style.display="none";
						shenpi.style.display="block";
						jiaoxiao.style.display="none";
					}
				}
			}
 }	
function down (){
	var a="启动清算";
	var b="清算报告审批";
	var c="缴销营业执照";
	var huanjie=document.getElementById("dqjd");
				
			if (huanjie.value ==a ){
					huanjie.value=b;
					qidong.style.display="none";
					shenpi.style.display="block";
					jiaoxiao.style.display="none";
			
			}else{
				if(huanjie.value==b ){
					huanjie.value=c;
					qidong.style.display="none";
					shenpi.style.display="none";
					jiaoxiao.style.display="block";
				}else{
					if(huanjie.value==c ){
						alert("已经是最后阶段");
					}
				}
			}
 }	
	function DeleteTr(){
			TableBox1.deleteRow();
	}
	function displayUpperLayer(index){
		for(var i=0;i<9;i++){
			if(index==i){
			   document.getElementById("upperLayer"+i).style.display="block";
			}else{
			   document.getElementById("upperLayer"+i).style.display="none";
			}
		}
	}
	function disposalgqzr(){
	gqzrWhole.style.display=gqzrWhole.style.display=='none'?'block':'none';
	nbgb.style.display='none';
	pcqs.style.display='none';

	}
	function disposalnbgb(){
	nbgb.style.display=nbgb.style.display=='none'?'block':'none';
	gqzrWhole.style.display='none';
	pcqs.style.display='none';

	}
	function disposalpcqs(){
	pcqs.style.display=pcqs.style.display=='none'?'block':'none';
	nbgb.style.display='none';
	gqzrWhole.style.display='none';

	}
	 function getWidthAndHeigh(resize) {
                var iframeHeight = document.body.clientHeight;
                var iframeWidth = document.body.clientWidth;
                var browser=navigator.appName;
             // chrome
                if (browser == "chrome") {
                        iframeWidth -= 16;
                        iframeHeight -= 85;
                }
                // firefox
                else if (browser == "firefox") {
                        iframeWidth -= 15;
                        iframeHeight -= 85;
                        if (resize) {
                                iframeWidth += 18;
                                iframeHeight += 13;
                        }
                } 
                // IE
                else {

                        iframeWidth -= 12;
                        iframeHeight -= 83;
                        if (resize) {
                                iframeHeight += 15;
                                iframeWidth += 10;
                        }
                }
                return {width: iframeWidth, height: iframeHeight};
        }


			function save(){
				alert(qwe);
				$("#myform").attr("action","<%=basePath%>stgl/weihu_saveStFsxx.do");
    			$("#myform").submit();
			}
			
			
			$(function(){
				$("#myform").ajaxForm({
					success:function(reponseText){
						jQuery("#insider_list").setGridParam({}).trigger("reloadGrid")
					}
				})
			});
--></SCRIPT>
<style>
.mouseover {
	abc: expression(this . onmouseout = mouseout);
	efg: expression(this . onmouseover = mouseover);
	opq: expression(this . onclick = releaseFunction);
	font-family: Verdana;
	font-size: 12;
	cursor: hand;
	height: 18;
	border: 1px groove orange;
	border-bottom-style: groove;
	border-width: think;
	padding-left: 3px;
	text-align: center; background-color ="orange";
	font-weight: italic;
}

.mouseout {
	abc: expression(this . onmouseout = mouseout);
	efg: expression(this . onmouseover = mouseover);
	opq: expression(this . onclick = releaseFunction);
	font-family: Verdana;
	font-size: 12;
	cursor: hand;
	height: 18;
	border: 1px groove orange;
	border-bottom-style: groove;
	border-width: think;
	padding-left: 3px;
	text-align: center; background-color ="white";
	font-weight: normal;
}

.clicked {
	abc: expression(this . onmouseout = mouseout);
	efg: expression(this . onmouseover = mouseover);
	opq: expression(this . onclick = releaseFunction);
	font-family: Verdana;
	font-size: 12;
	cursor: hand;
	height: 18;
	border: 1px groove orange;
	border-bottom-style: groove;
	border-width: think;
	padding-left: 3px;
	text-align: center; background-color ="#C3DAF2";
	font-weight: bold;
	border-bottom-style: none;
}

.ttd {
	abc: expression(this . onmouseout = mouseout);
	efg: expression(this . onmouseover = mouseover);
	opq: expression(this . onclick = releaseFunction);
	font-family: Verdana;
	font-size: 12;
	cursor: hand;
	height: 18;
	border: 1px groove orange;
	border-bottom-style: groove;
	border-width: think;
	padding-left: 3px;
	text-align: center;
}

.panelUpper {
	border-width: 1px;
	border-style: solid;
	width: 98%;
	height: 90%;
	z-index: 1;
	overflow: auto;
}

.panelLower {
	border-width: 1px;
	border-style: solid;
	width: 98%;
	height: 90%;
	z-index: 1;
	overflow: auto;
}
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<s:form action="" id="myform">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td height="25" align="center" valign="bottom" class="td06">
		<table width="98%" border="0" cellspacing="3" cellpadding="0">
		  <tr>
			<td width="15"><img src="resource/ProjectImages/index_32.gif" width="9" height="9"></td>
			<td valign="bottom" align="left" class="title">非造价咨询类实体信息</td>
		  </tr>
		</table>
	</td>
  </tr>
</table>

<TABLE  border=0 id="upperTable" style="border-color:blue; " width="98%" align="center">
	<TR oncontextmenu='return false' ondragstart='return false' onselectstart ='return false' onselect='document.selection.empty()' oncopy='document.selection.empty()' onbeforecopy='return false' onmouseup='document.selection.empty()'>
	   <TD width="11%" class="clicked"  onClick="displayUpperLayer(0)">基本信息</TD>
	   <TD   width="11%" class="ttd"  onClick="displayUpperLayer(1)">实体人员信息</TD>
	   <TD width="11%" class="ttd"  onClick="displayUpperLayer(2)">文件及公章存放情况</TD>
	   <TD width="11%" class="ttd"  onClick="displayUpperLayer(3)">实体资产情况</TD>
	   <TD width="11%" class="ttd"  onClick="displayUpperLayer(4)">债权债务情况</TD>
	   <TD  width="11%"class="ttd"  onClick="displayUpperLayer(5)">诉讼情况</TD>
	   <TD  width="11%" class="ttd"  onClick="displayUpperLayer(6)">日志信息</TD>
	   <TD  width="11%" class="ttd"  onClick="displayUpperLayer(7)">流程信息</TD>
	   <TD   class="ttd"  onClick="displayUpperLayer(8)">处置信息</TD>
    </TR>
</TABLE>

<div style="display:block"  id="upperLayer0">
  <div align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基本信息</strong>  </div>
  <table width="98%" border="1" cellpadding="0" cellspacing="0" align="center" >
    <tr>
      <td  width="11%" class="td_form01">资产编号：</td>
      <td  class="td_form02"><s:textfield name="st.zcbh" id="zcbh" />
          <input type="submit" name="Submit3" value="生成编号" />      </td>
      <td width="11%"  class="td_form01">实体名称：</td>
      <td  class="td_form02"><s:textfield name="st.stzwmc" id="stzwmc" /></td>
      <td class="td_form01">省份：</td>
      <td  class="td_form02"><select name="select4">
          <option value="1">广东</option>
          <option value="2">江苏</option>
          <option value="3">山东</option>
          <option value="4">四川</option>
          <option value="5">浙江</option>
          <option value="6">辽宁</option>
          <option value="7">河南</option>
          <option value="8">湖北</option>
          <option value="9">福建</option>
          <option value="10">河北</option>
          <option value="11">湖南</option>
          <option value="12">上海</option>
          <option value="13">香港</option>
          <option value="14">北京</option>
          <option value="15">黑龙江</option>
          <option value="16">天津</option>
          <option value="17">重庆</option>
          <option value="18">江西</option>
          <option value="19">山西</option>
          <option value="20">安徽</option>
          <option value="21">陕西</option>
          <option value="22">海南</option>
          <option value="23">云南</option>
          <option value="24">甘肃</option>
          <option value="25">内蒙古</option>
          <option value="26">贵州</option>
          <option value="27">新疆</option>
          <option value="28">西藏</option>
          <option value="29">青海</option>
          <option value="30">广西</option>
          <option value="31">澳门</option>
          <option value="32">宁夏</option>
          <option value="33">吉林</option>
        </select>      </td>
    </tr>
    <tr>
      <td width="11%" class="td_form01">成立时间：</td>
      <td width="21%"  class="td_form02"><s:textfield name="st.clsj" id="clsj" /></td>
      <td  class="td_form01">实体现状：</td>
      <td class="td_form02"><select name="select4">
          <option value="1">正常年检</option>
          <option value="2">停业</option>
          <option value="3">吊销未清算</option>
          <option value="4">吊销清算中</option>
          <option value="5">破产中</option>
          <option value="6">注销</option>
          <option value="7">已关闭</option>
          <option value="8">其他(见备注)</option>
        </select>      </td>
      <td class="td_form01">尚有人员数：</td>
      <td class="td_form02"><s:textfield name="st.syrys" id="syrys" /></td>
    </tr>
    <tr>
      <td class="td_form01">有无历史遗留问题：</td>
      <td class="td_form02"><s:radio list="{'有','无'}" id="ywlsylwt" name="st.ywlsylwt"></s:radio></td>
      <td class="td_form01">&nbsp;</td>
      <td class="td_form02">&nbsp;</td>
      <td class="td_form01">&nbsp;</td>
      <td class="td_form02">&nbsp;</td>
    </tr>
	    <tr>
      <td class="td_form01">历史遗留问题描述：</td>
      <td colspan="5" class="td_form02"><textarea name="st.lsylwtms" id="lsylwtms" cols="144" rows="3"></textarea></td>
	    </tr>
  </table>
  <br/>
<div style="width:98%" id="widthRule_affair">&nbsp;</div>

<table id="contributions_list"></table>
<div id="pgtoolbarcontributions"></div>

<script type="text/javascript">
$(document).ready(function(){
			//添加按钮
			var buttonJSonString = '[{"buttonHandler":"affairAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
										{"buttonHandler":"affairModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
										{"buttonHandler":"affairDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
									]';
			addButtons(jQuery("#gview_contributions_list > .ui-jqgrid-titlebar"),buttonJSonString);
			});
		
			function affairAddAss(){
				contributions_information.style.display=contributions_information.style.display=='none'?'block':'none';
			}
	
			function affairModifyAss(){
			}
			
			function affairDelAss(){
			}

				jQuery("#contributions_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':11},
					datatype: "json",
					colNames:['股东名称','控股比例（%）','注册资本（元）','出资方式','出资情况','出资不实的数额（万元）','抽逃出资','抽逃数额（元）','独立法人资格'],
					colModel:[	
					    {name:'egdmc',index:'taxName', editable: false},
						{name:'qkgbl',index:'name', editable: false},
						{name:'qzczb',index:'security', editable: false},
						{name:'qcCzfs',index:'claimsaccount',editable: false,edittype:"select",editoptions:{value:"1:货币;2:实物;3:土地（含房屋）;4:无形资产;5:其他（见备注）"}},
						{name:'qcCzqk',index:'actulHolder', editable: false,edittype:"select",editoptions:{value:"1:出资到位;2:出资不实但达到最低出资额;3:出资不实未达到最低出资额;4:未出资"}},
						{name:'qczbsse',index:'security', editable: false},	
						{name:'qcCtcz',index:'security',  editable: false,edittype:"select",editoptions:{value:"1:存在;2:不存;3:无资料"}},
						{name:'qctse',index:'security', editable: false},	
						{name:'qdlfrzg',index:'security', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}}					
					],

					editurl:"entity-info-alter.html",
							pager:'pgtoolbarcontributions',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'项目企业出资情况',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
				jQuery("#contributions_list").setGridWidth($("#widthRule_affair").width());	
				$(window).bind('resize', function() {  
						jQuery("#contributions_list").setGridWidth($("#widthRule_affair").width()); 
					}); 
</script>
<table id="contributions_information" class="newtable" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">股东名称： </td>
              <td class="td_form02"><s:textfield name="sf.egdmc" id="egdmc" /></td>
              <td class="td_form01">持股比例（%）： </td>
              <td class="td_form02"><s:textfield name="sf.ecgbl" id="ecgbl" /></td>
            </tr>	
            <tr>
              <td class="td_form01">注册资本（元）：</td>
              <td class="td_form02"><s:textfield name="sf.qzczb" id="qzczb" /></td>
              <td class="td_form01">出资方式：</td>
              <td class="td_form02"><s:textfield name="sf.qcCzfs" id="qcCzfs" /></td>
            </tr>
            <tr>
              <td class="td_form01">出资情况：</td>
              <td class="td_form02"><s:textfield name="sf.qcCzqk" id="qcCzqk" /></td>
              <td class="td_form01">出资不实的数额（万元）：</td>
              <td class="td_form02"><s:textfield name="sf.qczbsse" id="qczbsse" /></td>
            </tr>	
            <tr>
              <td class="td_form01">抽逃出资：</td>
              <td class="td_form02"><s:textfield name="sf.qcCtcz" id="qcCtcz" /></td>
              <td class="td_form01">抽逃数额（元）：</td>
              <td class="td_form02"><s:textfield name="sf.qctse" id="qctse" /></td>
            </tr>	
            <tr>
              <td class="td_form01">独立法人资格：</td>
              <td class="td_form02"><s:textfield name="sf.qdlfrzg" id="qdlfrzg" /></td>
              <td class="td_form01">&nbsp;</td>
              <td class="td_form02">&nbsp;</td>
            </tr>	
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 


<br/>
	<div align="left"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;财务信息</strong></div>
	<table width="98%" border="1" cellpadding="0" cellspacing="0" align="center"  >
    <tr>
      <td class="td_form01">原值：</td>
      <td class="td_form02"><s:textfield name="st.yuanzhi" id="yuanzhi" />万元</td>
      <td class="td_form01">净值：</td>
      <td class="td_form02"><s:textfield name="st.jingzhi" id="jingzhi" />
        万元</td>
      <td class="td_form01">减值准备：</td>
      <td class="td_form02"><s:textfield name="st.jzzb" id="jzzb" />
        万元</td>
    </tr>
    <tr>
      <td class="td_form01">对建投是否有负债：</td>
      <td class="td_form02"><s:radio list="{'有','无'}" id="djtsfyfz" name="st.djtsfyfz"></s:radio></td>
      <td class="td_form01">负债金额：</td>
      <td class="td_form02"><s:textfield name="st.fzje" id="fzje" />万元</td>
      <td class="td_form01">&nbsp;</td>
      <td class="td_form02">&nbsp;</td>
    </tr>
    <tr>
      <td class="td_form01">账面内是否有预计负债：</td>
      <td class="td_form02"><s:radio list="{'有','无'}" id="zmnsfyyjfz" name="st.zmnsfyyjfz"></s:radio></td>
      <td class="td_form01">预计负债金额：</td>
      <td class="td_form02"><s:textfield name="st.yjfzje" id="yjfzje" />万元</td>
      <td class="td_form01">&nbsp;</td>
      <td class="td_form02">&nbsp;</td>
    </tr>
    <tr>
      <td class="td_form01">账面资产总额：</td>
      <td class="td_form02"><s:textfield name="st.zmzcze" id="zmzcze" />
        万元</td>
      <td class="td_form01">账面资产负债：</td>
      <td class="td_form02"><s:textfield name="st.zmzcfz" id="zmzcfz" />
        万元</td>
      <td class="td_form01">&nbsp;</td>
      <td class="td_form02">&nbsp;</td>
    </tr>
    <tr>
      <td class="td_form01">备注：</td>
      <td colspan="5" class="td_form02"><s:textarea name="st.beizhu" id="beizhu" cols="100"/>
        <input name="button" type="button" value="确定"/>
      <input name="reset" type="reset" value="重置"/></td>
    </tr>
  </table>
</div>
	
	
<div  style="display:none;width: 98%" id="widthRule_insider">&nbsp;</div>	
<div  style="display:none"  id="upperLayer1">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
              <table id="insider_list"> </table>	
               <div id="pgtoolbar2"></div>			
       </td>
     </tr>
</table>

<script type="text/javascript">
		$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"insiderAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"insiderModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"insiderDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_insider_list > .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function insiderAddAss(){
						insider_information.style.display=insider_information.style.display=='none'?'block':'none';
					}
			
					function insiderModifyAss(){
					}
					
					function insiderDelAss(){
					}

				jQuery("#insider_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':10},
					datatype: "json",
					colNames:['姓名','移动电话', '固定电话','工作单位'],
					colModel:[	
							{name:'fxingming',index:'name', editable: false},
							{name:'fyddh',index:'entityName', editable: false},
							{name:'fgddh',index:'tel', editable: false},
							{name:'workUnit',index:'workUni', editable: false} 
							],
					
					editurl:"entity-info-alter.html",
							pager:'pgtoolbar2',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'知情人员',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
						
				jQuery("#insider_list").setGridWidth($("#widthRule_insider").width()); 
				$(window).bind('resize', function() {  
						jQuery("#insider_list").setGridWidth($("#widthRule_insider").width()); 
					}); 
</script>
<table id="insider_information" class="newtable" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">姓名: </td>
              <td class="td_form02"><s:textfield name="sf.fxingming" id="fxingming" /></td>
              <td class="td_form01">移动电话： </td>
              <td class="td_form02"><s:textfield name="sf.fyddh" id="fyddh" /></td>
            </tr>	
            <tr>
              <td class="td_form01">固定电话：</td>
              <td class="td_form02"><s:textfield name="sf.fgddh" id="fgddh" /></td>
              <td class="td_form01">工作单位：</td>
              <td class="td_form02"><s:textfield name="sf.qcCzfs" id="qcCzfs" /></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 

<br/>


<div style="display:none; width: 98%" id="widthRule_anzhiPerson">&nbsp;</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="anzhiPerson_list"></table>
                <div id="pgtoolbar3"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"anzhiPersonAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"anzhiPersonModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"anzhiPersonDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_anzhiPerson_list > .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function anzhiPersonAddAss(){
						anzhiPerson_information.style.display=anzhiPerson_information.style.display=='none'?'block':'none';
					}
			
					function anzhiPersonModifyAss(){
					}
					
					function anzhiPersonDelAss(){
					}

				jQuery("#anzhiPerson_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':11},
					datatype: "json",
					colNames:['姓名','移动电话','固定电话','安置方式','安置费用','安置状态','安置协议','收条','备注'],
					colModel:[	
						{name:'fxingming',index:'name', editable: false},
						{name:'fyddh',index:'entityName', editable: false},
						{name:'fgddh',index:'tel', editable: false},
						{name:'fazfs',index:'arrangeWay', editable: false},
						{name:'fazfy',index:'arrangeCost', editable: false},
						{name:'fazzt',index:'arrangeState',  editable: false,edittype:"select",editoptions:{value:"yes:已安置;no:未安置"}},
						{name:'fsfyazxy',index:'arrangeTreaty',align:'center'},
						{name:'fsfyst',index:'arrangeState' ,align:'center'},
						{name:'gdsjbz',index:'arrangeState',  editable: false} 
					],
					editurl:"entity-info-alter.html",
							pager:'pgtoolbar3',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'安置人员',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
				jQuery("#anzhiPerson_list").setGridWidth($("#widthRule_insider").width()); 
				$(window).bind('resize', function() {  
						jQuery("#anzhiPerson_list").setGridWidth($("#widthRule_insider").width()); 
					}); 
</script>
	
<table id="anzhiPerson_information" class="newtable" width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">姓名： </td>
              <td class="td_form02"><s:textfield name="sf.fxingming" id="fxingming" /></td>
              <td class="td_form01">移动电话： </td>
              <td class="td_form02"><s:textfield name="sf.fyddh" id="fyddh" /></td>
            </tr>	
            <tr>
              <td class="td_form01">固定电话：</td>
              <td class="td_form02"><s:textfield name="sf.fgddh" id="fgddh" /></td>
              <td class="td_form01">安置方式：</td>
              <td class="td_form02"><s:textfield name="sf.fazfs" id="fazfs" /></td>
            </tr>
            <tr>
              <td class="td_form01">安置费用：</td>
              <td class="td_form02"><s:textfield name="sf.fazfy" id="fazfy" /></td>
              <td class="td_form01">安置状态：</td>
              <td class="td_form02"><s:select list="{'已安置','未安置'}" name="sf.fazzt" id="fazzt"></s:select></td>
            </tr>	 
            <tr>
              <td class="td_form01">是否有收条：</td>
              <td class="td_form02"><s:select list="{'是','否'}" name="sf.fazzt" id="fazzt"></s:select></td>
              <td class="td_form01">备注：</td>
              <td class="td_form02"><s:textfield name="sf.gdsjbz" id="gdsjbz" /></td>
            </tr>	
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
</div>	

<div  style="display:none; width: 100%" id="widthRule_filter">&nbsp;</div>		
<div   style="display:none"  id="upperLayer2">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
		         <div id="pgtoolbar4"></div>
                <table id="filter_list"> </table>
				
       	</td>
       </tr>
</table>
<script type="text/javascript">

$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"filterAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"filterModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"filterDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_filter_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function filterAddAss(){
						filter_information.style.display=filter_information.style.display=='none'?'block':'none';
					}
			
					function filterModifyAss(){
					}
					
					function filterDelAss(){
					}

				jQuery("#filter_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':12},
					datatype: "json",
					colNames:['存放地点','保管机构','主要联系人','联系方式','存放内容'],
					colModel:[	
						{name:'acfdd',index:'adress', editable: false},
						{name:'abgjg',index:'organization', editable: false},
						{name:'azylxr',index:'person', editable: false},
						{name:'alxfs',index:'contractWay', editable: false},
						{name:'acfnr',index:'storeContent',  editable: false,edittype:"select",editoptions:{value:"1:文件;2:公章;3:权证;4:账务账簿"}} 
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'文件及公章存放情况',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
				jQuery("#filter_list").setGridWidth($("#widthRule_filter").width());		
				$(window).bind('resize', function() {  
						jQuery("#filter_list").setGridWidth($("#widthRule_filter").width()); 
					}); 
</script>
<table id="filter_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">存放地点： </td>
              <td class="td_form02"><s:textfield name="sf.acfdd" id="acfdd" /></td>
              <td class="td_form01">保管机构： </td>
              <td class="td_form02"><s:textfield name="sf.abgjg" id="abgjg" /></td>
            </tr>	
            <tr>
              <td class="td_form01">主要联系人：</td>
              <td class="td_form02"><s:textfield name="sf.azylxr" id="azylxr" /></td>
              <td class="td_form01">联系方式：</td>
              <td class="td_form02"><s:textfield name="sf.alxfs" id="alxfs" /></td>
            </tr>
            <tr>
              <td class="td_form01">存放内容：</td>
              <td class="td_form02"><s:textfield name="sf.acfnr" id="acfnr" /></td>
              <td class="td_form01">&nbsp;</td>
              <td class="td_form02">&nbsp;</td>
            </tr>	 
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
</div>
<br/>
	
<div  style="display:none;width: 98%" id="widthRule_cash">&nbsp;</div>			
<div  style="display:none"  id="upperLayer3">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
		         <div id="pgtoolbar5"></div>
                <table id="cash_list"> </table>
				
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"cashAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"cashModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"cashDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_cash_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function cashAddAss(){
						cash_information.style.display=cash_information.style.display=='none'?'block':'none';
					}
			
					function cashModifyAss(){
					}
					
					function cashDelAss(){
					}


				jQuery("#cash_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':13},
					datatype: "json",
					colNames:['金额','账户','账户名称'],
					colModel:[	
						{name:'hjine',index:'amount', editable: false},
						{name:'hzhanghu',index:'account', editable: false},
						{name:'hzhmc',index:'accountTitle', editable: false}						
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'现金',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
				jQuery("#cash_list").setGridWidth($("#widthRule_cash").width()); 
				$(window).bind('resize', function() {  
						jQuery("#cash_list").setGridWidth($("#widthRule_cash").width()); 
					}); 
</script>

<table id="cash_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">金额： </td>
              <td class="td_form02"><s:textfield name="sf.hjine" id="hjine" /></td>
              <td class="td_form01">账户： </td>
              <td class="td_form02"><s:textfield name="sf.hzhanghu" id="hzhanghu" /></td>
            </tr>	
            <tr>
              <td class="td_form01">账户名称：</td>
              <td class="td_form02"><s:textfield name="sf.hzhmc" id="hzhmc" /></td>
              <td class="td_form01">&nbsp;</td>
              <td class="td_form02">&nbsp;</td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>
<div  style="display:none;width: 100%" id="widthRule_land">&nbsp;</div>	
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="land_list"> </table>
				<div id="pgtoolbarland"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"landAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"landModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"landDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_land_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function landAddAss(){
						land_information.style.display=land_information.style.display=='none'?'block':'none';
					}
			
					function landModifyAss(){
					}
					
					function landDelAss(){
					}
				jQuery("#land_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':14},
					datatype: "json",
					colNames:['土地名称','土地取得方式','实际占有人','《土地使用权证》','《土地使用权证》没有及下落不明的原因','抵押','抵押情况介绍','面积（平方米）','土地使用权人','评估值','变现额','土地描述','资产状态','处置方式'],
					colModel:[	
						{name:'jtdmc',index:'landName', editable: false},
						{name:'jtdqdfs',index:'gainMethod', editable: false},
						{name:'jsjzyr',index:'holder', editable: false},
						{name:'jtdsyqz',index:'useCard',editable: false,edittype:"select",editoptions:{value:"1:有;2:无;3:下落不明"}},
						{name:'jxlbmyy',index:'', editable: false},
						{name:'jtdsfdy',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},
						{name:'jtddyqkjs',index:'pledgeDes', editable: false},	
						{name:'jtdmj',index:'acreage', editable: false},	
						{name:'jtdsyqr',index:'rightOfUse', editable: false},	
						{name:'jtdpgz',index:'assessedValue', editable: false},							
					    {name:'jbxe',index:'cashAmount', editable: false},	
						{name:'jtdms',index:'landDes', editable: false},	
						{name:'jtdzt',index:'assetState', editable: false,edittype:"select",editoptions:{value:"1:已处置;2:未处置;3:处置中"}},	
						{name:'jcCzfs',index:'handleWay', editable: false,edittype:"select",editoptions:{value:"1:公开拍卖;2:协议转让"}}											
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'土地',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
                jQuery("#land_list").setGridWidth($("#widthRule_cash").width());
				$(window).bind('resize', function() {  
						jQuery("#land_list").setGridWidth($("#widthRule_cash").width()); 
					}); 
</script>
<table id="land_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">土地名称： </td>
              <td class="td_form02"><s:textfield name="sf.jtdmc" id="jtdmc" /></td>
              <td class="td_form01">土地取得方式： </td>
              <td class="td_form02"><s:textfield name="sf.jtdqdfs" id="jtdqdfs" /></td>
            </tr>	
            <tr>
              <td class="td_form01">土地描述：</td>
              <td class="td_form02"><s:textfield name="sf.jtdms" id="jtdms" /></td>
             <td class="td_form01">《土地使用权证》：</td>
              <td class="td_form02"><s:textfield name="sf.jtdsyqz" id="jtdsyqz" /></td>
            </tr>
            <tr>
              <td class="td_form01">《土地使用权证》没有及下落不明的原因：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.jxlbmyy" id="jxlbmyy" rows="3" cols="140"></s:textarea></td>
            
            </tr>
            <tr>	
              <td class="td_form01">土地是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.jtdsfdy" id="jtdsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.jtddyqkjs" id="jtddyqkjs" /></td>
            </tr>
            <tr>
              <td class="td_form01">面积（平方米）：</td>
              <td class="td_form02"><s:textfield name="sf.jtdmj" id="jtdmj" /></td>
             <td class="td_form01">土地使用权人：</td>
              <td class="td_form02"><s:textfield name="sf.jtdsyqr" id="jtdsyqr" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.jtdpgz" id="jtdpgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.jbxe" id="jbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.jtdzt" id="jtdzt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.jcCzfs" id="jcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>

<div  style="display:none;width: 100%" id="widthRule_house">&nbsp;</div>	
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="house_list"> </table>
				<div id="pgtoolbarhouse"></div>
       </td>
     </tr>
</table>

<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"houseAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"houseModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"houseDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_house_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function houseAddAss(){
						house_information.style.display=house_information.style.display=='none'?'block':'none';
					}
			
					function houseModifyAss(){
					}
					
					function houseDelAss(){
					}
					
					
				jQuery("#house_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':15},
					datatype: "json",
					colNames:['地址','房屋所有权人','实际占有人','《房屋使用权证》','《房屋所有权证》没有及下落不明的原因','抵押','抵押情况介绍','面积（平方米）','土地使用权人','评估值','变现额','土地描述','资产状态','处置方式'],
					colModel:[	
						{name:'adress',index:'adress', editable: false},
						{name:'titleholder',index:'gainMethod', editable: false},
						{name:'kfwsjzyr',index:'actulHolder', editable: false},
						{name:'kywfwsyqz',index:'useCard',editable: false,edittype:"select",editoptions:{value:"1:有;2:无;3:下落不明"}},
						{name:'kxlbmyy',index:'', editable: false},
						{name:'ksfdy',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'kdyqk',index:'', editable: false},
						{name:'kfwmj',index:'acreage', editable: false},	
						{name:'ksyqr',index:'rightOfUse', editable: false},	
						{name:'kfwpgz',index:'assessedValue', editable: false},							
					    {name:'kfwbxe',index:'cashAmount', editable: false},	
						{name:'kfwms',index:'houseDes', editable: false},	
						{name:'kfwzt',index:'assetState', editable: false,edittype:"select",editoptions:{value:"1:已处置;2:未处置;3:处置中"}},	
						{name:'kcCzfs',index:'handleWay', editable: false,edittype:"select",editoptions:{value:"1:公开拍卖;2:协议转让"}}											
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'房屋',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}
						});
				jQuery("#house_list").setGridWidth($("#widthRule_cash").width());
				$(window).bind('resize', function() {  
						jQuery("#house_list").setGridWidth($("#widthRule_cash").width()); 
					}); 
</script>
<table id="house_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">地址： </td>
              <td class="td_form02"><s:textfield name="sf.jtdmc" id="jtdmc" /></td>
              <td class="td_form01">房屋所有权人： </td>
              <td class="td_form02"><s:textfield name="sf.jtdqdfs" id="jtdqdfs" /></td>
            </tr>	
            <tr>
              <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.kfwsjzyr" id="kfwsjzyr" /></td>
             <td class="td_form01">有无房屋使用权证：</td>
              <td class="td_form02"><s:radio list="{'有','无','下落不明'}" name="sf.kywfwsyqz" id="kywfwsyqz"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form01">《土地使用权证》没有及下落不明的原因：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.kxlbmyy" id="kxlbmyy" rows="3" cols="140"></s:textarea></td>
            </tr>
            <tr>	
              <td class="td_form01">房屋是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.ksfdy" id="ksfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
            <tr>
              <td class="td_form01">面积（平方米）：</td>
              <td class="td_form02"><s:textfield name="sf.kfwmj" id="kfwmj" /></td>
             <td class="td_form01">土地使用权人：</td>
              <td class="td_form02"><s:textfield name="sf.ksyqr" id="ksyqr" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.kfwpgz" id="kfwpgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.kfwbxe" id="kfwbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">房屋描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.kfwms" id="kfwms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.kfwzt" id="kfwzt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.kcCzfs" id="kcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>


<div  style="display:none;width: 100%" id="widthRule_machine">&nbsp;</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="machine_list"> </table>
				<div id="pgtoolbarmachine"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"machineAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"machineModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"machineDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_machine_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function machineAddAss(){
						machine_information.style.display=machine_information.style.display=='none'?'block':'none';
					}
			
					function machineModifyAss(){
					}
					
					function machineDelAss(){
					}

				jQuery("#machine_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':16},
					datatype: "json",
					colNames:['名称','存放何处','权属','实际占有人','抵押','抵押情况介绍','评估值','变现额','机器设备描述','资产状态','处置方式'],
					colModel:[	
						{name:'msbmc',index:'name', editable: false},
						{name:'msbcfwz',index:'where', editable: false},
						{name:'msbqs',index:'ownership', editable: false},
						{name:'msbsjzyr',index:'actulHolder', editable: false},
						{name:'msbsfdy',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'pledgeDes',index:'', editable: false},	
						{name:'msbpgz',index:'assessedValue', editable: false},							
					    {name:'msbbxe',index:'cashAmount', editable: false},	
						{name:'msbms',index:'machineDes', editable: false},	
						{name:'msbzt',index:'assetState', editable: false,edittype:"select",editoptions:{value:"1:已处置;2:未处置;3:处置中"}},	
						{name:'mcCzfs',index:'handleWay', editable: false,edittype:"select",editoptions:{value:"1:公开拍卖;2:协议转让"}}											
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'机器设备',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#machine_list").setGridWidth($("#widthRule_cash").width()); 
				$(window).bind('resize', function() {  
						jQuery("#machine_list").setGridWidth($("#widthRule_cash").width()); 
				}); 
</script>
<table id="machine_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">名称：</td>
              <td class="td_form02"><s:textfield name="sf.msbmc" id="msbmc" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.msbcfwz" id="msbcfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.msbqs" id="msbqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.msbsjzyr" id="msbsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">机器是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.msbsfdy" id="msbsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.msbpgz" id="msbpgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.msbbxe" id="msbbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">机器设备描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.msbms" id="msbms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">机器设备状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.msbzt" id="msbzt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.mcCzfs" id="mcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>


<div  style="display:none;width: 100%" id="widthRule_traffic">&nbsp;</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="traffic_list"> </table>
				<div id="pgtoolbartraffic"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
			$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"trafficAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"trafficModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"trafficDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_traffic_list > .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function trafficAddAss(){
						traffic_information.style.display=traffic_information.style.display=='none'?'block':'none';
					}
			
					function trafficModifyAss(){
					}
					
					function trafficDelAss(){
					}
				jQuery("#traffic_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':17},
					datatype: "json",
					colNames:['车牌号','存放何处','权属','实际占有人','抵押','抵押情况介绍','评估值','变现额','机器设备描述','资产状态','处置方式'],
					colModel:[	
						{name:'lcph',index:'name', editable: false},
						{name:'ljtgjcfwz',index:'where', editable: false},
						{name:'lqs',index:'ownership', editable: false},
						{name:'lsjzyr',index:'actulHolder', editable: false},
						{name:'lsfdy',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'pledgeDes',index:'', editable: false},	
						{name:'lpgz',index:'assessedValue', editable: false},							
					    {name:'lbxe',index:'cashAmount', editable: false},	
						{name:'ljtgjms',index:'machineDes', editable: false},	
						{name:'ljtgjzt',index:'assetState', editable: false,edittype:"select",editoptions:{value:"1:已处置;2:未处置;3:处置中"}},	
						{name:'lcCzfs',index:'handleWay', editable: false,edittype:"select",editoptions:{value:"1:公开拍卖;2:协议转让"}}											
					],
					editurl:"entity-info-alter.html",
							pager:'pgtoolbartraffic',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'交通运输工具',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#traffic_list").setGridWidth($("#widthRule_cash").width()); 
				$(window).bind('resize', function() {  
					jQuery("#traffic_list").setGridWidth($("#widthRule_cash").width()); 
						
				}); 
</script>
<table id="traffic_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">车牌号：</td>
              <td class="td_form02"><s:textfield name="sf.lcph" id="lcph" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.ljtgjcfwz" id="ljtgjcfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.lqs" id="lqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.lsjzyr" id="lsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">交通工具是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.lsfdy" id="lsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.lpgz" id="lpgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.lbxe" id="lbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">交通运输工具描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.ljtgjms" id="ljtgjms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">交通工具状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.ljtgjzt" id="ljtgjzt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.lcCzfs" id="lcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>


<div  style="display:none;width: 100%" id="widthRule_invest">&nbsp;</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="invest_list"> </table>
				<div id="pgtoolbarinvest"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"investAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"investModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"investDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_invest_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function investAddAss(){
						invest_information.style.display=invest_information.style.display=='none'?'block':'none';
					}
			
					function investModifyAss(){
					}
					
					function investDelAss(){
					}
				jQuery("#invest_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':18},
					datatype: "json",
					colNames:['被投资企业名称','投资额','投资方式','投资情况描述'],
					colModel:[	
						{name:'nbtqymc',index:'name', editable: false},
						{name:'ntze',index:'account', editable: false},
						{name:'ntzfs',index:'investWay', editable: false},
						{name:'ntzqkms',index:'investDes', editable: false}],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'对外投资',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
						
				jQuery("#invest_list").setGridWidth($("#widthRule_cash").width());		
				$(window).bind('resize', function() {  
						jQuery("#invest_list").setGridWidth($("#widthRule_cash").width()); 
					}); 
</script>
<table id="invest_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">被投资企业名称：</td>
              <td class="td_form02"><s:textfield name="sf.nbtqymc" id="nbtqymc" /></td>
              <td class="td_form01">投资额： </td>
              <td class="td_form02"><s:textfield name="sf.ntze" id="ntze" /></td>
            </tr>	
            <tr>
              <td class="td_form01">投资方式：</td>
              <td class="td_form02"><s:textfield name="sf.ntzfs" id="ntzfs" /></td>
             <td class="td_form01">&nbsp;</td>
              <td class="td_form02">&nbsp;</td>
            </tr>
             <tr>
             <tr>
              <td class="td_form01">投资情况描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.ntzqkms" id="ntzqkms" rows="3" cols="140"></s:textarea></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>

<div  style="display:none;width: 100%" id="widthRule_otherasset">&nbsp;</div>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="otherasset_list"> </table>
				<div id="pgtoolbarotherasset"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"otherassetAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"otherassetModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"otherassetDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_otherasset_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function otherassetAddAss(){
						otherasset_information.style.display=otherasset_information.style.display=='none'?'block':'none';
					}
			
					function otherassetModifyAss(){
					}
					
					function otherassetDelAss(){
					}
				jQuery("#otherasset_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':19},
					datatype: "json",
					colNames:['名称','存放何处','权属','实际占有人','抵押','抵押情况介绍','评估值','变现额','其他资产描述','资产状态','处置方式'],
					colModel:[	
						{name:'pqtzcmc',index:'name', editable: false},
						{name:'pqtzccfwz',index:'where', editable: false},
						{name:'pqtzcqs',index:'ownership', editable: false},
						{name:'pqtzcsjzyr',index:'actulHolder', editable: false},
						{name:'pqtzcsfdy',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'pledgeDes',index:'', editable: false},	
						{name:'ppgz',index:'assessedValue', editable: false},							
					    {name:'pbxe',index:'cashAmount', editable: false},	
						{name:'pzcms',index:'otherassetDes', editable: false},	
						{name:'pzczt',index:'assetState', editable: false,edittype:"select",editoptions:{value:"1:已处置;2:未处置;3:处置中"}},	
						{name:'pcCzfs',index:'handleWay', editable: false,edittype:"select",editoptions:{value:"1:公开拍卖;2:协议转让"}}											
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'其他资产',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#otherasset_list").setGridWidth($("#widthRule_cash").width()); 
				$(window).bind('resize', function() {  
						jQuery("#otherasset_list").setGridWidth($("#widthRule_cash").width()); 
					}); 
</script>
<table id="otherasset_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">其他资产名称：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcmc" id="pqtzcmc" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.pqtzccfwz" id="pqtzccfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcqs" id="pqtzcqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcsjzyr" id="pqtzcsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">其他资产是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.pqtzcsfdy" id="pqtzcsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.ppgz" id="ppgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.pbxe" id="pbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.pzcms" id="pzcms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.pzczt" id="pzczt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.pcCzfs" id="pcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
</div>	
	
	
<div  style="display:none;width: 98%" id="widthRule_claims">&nbsp;</div>	
<div   style="display:none"  id="upperLayer4">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="claims_list"> </table>
				<div id="pgtoolbarclaims"></div>
       </td>
     </tr>
</table>
<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"claimsAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"claimsModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"claimsDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_claims_list> .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function claimsAddAss(){
						claims_information.style.display=claims_information.style.display=='none'?'block':'none';
					}
			
					function claimsModifyAss(){
					}
					
					function claimsDelAss(){
					}
				jQuery("#claims_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':20},
					datatype: "json",
					colNames:['债务人名称','合同编号','担保方式','债权金额','诉讼时效','是否提起诉讼','债权期限（天）','抵押财产、质押财产、保证人等说明','债务人情况介绍','备注'],
					colModel:[	
						{name:'name',index:'name', editable: false},
						{name:'contractNo',index:'name', editable: false},
						{name:'security',index:'security', editable: false,edittype:'select',editoptions:{value:"1:无;2:保证;3:抵押;4:质押;5:其他（见备注）"}},
						{name:'claimsaccount',index:'claimsaccount', editable: false},
						{name:'litigation',index:'actulHolder', editable: false,edittype:"select",editoptions:{value:"1:超过;2:未超过"}},
						{name:'ifLitigation',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'claimslimit',index:'claimsaccount', editable: false},
						{name:'pledgeDes',index:'', editable: false},	
						{name:'debtorDes',index:'assessedValue', editable: false},							
					    {name:'remark',index:'cashAmount', editable: false}
					],
					editurl:"entity-info-alter.html",
							pager:'#pgtoolbar31',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'主要债权',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#claims_list").setGridWidth($("#widthRule_claims").width());
				$(window).bind('resize', function() {  
						jQuery("#claims_list").setGridWidth($("#widthRule_claims").width()); 
					}); 
</script>
<table id="claims_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">债务人名称：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcmc" id="pqtzcmc" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.pqtzccfwz" id="pqtzccfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcqs" id="pqtzcqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcsjzyr" id="pqtzcsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">其他资产是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.pqtzcsfdy" id="pqtzcsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.ppgz" id="ppgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.pbxe" id="pbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.pzcms" id="pzcms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.pzczt" id="pzczt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.pcCzfs" id="pcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 	
<br/>
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="debt_list"> </table>
				<div id="pgtoolbardebt"></div>
       </td>
     </tr>
</table>


<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"debtAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"debtModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"debtDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_debt_list > .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function debtAddAss(){
						debt_information.style.display=debt_information.style.display=='none'?'block':'none';
					}
			
					function debtModifyAss(){
					}
					
					function debtDelAss(){
					}

				jQuery("#debt_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':21},
					datatype: "json",
					colNames:['债权人名称','合同编号','担保方式','债权金额','诉讼时效','是否提起诉讼','债权期限（天）','抵押财产、质押财产、保证人等说明','或有负债介绍','备注'],
					colModel:[	
						{name:'name',index:'name', editable: false},
						{name:'contractNo',index:'name', editable: false},
						{name:'security',index:'security', editable: false,edittype:'select',editoptions:{value:"1:无;2:保证;3:抵押;4:质押;5:其他（见备注）"}},
						{name:'claimsaccount',index:'claimsaccount', editable: false},
						{name:'litigation',index:'actulHolder', editable: false,edittype:"select",editoptions:{value:"1:超过;2:未超过"}},
						{name:'ifLitigation',index:'pledge', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},	
						{name:'claimslimit',index:'claimsaccount', editable: false},
						{name:'pledgeDes',index:'', editable: false},	
						{name:'liabilitiesDes',index:'assessedValue', editable: false},							
					    {name:'remark',index:'cashAmount', editable: false}
					],
					editurl:"entity-info-alter.html",
							pager:'pgtoolbardebt',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'主要债务',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#debt_list").setGridWidth($("#widthRule_claims").width());
				$(window).bind('resize', function() {  
						jQuery("#debt_list").setGridWidth($("#widthRule_claims").width()); 
					}); 
</script>
<table id="debt_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">其他资产名称：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcmc" id="pqtzcmc" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.pqtzccfwz" id="pqtzccfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcqs" id="pqtzcqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcsjzyr" id="pqtzcsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">其他资产是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.pqtzcsfdy" id="pqtzcsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.ppgz" id="ppgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.pbxe" id="pbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.pzcms" id="pzcms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.pzczt" id="pzczt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.pcCzfs" id="pcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 
<br/>
  <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="taxPayment_list"> </table>
				<div id="pgtoolbartaxPayment"></div>
       </td>
     </tr>
</table>

<script type="text/javascript">
$(document).ready(function(){
					//添加按钮
					var buttonJSonString = '[{"buttonHandler":"taxPaymentAddAss","buttonIcon":"icon-add","buttonText":"增加"},\
												{"buttonHandler":"taxPaymentModifyAss","buttonIcon":"icon-edit","buttonText":"修改"},\
												{"buttonHandler":"taxPaymentDelAss","buttonIcon":"icon-cut","buttonText":"删除"}\
											]';
					addButtons(jQuery("#gview_taxPayment_list > .ui-jqgrid-titlebar"),buttonJSonString);
					});
				
					function taxPaymentAddAss(){
						taxPayment_information.style.display=taxPayment_information.style.display=='none'?'block':'none';
					}
			
					function taxPaymentModifyAss(){
						
					}
					
					function taxPaymentDelAss(){
					}



				jQuery("#taxPayment_list").jqGrid({
					url:"<%=basePath%>stgl/weihu_viewEntity.do",
					postData:{'fslx':22},
					datatype: "json",
					colNames:['税款名称','是否按时缴纳','拖欠税款数额（元）','拖欠时间','税务机关是否可以减免'],
					colModel:[	
					    {name:'taxName',index:'taxName', editable: false},
						{name:'whetherPay',index:'name', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}},
						{name:'defaultAmount',index:'security', editable: false},
						{name:'defaultTime',index:'claimsaccount', editable: false},
						{name:'whetherRemission',index:'actulHolder', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}}						
					],
					editurl:"entity-info-alter.html",
							pager:'pgtoolbartaxPayment',
							multiselect:true,
							rownumbers:true,
							autowidth:true,
							height:'auto',
							viewrecords:true,
							prmNames:{page:"paginator.currentPage",rows:"paginator.pageCount"},
							caption:'税款缴纳',
							toolbar:[true,"top"],
							jsonReader : {
								root:"rows",
								page: "page",
								total: "total",
								records: "records",
								repeatitems: false,
								id: "0"
							}		
						});
				jQuery("#taxPayment_list").setGridWidth($("#widthRule_claims").width()); 
				$(window).bind('resize', function() {  
						jQuery("#taxPayment_list").setGridWidth($("#widthRule_claims").width()); 
					}); 
</script>
<table id="taxPayment_information" class="newtable" width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="display:none">
            <tr>
              <td class="td_form01">其他资产名称：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcmc" id="pqtzcmc" /></td>
              <td class="td_form01">存放何处： </td>
              <td class="td_form02"><s:textfield name="sf.pqtzccfwz" id="pqtzccfwz" /></td>
            </tr>	
            <tr>
              <td class="td_form01">权属：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcqs" id="pqtzcqs" /></td>
             <td class="td_form01">实际占有人：</td>
              <td class="td_form02"><s:textfield name="sf.pqtzcsjzyr" id="pqtzcsjzyr" /></td>
            </tr>
            <tr>	
              <td class="td_form01">其他资产是否抵押：</td>
              <td class="td_form02"><s:radio list="{'是','否'}" name="sf.pqtzcsfdy" id="pqtzcsfdy"></s:radio></td>
             <td class="td_form01">抵押情况介绍：</td>
              <td class="td_form02"><s:textfield name="sf.kdyqk" id="kdyqk" /></td>
            </tr>
             <tr>
              <td class="td_form01">评估值：</td>
              <td class="td_form02"><s:textfield name="sf.ppgz" id="ppgz" /></td>
             <td class="td_form01">变现额：</td>
              <td class="td_form02"><s:textfield name="sf.pbxe" id="pbxe" /></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产描述：</td>
              <td colspan="3" class="td_form02"><s:textarea name="st.pzcms" id="pzcms" rows="3" cols="140"></s:textarea></td>
            </tr>
             <tr>
              <td class="td_form01">其他资产状态：</td>
              <td class="td_form02"><s:radio list="{'已处置','未处置','处置中'}" name="sf.pzczt" id="pzczt"></s:radio></td>
              <td class="td_form01">处置方式：</td>
              <td class="td_form02"><s:radio list="{'公开拍卖','协议转让'}" name="sf.pcCzfs" id="pcCzfs"></s:radio></td>
            </tr>
            <tr>
              <td class="td_form02" colspan="4">
              <div align="right">
			     <input name="sdfg" type="submit" value="确定" onClick="save();"/>
                 <input name="reset" type="reset" value="重置" />
              </div>   
			  </td>
            </tr>
</table> 
	</div>	
	
	<div   style="display:none"  id="upperLayer5">
	<table width="98%"  border="0" cellspacing="2" cellpadding="0" align="center">
  <tr> 
    <td align="right"><div align="left"><strong>起诉类案件</strong></div>
    <td align="right"><input name="Submit22" type="submit" class="buttonface02" value="案件新增" 
		onclick="javascript:window.location='lawsuit-add.html'" />    
  </tr>
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="it">
  <tr> 
    <td align="center" class="td_top"><input type="checkbox" name="checkbox3" value="checkbox" onClick="setCheckBoxInTable('it',this.checked)"/>全选</td>
    <td class="td_top" align="center">所属省份</td>
    <td class="td_top" align="center">资产类型</td>
    <td class="td_top" align="center">收案日期</td>
    <td class="td_top" align="center">原告</td>	
    <td class="td_top" align="center">被告</td>
    <td class="td_top" align="center">第三人</td>
    <td class="td_top" align="center">诉讼类型</td>
	<td class="td_top" align="center">案件类别</td>
	
  </tr>

    <tr> 
    <td align="center" class="td_01"><input type="checkbox" name="checkbox3" value="checkbox"></td>
    <td class="td_01" align="center"><a href="#" onClick="javascript:openwindow('card-info.html','',1024,500)">内蒙古</a></td>
    <td class="td_01" align="center">房屋</td>
    <td class="td_01" align="center">2010-08-10</td>
    <td class="td_01" align="center">内蒙古自治区建银房地产开发总公司</td>
    <td class="td_01" align="center">呼和浩特市金诺房地产开发有限责任公司</td>
    <td class="td_01" align="center">建行</td>
	<td class="td_01" align="center">起诉</td>
	<td class="td_01" align="center">胜诉执结案件</td>
  </tr>
 
</table>
<br/>
<table width="98%"  border="0" cellspacing="2" cellpadding="0" align="center">
  <tr>
    <td align="right"><div align="left"><strong>被诉类案件</strong> </div></td>
    <td align="right"><input name="Submit222" type="submit" class="buttonface02" value="案件新增" 
		onclick="javascript:window.location='lawsuit-add.html'" />
    </td>
  </tr>
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="it">
  <tr>
    <td align="center" class="td_top"><input type="checkbox" name="checkbox32" value="checkbox" onclick="setCheckBoxInTable('it',this.checked)"/>
      全选</td>
    <td class="td_top" align="center">所属省份</td>
    <td class="td_top" align="center">资产类型</td>
    <td class="td_top" align="center">收案日期</td>
    <td class="td_top" align="center">原告</td>
    <td class="td_top" align="center">被告</td>
    <td class="td_top" align="center">第三人</td>
    <td class="td_top" align="center">诉讼类型</td>
    <td class="td_top" align="center">案件类别</td>
  </tr>
  <tr>
    <td align="center" class="td_01"><input type="checkbox" name="checkbox32" value="checkbox" /></td>
    <td class="td_01" align="center"><a href="#" onclick="javascript:openwindow('card-info.html','',1024,500)">内蒙古</a></td>
    <td class="td_01" align="center">房屋</td>
    <td class="td_01" align="center">2010-08-10</td>
    <td class="td_01" align="center">内蒙古自治区建银房地产开发总公司</td>
    <td class="td_01" align="center">呼和浩特市金诺房地产开发有限责任公司</td>
    <td class="td_01" align="center">建行</td>
    <td class="td_01" align="center">起诉</td>
    <td class="td_01" align="center">胜诉执结案件</td>
  </tr>
</table>
    </div>
	<div   style="display:none"  id="upperLayer6">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">修改时间：从
      <input type="text" name="textfield"/>
	到
	<input type="text" name="textfield3"/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改人
    <input type="text" name="textfield2"/>
    <input name="Submit2" type="submit" class="buttonface" value="  查询  "/>
    <input name="Submit" type="submit" class="buttonface" value="  重置  "/></td>
  </tr>
</table>
<div align="right">
  <tr> 
    <td>
      
      <div align="right">
        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
          <tr>
            <td align="center" class="td_form02">&nbsp;</td>
          </tr>
        </table>
      </div></td>
  </tr>
</div>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
  
  <tr>
    <td width="5%" class="td_top">修改人</td>
    <td width="6%" class="td_top">修改时间</td>
    <td width="7%" class="td_top">修改对象</td>
    <td width="6%" class="td_top">修改属性</td>
    <td width="6%" class="td_top">修改前值</td>
    <td width="6%" class="td_top">修改后值</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
</table>
<table width="98%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="30" align="right"><img src="resource/ProjectImages/1.gif" width="4" height="5" align="absmiddle"/> 首页　 <img src="resource/ProjectImages/2.gif" width="3" height="5" align="absmiddle"/> 上一页　 <img src="resource/ProjectImages/2-2.gif" width="3" height="5" align="absmiddle"/> 下一页　 <img src="resource/ProjectImages/3.gif" width="4" height="5" align="absmiddle"/> 末页　　共 1000 条记录 本页显示第1~10条 第1页/共100页 
      跳转到
      <input name="pageNum" type="text" style="width:20px"/>
      页</td>
  </tr>
</table>	
	</div>	
	
	<div   style="display:none"  id="upperLayer7">
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="td_page">拟稿时间：从
      <input type="text" name="textfield"/>
	到
	<input type="text" name="textfield3"/>
	&nbsp;&nbsp;标 题
	<input type="text" name="textfield22" />	&nbsp;&nbsp;拟稿人：
    <input type="text" name="textfield2"/>
    <input name="Submit2" type="submit" class="buttonface" value="  查询  "/>
    <input name="Submit" type="submit" class="buttonface" value="  重置  "/></td>
  </tr>
</table>
<div align="right">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr> 
    <td>
      
      <div align="right">
        <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
          <tr>
            <td align="center" class="td_form02">&nbsp;</td>
          </tr>
        </table>
      </div>
	  </td>
  </tr>
 </table>
</div>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" >
  
  <tr>
    <td width="5%" class="td_top">审批单号</td>
    <td width="6%" class="td_top">标 题</td>
    <td width="7%" class="td_top">拟稿人：</td>
    <td width="6%" class="td_top">拟稿日期：</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
  </tr>
</table>
<table width="98%"  border="0" cellpadding="0" cellspacing="0" class="table02" align="center">
  <tr>
    <td height="25" align="right"><img src="resource/ProjectImages/1.gif" width="4" height="5" align="absmiddle"/> 首页　 <img src="resource/ProjectImages/2.gif" width="3" height="5" align="absmiddle"/> 上一页　 <img src="resource/ProjectImages/2-2.gif" width="3" height="5" align="absmiddle"/> 下一页　 <img src="resource/ProjectImages/3.gif" width="4" height="5" align="absmiddle"/> 末页　　共 1000 条记录 本页显示第1~10条 第1页/共100页 
      跳转到
      <input name="pageNum" type="text" style="width:20px"/>
      页</td>
  </tr>
</table>
	
	</div>
	
<div   style="display:none"  id="upperLayer8">
	
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">
        
        <tr>
          <td width="150"  ><img  src="resource/ProjectImages/icon-import.gif" id="top_8" onClick="menu1('divperson','top_8');"/> <a onClick="javascript:divperson.style.display=divperson.style.display=='none'?'block':'none';"> <font class="td_title">人员安置</font></a></td>
        </tr>
</table>
<div id="divperson" style="display:block"  >
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" >
  
  <tr>
    <td width="9%"  class="td_top">审批编号</td>
    <td width="8%"  class="td_top">标 题</td>
    <td width="7%"  class="td_top">审批委员</td>
    <td width="7%"  class="td_top">审批时间</td>
	<td width="7%"  class="td_top">审批结论</td>
    <td width="8%"  class="td_top">安置方式</td>
	<td width="8%"  class="td_top">安置人数</td>
    <td width="10%"  class="td_top">安置费用</td>
    <td width="10%"  class="td_top">安置费用是否由建投垫付</td>
	<td width="8%"  class="td_top">操作</td>
    </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
	<td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
	<td class="td_01">&nbsp;</td>
	<td class="td_01"><a onClick="javascript:tracks.style.display=tracks.style.display=='none'?'block':'none';">会后跟踪</a></td>
    </tr>
</table>
<br/>

<div id="tracks" style="display:none">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="bcanzhiPerson_list"> </table>
				 <div id="pgtoolbcaranzhiperson"></div>
       </td>
     </tr>
</table>
<br/>
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">
        
        <tr>
          <td width="150"  >    <input type="checkbox"/>
  是否聘请律师</td>
        </tr>
</table>

<table width="98%" border="1" cellpadding="0" cellspacing="0" align="center"  >
  <tr>
    <td  width="11%" class="td_form01">律师姓名：</td>
    <td width="21%"  class="td_form02"><input name="text3" type="text" /></td>
    <td width="11%"  class="td_form01">联系方式：</td>
    <td colspan="3"  class="td_form02"><input type="text" name="beginTime273" /></td>
  </tr>
  <tr>
    <td width="11%" class="td_form01">附件：</td>
    <td colspan="5"  class="td_form02"><table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0"  id="fileTable3">
      <tr>
        <td colspan="2" align="right" class="td_form02"><div align="center">
          <input type="file" name="file3" id="file3" style="display: none;" onchange="addRow(this,'fileTable3')"/>
          <input type="button" class="buttonface" value="选择文件..." onclick="file3.click();" name="optionButton4" />
        </div></td>
      </tr>
    </table></td>
  </tr>
</table>
<br/>
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td width="150"  ><input name="checkbox" type="checkbox" />
      是否发布安置公告</td>
  </tr>
  <tr> </tr>
</table>
<table width="98%" border="1" cellpadding="0" cellspacing="0" align="center"  >
  <tr>
    <td  width="11%" class="td_form01">公告信息描述：</td>
    <td colspan="3"  class="td_form02"><textarea name="textarea2" cols="144" rows="3"></textarea></td>
  </tr>
  <tr>
    <td width="11%" class="td_form01">附件：</td>
    <td colspan="4"  class="td_form02"><table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0"  id="fileTable33">
      <tr>
        <td colspan="2" align="right" class="td_form02"><div align="center">
          <input type="file" name="file33" id="file33" style="display: none;" onchange="addRow(this,'fileTable33')"/>
          <input type="button" class="buttonface" value="选择文件..." onclick="file33.click();" name="optionButton44" />
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td  width="11%" class="td_form01">安置协议和收条签署情况描述：</td>
    <td colspan="3"  class="td_form02"><textarea name="textarea2" cols="144" rows="3"></textarea></td>
  </tr>
</table>
</div>
</div>
<br/>
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">
        
        <tr>
          <td width="150"  ><img  src="resource/ProjectImages/icon-import.gif" id="top_whole" onClick="menu1('divwhole','top_whole');"/> <a onClick="javascript:divwhole.style.display=divwhole.style.display=='none'?'block':'none';"> <font class="td_title">实体整体处置</font></a></td>
        </tr>
</table>

<div  id="divwhole" style="display:block">

<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" >
  
  <tr>
    <td width="9%"  class="td_top">审批编号</td>
    <td width="8%"  class="td_top">标 题</td>
    <td width="7%"  class="td_top">审批委员</td>
    <td width="7%"  class="td_top">审批时间</td>
	<td width="7%"  class="td_top">审批结论</td>
    <td width="8%"  class="td_top">处置方式</td>
	<td width="8%"  class="td_top">操作</td>
    </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">股权转让</td>
	<td class="td_01"><a onClick="disposalgqzr()">会后跟踪</a></td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">内部关闭</td>
    <td class="td_01"><a onClick="disposalnbgb()">会后跟踪</a></td>
  </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
	<td class="td_01">&nbsp;</td>
    <td class="td_01">破产清算</td>
    <td class="td_01"><a onClick="disposalpcqs()">会后跟踪</a></td>
    </tr>
</table>
<br/>
<div id="gqzrWhole" style="display:none">
<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
       <tr>
         <td height="5" align="right">
                <table id="gqzr_list"> </table>
				<div id="pgtoolbargqzr"></div>
       </td>
     </tr>
</table>
</div>
<div id="nbgb" style="display:none">
	<table width="98%" border="1" cellpadding="0" cellspacing="0" align="center" class="newtable">
	<tr>
      <td colspan="6" align="left"><strong>结案信息</strong></td>
    </tr>
	<tr>
		<td width="11%" class="td_form01" >常年不经营，被吊销</td><td class="td_form02"><input  type="checkbox"></td>
		<td width="11%" class="td_form01">无资产</td><td class="td_form02"><input  type="checkbox"></td>
		<td width="11%" class="td_form01">无第三方负债或者第三方负债已过期</td><td class="td_form02"><input  type="checkbox"></td>
	</tr>
	<tr>
		<td class="td_form01" >人员已安置</td><td class="td_form02"><input  type="checkbox"></td>
		<td  class="td_form01">无诉讼</td><td class="td_form02"><input  type="checkbox"></td>
		<td  class="td_form01">印章下落不明</td><td class="td_form02"><input  type="checkbox"></td>
	</tr>
	 <tr>
				<td nowrap class="td_form01">附件</td>
				<td colspan="5" class="td_form02">
					<table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0" class="table01" id="fileTable12">
						<tr>
						  <td colspan="2" align="right" class="td03"><input type="file" name="file12" id="file12" style="display: none;" onChange="addRow(this,'fileTable12')"/>
							<input type="button" class="buttonface" value="选择文件..." onClick="file12.click();" name="optionButton4" />
						  </td>
						</tr>
     				</table>
				</td>
 			 </tr>	
	</table>	
</div>
<div id="pcqs" style="display:none">
 <table width="98%" border="0" cellpadding="0" cellspacing="0"  style="display:none" align="center" class="newtable">
	<tr>
      <td colspan="6" align="left"><font style="color:#66CCCC">结案信息</font></td>
    </tr>
	<tr>
	 <td  width="120" class="td_form01">当前阶段：</td> <td  class="td_form02"><input value="启动清算"  readonly="readonly"   id="dqjd"></td>
	</tr>
	</table>
<div id="qidong" style="display:block">
<table width="98%" border="0" cellpadding="0" cellspacing="0"   align="center" class="newtable">
	<tr>
      <td colspan="6" align="left"><font style="color:#66CCCC">结案信息</font></td>
    </tr>
	<tr>
	 <td  width="140" class="td_form01">当前阶段：</td> <td  class="td_form02"><input value="启动清算"  readonly="readonly"  ></td>
	</tr>
	</table>
<table width="98%" id="qingsuan"  border="0" cellspacing="0" cellpadding="0"   class="newtable"  align="center" >
		<tr >
			<td class="td_form01_1" >
					<a href="#"  onclick="AddTable1('qingsuan')">&nbsp;+ &nbsp;</a>清算小组人员清单：
			</td>
		</tr>
</table>
<table width="98%" border="0" cellpadding="2" cellspacing="0" align="center" class="newtable">
	<tr>
		<td  class="td_form01" width="140">清算工作内容：</td><td  class="td_form02"><textarea rows="2" style="width:80%"></textarea></td>
	</tr>
	<tr>	
		<td  class="td_form01"  width="140">内部核查结果：</td><td  class="td_form02"><textarea rows="2" style="width:80%"></textarea></td>
	</tr>
	<tr>
		<td nowrap class="td_form01" >清算方案：</td>
		<td colspan="5" class="td_form02">
			<table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0" class="table01" id="fileTable12">
				<tr>
				  <td colspan="2" align="right" class="td03"><input type="file" name="file12" id="file12" style="display: none;" onChange="addRow(this,'fileTable12')"/>
					<input type="button" class="buttonface" value="上传" onClick="file12.click();" name="optionButton4" />
				  </td>
				</tr>
			</table>
		</td>
  </tr>
</table>
</div>
<div id="shenpi" style="display:none">
<table width="98%" border="0" cellpadding="0" cellspacing="0"   align="center" class="newtable">
	<tr>
      <td colspan="6" align="left"><font style="color:#66CCCC">结案信息</font></td>
    </tr>
	<tr>
	 <td  width="140" class="td_form01">当前阶段：</td> <td  class="td_form02"><input value="清算报告审批"  readonly="readonly" ></td>
	</tr>
	</table>

<table width="98%" border="0" cellpadding="2" cellspacing="0" align="center" class="newtable">
	<tr>
		<td  class="td_form01" width="140">会议通过时间：</td><td  class="td_form02"><input type="text"  ></td>
	</tr>
	<tr>
		<td nowrap class="td_form01" >清算报告：</td>
		<td colspan="5" class="td_form02">
			<table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0" class="table01" id="fileTable12">
				<tr>
				  <td colspan="2" align="right" class="td03"><input type="file" name="file12" id="file12" style="display: none;" onChange="addRow(this,'fileTable12')"/>
					<input type="button" class="buttonface" value="上传" onClick="file12.click();" name="optionButton4" />
				  </td>
				</tr>
			</table>
		</td>
  </tr>
</table>
</div>
<div id="jiaoxiao" style="display:none">
<table width="98%" border="0" cellpadding="0" cellspacing="0"   align="center" class="newtable">
	<tr>
      <td colspan="6" align="left"><font style="color:#66CCCC">结案信息</font></td>
    </tr>
	<tr>
	 <td  width="140" class="td_form01">当前阶段：</td> <td  class="td_form02"><input value="缴销营业执照"  readonly="readonly"  ></td>
	</tr>
	</table>

<table width="98%" border="0" cellpadding="2" cellspacing="0" align="center" class="newtable">
	<tr>
		<td  class="td_form01" width="140">办理注销登记手续时间：</td><td  class="td_form02"><input type="text"  ></td>
	</tr>
	<tr>
		<td nowrap class="td_form01" >注销证明：</td>
		<td colspan="5" class="td_form02">
			<table width="100%" height="100%" border="0" align="center"cellpadding="5" cellspacing="0" class="table01" id="fileTable12">
				<tr>
				  <td colspan="2" align="right" class="td03"><input type="file" name="file12" id="file12" style="display: none;" onChange="addRow(this,'fileTable12')"/>
					<input type="button" class="buttonface" value="上传" onClick="file12.click();" name="optionButton4" />
				  </td>
				</tr>
			</table>
		</td>
  </tr>
</table>
</div>

 <table width="98%" border="0" cellpadding="0" cellspacing="0" align="center" class="newtable">	
	<tr>
	<td class="td_form01" colspan="8"><a href="#" onClick="OpenAll()" >显示全部</a>&nbsp;&nbsp;<a href="#" onClick="CloseAll()" >关闭全部</a>&nbsp;&nbsp;<a href="#" onClick="up()" >上一阶段</a>&nbsp;&nbsp;<input type="button" value="确定"><a href="#"  onClick="down()" >&nbsp;&nbsp;下一阶段</a></td>
	</tr>
</table>
</div>
</div>
<br/>
<table width="98%" border="0" cellpadding="0" cellspacing="0" align="center">

        <tr>
          <td width="150"  ><img  src="resource/ProjectImages/icon-import.gif" id="top_asset" onClick="menu1('divasset','top_asset');"/> <a onClick="javascript:divasset.style.display=divasset.style.display=='none'?'block':'none';"> <font class="td_title">资产处置</font></a></td>
        </tr>
</table>
<div id="divasset" style="display:block"  >
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" >
  
  <tr>
    <td width="9%"  class="td_top">审批编号</td>
    <td width="8%"  class="td_top">标 题</td>
    <td width="7%"  class="td_top">审批委员</td>
    <td width="7%"  class="td_top">审批时间</td>
	<td width="7%"  class="td_top">审批结论</td>
    <td width="8%"  class="td_top">处置方式</td>
	<td width="10%"  class="td_top">安置费用是否由建投垫付</td>
	<td width="8%"  class="td_top">资产明细</td>
	<td width="8%"  class="td_top">操作</td>
    </tr>
  <tr>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
	<td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
    <td class="td_01">&nbsp;</td>
	<td class="td_01">&nbsp;</td>
	<td class="td_01">会后跟踪</td>
    </tr>
</table>
<br/>
</div>

</div>	
</s:form>	
</body>
	</html>
	




<script type="text/javascript">
				jQuery("#bcanzhiPerson_list").jqGrid({
					datatype: "local",
					colNames:['姓名','移动电话','固定电话','安置方式','安置费用','安置协议','收条','备注'],
					colModel:[	
						{name:'name',index:'name', editable: false},
						{name:'mobileTel',index:'entityName', editable: false},
						{name:'tel',index:'tel', editable: false},
						{name:'arrangeWay',index:'arrangeWay', editable: false},
						{name:'arrangeCost',index:'arrangeCost', editable: false},
						{name:'arrangeTreaty',index:'arrangeTreaty',align:'center'},
						{name:'receipt',index:'arrangeState' ,align:'center'},
						{name:'remark',index:'arrangeState',  editable: false} 
						
					],
					editurl:"entity-info-alter.html",
					autowidth:true,
					height:'auto',
					multiselect: true,
					caption: '安置人员信息'
						});
				var bcanzhiPerson= [ 
				        {name:'张三',mobileTel:'13213311111',tel:'8765321',arrangeWay:'',arrangeCost:'',arrangeTreaty:'上传',receipt:'上传',remark:''},
						{name:'张三',mobileTel:'13213311111',tel:'8765321',arrangeWay:'',arrangeCost:'',arrangeTreaty:'上传',receipt:'上传',remark:''}
						];
				for(var i=0;i<=bcanzhiPerson.length;i++)
					jQuery("#bcanzhiPerson_list").jqGrid('addRowData',i+1,bcanzhiPerson[i]);	
				$(window).bind('resize', function() {  
						// resize the datagrid to fit the page properly: 
						var size = getWidthAndHeigh(true);
						jQuery("#bcanzhiPerson_list").setGridWidth(size.width * 0.98); 
						
					}); 
</script>
<script type="text/javascript">

				jQuery("#gqzr_list").jqGrid({
					datatype: "local",
					colNames:['股东名称','控股比例（%）','注册资本（万元）','出资方式','出资情况','出资不实的数额（万元）','抽逃出资','抽逃数额（万元）','独立法人资格','交易对象','股权转让种类','转让款','股权转让合同'],
					colModel:[	
					    {name:'holderName',index:'taxName', editable: false},
						{name:'proportion',index:'name', editable: false},
						{name:'registeredCapital',index:'security', editable: false},
						{name:'way',index:'claimsaccount',editable: false,edittype:"select",editoptions:{value:"1:货币;2:实物;3:土地（含房屋）;4:无形资产;5:其他（见备注）"}},
						{name:'conditions',index:'actulHolder', editable: false,edittype:"select",editoptions:{value:"1:出资到位;2:出资不实但达到最低出资额;3:出资不实未达到最低出资额;4:未出资"}},
						{name:'notReal',index:'security', editable: false},	
						{name:'escaped',index:'security',  editable: false,edittype:"select",editoptions:{value:"1:存在;2:不存;3:无资料"}},
						{name:'escapeAmount',index:'security', editable: false},	
						{name:'legalPerson',index:'security', editable: false,edittype:"select",editoptions:{value:"1:是;2:否"}}	,
						{name:'object',index:'security', editable: false},	
						{name:'type',index:'security', editable: false},	
						{name:'zrk',index:'security', editable: false},
						{name:'contract',index:'security', editable: false}				
					],
					editurl:"entity-info-alter.html",
					autowidth:true,
					height:'auto',
					pager: '#pgtoolbargqzr',
					multiselect: true,
					caption: '股权转让信息'
						});
				var gqzr= [{contract:'上传'},{contract:'上传'},{contract:'上传'}];
				for(var i=0;i<=gqzr.length;i++)
				jQuery("#gqzr_list").jqGrid('addRowData',i+1,gqzr[i]);	
                jQuery("#gqzr_list").jqGrid('navGrid','#pgtoolbargqzr',{edit:true,add:true,del:true});
				$(window).bind('resize', function() {  
						// resize the datagrid to fit the page properly: 
						var size = getWidthAndHeigh(true);
						jQuery("#gqzr_list").setGridWidth(size.width * 0.98); 
						
					}); 
</script>