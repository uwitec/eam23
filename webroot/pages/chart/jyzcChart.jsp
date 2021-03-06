<%@page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ include file="/inc/taglibs.inc"%>
<%@ taglib uri="/WEB-INF/tld/cewolf.tld" prefix="cewolf" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.math.BigDecimal"%>
<%
	String cityColor =  (String)request.getAttribute("cityColor");
	HashMap map=(HashMap)request.getAttribute("map");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资产结构信息统计-经营性固定资产-经营类资产统计</title>
	<link rel="stylesheet" type="text/css" href="resource/ProjectJQuery/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
 	<link rel="stylesheet" href="resource/ProjectJQuery/jquery.fancybox-1.3.4/style.css" />
	<link href="resource/css/president.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="resource/ProjectJQuery/js/jquery-1.4.3.min.js"></script>
	<script type="text/javascript" src="resource/ProjectJQuery/jquery.fancybox-1.3.4/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="resource/ProjectJQuery/jquery.fancybox-1.3.4/fancybox/jquery.fancybox-1.3.4.js"></script>
	<%@ include file="/inc/floatingBox_big.inc"%>
	<script type="text/javascript">
	function showWin(obj)
			{
				$.post("<%=basePath%>char/CharAction_queryJyzc.do",{
						"address" : $(obj).attr("name"),
						"type":'1'
					},function(data){
					
						$("#fancybox-outer").css("background","");
						var dataArr = data.split("|*|");
						$("#cityName").html(dataArr[0]);
						$("#czlSpan").html(dataArr[1]);
						$("#cbsylSpan").html(dataArr[2]);
						/**
						$.fancybox($("#test").html(),{
			    			'autoDimensions'	: false,
							'width'     		: 'auto',
							'height'    		: 'auto',
							'transitionIn'		: 'none',
							'overlayShow'		: false,
							'padding'			: 0, 
							'margin'			: 0,
							'left'				: 0,
							'top'				: 0,
							'showCloseButton'	: false,
							'transitionOut'		: 'none'
						});
						*/
					}
				);
				//alert(obj.offsetLeft);
				//alert(obj.offsetTop);
				//$("#fancybox-outer").css("left",obj.offsetLeft);
				//$("#fancybox-outer").css("top",obj.offsetTop);
				// $("#fancybox-outer").css("margin-left",getElementViewLeft(obj)-370);
				// $("#fancybox-outer").css("margin-top",getElementViewTop(obj)-190);
				var ev = ev || window.event;
				var mp = mousePosition(ev);
					document.getElementById('test').style.left = mp.x-$("#test").width()/2+"px";
				document.getElementById('test').style.top = mp.y-$("#test").height()-3+"px";
				document.getElementById('test').style.display = 'block';
			}
			
			function hideWin(){
				//$.fancybox.close();
		  	    document.getElementById('test').style.display = 'none';
			}
			function mousePosition(ev){
        		if(ev.pageX || ev.pageY){
                	return {x:ev.pageX, y:ev.pageY};
        		}
        		return {
                	x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,
                	y:ev.clientY + document.body.scrollTop - document.body.clientTop
        		};
			}
	</script>
	
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<script type="text/javascript">
$.ajaxSetup({
	async : false
});
</script>
<div id="content">
   <div class="wrap">
     <div class="bar_open">
     <a href="<%=basePath%>char/CharAction_zcjgCount.do" class="openicon">资产结构信息统计</a>
     </div>
     <div class="outline">
        <h1>经营性固定资产</h1>
        <div class="tab">
          <ul>
          <li class="now_left"></li>
          <li class="now"><a href="<%=basePath%>tj/MapTjAction_qzcCount.do">出租率与成本收益率</a></li>
          <li class="left"></li>
          <li class="right"><a href="<%=basePath%>tj/MapTjAction_zcrcfyCount.do">资产日常费用</a></li>
          <li class="left"></li>
          <li class="right"><a href="<%=basePath%>tj/MapTjAction_htzjsrCount.do">合同租金收入</a></li>
          </ul>
          <div class="disline"></div>
        </div>
        <div class="title">
          <ul>
          <li><a href="<%=basePath%>tj/MapTjAction_qzcCount.do">全资产统计</a></li>
          <li class="now"><a href="<%=basePath%>tj/MapTjAction_jylzcCount.do">经营类资产统计</a></li>
          </ul>
        </div>

         <div class="graphic_bar">
                    <ul>
                    <%
                     int mapSize = map.size();
						String[] s = (String[]) map.get(String.valueOf(0));
						BigDecimal d1 = new BigDecimal(s[0]);
						BigDecimal d2 = new BigDecimal(s[1]);
						
						String[] s2 = (String[]) map.get(String.valueOf(1));
						BigDecimal d3 = new BigDecimal(s2[0]);
						BigDecimal d4 = new BigDecimal(s2[1]);
						
						String[] s3 = (String[]) map.get(String.valueOf(2));
						BigDecimal d5 = new BigDecimal(s3[0]);
						BigDecimal d6 = new BigDecimal(s3[1]);
						
						String[] s4 = (String[]) map.get(String.valueOf(3));
						BigDecimal d7 = new BigDecimal(s4[0]);
					//	BigDecimal d8 = new BigDecimal(s4[1]);
						
                     %>
                      <li class="red"></li>
                    <li class="text"><%=d1%>-<%=d2%></li>
                    <li class="orange"></li>
                    <li class="text"><%=d3%>-<%=d4%></li>
                    <li class="yellow"></li>
                    <li class="text"><%=d5%>-<%=d6%></li>
                    <li class="green"></li>
                    <li class="text"><%=d7%>-100</li>
                    
                    <li class="text">单位：百分比</li>
                    </ul>
           </div>
         <div class="graphic">
   	<%
   	Random ran = new Random();
   	int len = com.tansun.eam2.jfreeChart.map.ProvincePicture.PROVINCE_CN.length;
    String val = "";
   	for(int i = 0; i < len; i++){
   		val += "" + Math.abs(ran.nextInt()%4);
   		if(i != len - 1){
   			val += ",";
   		}
   	}
   	String a = "map.jspa?ints=" + cityColor + "&filename=test.jpg";
   	
   	%>
   	
<img src="<%=basePath + a%>" border="0" usemap="#Map" />
<map name="Map" id="Map">
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=230&type=1" class="various1" name="230" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="498,62,545,81" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=220&type=1" class="various1" name="220" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="499,111,534,127" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=210&type=1" class="various1" name="210" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="467,140,504,158" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=110&type=1" class="various1" name="110" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="411,164,443,181" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=120&type=1" class="various1" name="120" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="434,180,466,197" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=130&type=1" class="various1" name="130" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="403,196,436,212" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=150&type=1" class="various1" name="150" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="336,161,382,178" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=140&type=1" class="various1" name="140" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="373,207,404,223" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=370&type=1" class="various1" name="370" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="433,213,463,230" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=640&type=1" class="various1" name="640" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="315,211,347,228" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=650&type=1" class="various1" name="650" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="106,155,140,173" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=630&type=1" class="various1" name="630" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="208,226,240,242" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=620&type=1" class="various1" name="620" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="298,239,330,256" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=610&type=1" class="various1" name="610" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="342,251,372,267" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=410&type=1" class="various1" name="410" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="392,248,425,265" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=320&type=1" class="various1" name="320" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="453,248,487,264" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=310&type=1" class="various1" name="310" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="493,274,524,291" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=330&type=1" class="various1" name="330" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="469,302,502,319" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=340&type=1" class="various1" name="340" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="432,275,466,292" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=420&type=1" class="various1" name="420" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="382,286,414,301" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=510&type=1" class="various1" name="510" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="278,297,310,314" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=540&type=1" class="various1" name="540" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="114,262,146,279" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=500&type=1" class="various1" name="500" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="332,307,366,324" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=530&type=1" class="various1" name="530" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="262,372,294,389" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=520&type=1" class="various1" name="520" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="327,344,357,361" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=430&type=1" class="various1" name="430" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="379,328,413,345" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=360&type=1" class="various1" name="360" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="421,325,453,341" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=350&type=1" class="various1" name="350" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="453,345,485,361" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=440&type=1" class="various1" name="440" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="404,378,436,395" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=450&type=1" class="various1" name="450" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="349,385,383,402" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=460&type=1" class="various1" name="460" shape="rect" onmouseout="hideWin()" onmouseover="showWin(this)" onclick="showWin2(this);" coords="362,437,395,454" href="javascript:void(0)" />

 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=010&type=1" class="various1" name="010" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="415,154,429,164" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=011&type=1" class="various1" name="011" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="440,161,450,171" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=212&type=1" class="various1" name="212" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="475,169,489,184" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=371&type=1" class="various1" name="371" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="467,211,482,225" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=322&type=1" class="various1" name="322" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="480,261,494,273" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=331&type=1" class="various1" name="331" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="489,293,503,303" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=422&type=1" class="various1" name="422" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="411,301,426,315" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=351&type=1" class="various1" name="351" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="470,361,486,372" href="javascript:void(0)" />
 <area href="<%=basePath%>char/CharAction_czlCountLastMonths.do?address=442&type=1" class="various1" name="442" shape="rect" onmouseover="showWin(this)" onmouseout="hideWin()" onclick="showWin2(this);" coords="421,394,435,404" href="javascript:void(0)" />
 
</map>
</div>
 </div>
</div>
</div>
   <!-- 未展开 经营性固定资产信息统计begin -->
   <div class="wrap">
     <div class="bar_closed"> 
     <a href="<%=basePath%>tj/MapTjAction_qzcCount.do?jyl=true" class="closedicon">经营性固定资产信息统计</a>
     </div>
   </div>
   <!-- 未展开 资产处置信息统计begin -->
   <div class="wrap">
     <div class="bar_closed"> 
     <a href="<%=basePath%>tj/MapTjAction_zqCzCount.do" class="closedicon">资产处置信息统计</a>
     </div>
   </div>
   <!-- 未展开 委托贷款信息统计begin -->
   <div class="wrap">
     <div class="bar_closed"> 
     <a href="<%=basePath%>char/CharAction_wtdkCount.do" class="closedicon">委托贷款信息统计</a>
     </div>
   </div>
   <!-- 未展开 诉讼案件信息统计begin -->
   <div class="wrap">
     <div class="bar_closed"> 
     <a href="<%=basePath%>tj/MapTjAction_susongCount.do" class="closedicon">诉讼案件信息统计</a>
     </div>
   </div>
   <!-- 未展开 实体日常管理费用统计begin -->
   <div class="wrap">
     <div class="bar_closed"> 
     <a href="<%=basePath%>tj/MapTjAction_strcglfyCount.do" class="closedicon">实体日常管理费用统计</a>
     </div>
   </div>
<!-- dialog-小 悬浮框begin -->
   <div id="test" style="position:absolute;display:none;">
	   <div class="dialog_s">
	     <div class="top_bg"></div>
	     <div class="btm_bg">
	     	<h1 id="cityName"></h1>
	        <h2>经营类资产统计</h2>
	        <div class="cleardiv"></div>
	        <p><span class="item">出租率</span> <span class="datas" id="czlSpan"></span></p>
	        <p><span class="item">成本收益率</span> <span class="datas" id="cbsylSpan"></span></p>
	     </div>
	   </div>
   </div>
</body>
</html>



