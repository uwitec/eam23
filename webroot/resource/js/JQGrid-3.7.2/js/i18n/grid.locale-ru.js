(function(a){a.jgrid={defaults:{recordtext:"ÐÑÐ¾ÑÐ¼Ð¾ÑÑ {0} - {1} Ð¸Ð· {2}",emptyrecords:"ÐÐµÑ Ð·Ð°Ð¿Ð¸ÑÐµÐ¹ Ð´Ð»Ñ Ð¿ÑÐ¾ÑÐ¼Ð¾ÑÑÐ°",loadtext:"ÐÐ°Ð³ÑÑÐ·ÐºÐ°...",pgtext:"Ð¡ÑÑ. {0} Ð¸Ð· {1}"},search:{caption:"ÐÐ¾Ð¸ÑÐº...",Find:"ÐÐ°Ð¹ÑÐ¸",Reset:"Ð¡Ð±ÑÐ¾Ñ",odata:["ÑÐ°Ð²Ð½Ð¾","Ð½Ðµ ÑÐ°Ð²Ð½Ð¾","Ð¼ÐµÐ½ÑÑÐµ","Ð¼ÐµÐ½ÑÑÐµ Ð¸Ð»Ð¸ ÑÐ°Ð²Ð½Ð¾","Ð±Ð¾Ð»ÑÑÐµ","Ð±Ð¾Ð»ÑÑÐµ Ð¸Ð»Ð¸ ÑÐ°Ð²Ð½Ð¾","Ð½Ð°ÑÐ¸Ð½Ð°ÐµÑÑÑ Ñ","Ð½Ðµ Ð½Ð°ÑÐ¸Ð½Ð°ÐµÑÑÑ Ñ","Ð½Ð°ÑÐ¾Ð´Ð¸ÑÑÑ Ð²","Ð½Ðµ Ð½Ð°ÑÐ¾Ð´Ð¸ÑÑÑ Ð²","Ð·Ð°ÐºÐ°Ð½ÑÐ¸Ð²Ð°ÐµÑÑÑ Ð½Ð°","Ð½Ðµ Ð·Ð°ÐºÐ°Ð½ÑÐ¸Ð²Ð°ÐµÑÑÑ Ð½Ð°","ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ñ","Ð½Ðµ ÑÐ¾Ð´ÐµÑÐ¶Ð¸Ñ"],groupOps:[{op:"AND",text:"Ð²ÑÐµ"},{op:"OR",text:"Ð»ÑÐ±Ð¾Ð¹"}],matchText:" ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÐµÑ",rulesText:" Ð¿ÑÐ°Ð²Ð¸Ð»Ð°"},edit:{addCaption:"ÐÐ¾Ð±Ð°Ð²Ð¸ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ",editCaption:"Ð ÐµÐ´Ð°ÐºÑÐ¸ÑÐ¾Ð²Ð°ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ",bSubmit:"Ð¡Ð¾ÑÑÐ°Ð½Ð¸ÑÑ",bCancel:"ÐÑÐ¼ÐµÐ½Ð°",bClose:"ÐÐ°ÐºÑÑÑÑ",saveData:"ÐÐ°Ð½Ð½ÑÐµ Ð±ÑÐ»Ð¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð½Ñ! Ð¡Ð¾ÑÑÐ°Ð½Ð¸ÑÑ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ?",bYes:"ÐÐ°",bNo:"ÐÐµÑ",bExit:"ÐÑÐ¼ÐµÐ½Ð°",msg:{required:"ÐÐ¾Ð»Ðµ ÑÐ²Ð»ÑÐµÑÑÑ Ð¾Ð±ÑÐ·Ð°ÑÐµÐ»ÑÐ½ÑÐ¼",number:"ÐÐ¾Ð¶Ð°Ð»ÑÐ¹ÑÑÐ°, Ð²Ð²ÐµÐ´Ð¸ÑÐµ Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½Ð¾Ðµ ÑÐ¸ÑÐ»Ð¾",minValue:"Ð·Ð½Ð°ÑÐµÐ½Ð¸Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±ÑÑÑ Ð±Ð¾Ð»ÑÑÐµ Ð»Ð¸Ð±Ð¾ ÑÐ°Ð²Ð½Ð¾",maxValue:"Ð·Ð½Ð°ÑÐµÐ½Ð¸Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±ÑÑÑ Ð¼ÐµÐ½ÑÑÐµ Ð»Ð¸Ð±Ð¾ ÑÐ°Ð²Ð½Ð¾",email:"Ð½ÐµÐºÐ¾ÑÑÐµÐºÑÐ½Ð¾Ðµ Ð·Ð½Ð°ÑÐµÐ½Ð¸Ðµ e-mail",integer:"ÐÐ¾Ð¶Ð°Ð»ÑÐ¹ÑÑÐ°, Ð²Ð²ÐµÐ´Ð¸ÑÐµ ÑÐµÐ»Ð¾Ðµ ÑÐ¸ÑÐ»Ð¾",date:"ÐÐ¾Ð¶Ð°Ð»ÑÐ¹ÑÑÐ°, Ð²Ð²ÐµÐ´Ð¸ÑÐµ Ð¿ÑÐ°Ð²Ð¸Ð»ÑÐ½ÑÑ Ð´Ð°ÑÑ",url:"Ð½ÐµÐ²ÐµÑÐ½Ð°Ñ ÑÑÑÐ»ÐºÐ°. ÐÐµÐ¾Ð±ÑÐ¾Ð´Ð¸Ð¼Ð¾ Ð²Ð²ÐµÑÑÐ¸ Ð¿ÑÐµÑÐ¸ÐºÑ ('http://' or 'https://')",nodefined:" is not defined!",novalue:" return value is required!",customarray:"Custom function should return array!",customfcheck:"Custom function should be present in case of custom checking!"}},view:{caption:"ÐÑÐ¾ÑÐ¼Ð¾ÑÑ Ð·Ð°Ð¿Ð¸ÑÐ¸",bClose:"ÐÐ°ÐºÑÑÑÑ"},del:{caption:"Ð£Ð´Ð°Ð»Ð¸ÑÑ",msg:"Ð£Ð´Ð°Ð»Ð¸ÑÑ Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ(Ð¸)?",bSubmit:"Ð£Ð´Ð°Ð»Ð¸ÑÑ",bCancel:"ÐÑÐ¼ÐµÐ½Ð°"},nav:{edittext:" ",edittitle:"Ð ÐµÐ´Ð°ÐºÑÐ¸ÑÐ¾Ð²Ð°ÑÑ Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ",addtext:" ",addtitle:"ÐÐ¾Ð±Ð°Ð²Ð¸ÑÑ Ð½Ð¾Ð²ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ",deltext:" ",deltitle:"Ð£Ð´Ð°Ð»Ð¸ÑÑ Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ",searchtext:" ",searchtitle:"ÐÐ°Ð¹ÑÐ¸ Ð·Ð°Ð¿Ð¸ÑÐ¸",refreshtext:"",refreshtitle:"ÐÐ±Ð½Ð¾Ð²Ð¸ÑÑ ÑÐ°Ð±Ð»Ð¸ÑÑ",alertcap:"ÐÐ½Ð¸Ð¼Ð°Ð½Ð¸Ðµ",alerttext:"ÐÐ¾Ð¶Ð°Ð»ÑÐ¹ÑÑÐ°, Ð²ÑÐ±ÐµÑÐ¸ÑÐµ Ð·Ð°Ð¿Ð¸ÑÑ",viewtext:"",viewtitle:"ÐÑÐ¾ÑÐ¼Ð¾ÑÑÐµÑÑ Ð²ÑÐ±ÑÐ°Ð½Ð½ÑÑ Ð·Ð°Ð¿Ð¸ÑÑ"},col:{caption:"ÐÐ¾ÐºÐ°Ð·Ð°ÑÑ/ÑÐºÑÑÑÑ ÑÑÐ¾Ð»Ð±ÑÑ",bSubmit:"Ð¡Ð¾ÑÑÐ°Ð½Ð¸ÑÑ",bCancel:"ÐÑÐ¼ÐµÐ½Ð°"},errors:{errcap:"ÐÑÐ¸Ð±ÐºÐ°",nourl:"URL Ð½Ðµ ÑÑÑÐ°Ð½Ð¾Ð²Ð»ÐµÐ½",norecords:"ÐÐµÑ Ð·Ð°Ð¿Ð¸ÑÐµÐ¹ Ð´Ð»Ñ Ð¾Ð±ÑÐ°Ð±Ð¾ÑÐºÐ¸",model:"Ð§Ð¸ÑÐ»Ð¾ Ð¿Ð¾Ð»ÐµÐ¹ Ð½Ðµ ÑÐ¾Ð¾ÑÐ²ÐµÑÑÑÐ²ÑÐµÑ ÑÐ¸ÑÐ»Ñ ÑÑÐ¾Ð»Ð±ÑÐ¾Ð² ÑÐ°Ð±Ð»Ð¸ÑÑ!"},formatter:{integer:{thousandsSeparator:" ",defaultValue:"0"},number:{decimalSeparator:",",thousandsSeparator:" ",decimalPlaces:2,defaultValue:"0,00"},currency:{decimalSeparator:",",thousandsSeparator:" ",decimalPlaces:2,prefix:"",suffix:"",defaultValue:"0,00"},date:{dayNames:["ÐÑ","ÐÐ½","ÐÑ","Ð¡Ñ","Ð§Ñ","ÐÑ","Ð¡Ð±","ÐÐ¾ÑÐºÑÐµÑÐµÐ½Ð¸Ðµ","ÐÐ¾Ð½ÐµÐ´ÐµÐ»ÑÐ½Ð¸Ðº","ÐÑÐ¾ÑÐ½Ð¸Ðº","Ð¡ÑÐµÐ´Ð°","Ð§ÐµÑÐ²ÐµÑÐ³","ÐÑÑÐ½Ð¸ÑÐ°","Ð¡ÑÐ±Ð±Ð¾ÑÐ°"],monthNames:["Ð¯Ð½Ð²","Ð¤ÐµÐ²","ÐÐ°Ñ","ÐÐ¿Ñ","ÐÐ°Ð¹","ÐÑÐ½","ÐÑÐ»","ÐÐ²Ð³","Ð¡ÐµÐ½","ÐÐºÑ","ÐÐ¾Ñ","ÐÐµÐº","Ð¯Ð½Ð²Ð°ÑÑ","Ð¤ÐµÐ²ÑÐ°Ð»Ñ","ÐÐ°ÑÑ","ÐÐ¿ÑÐµÐ»Ñ","ÐÐ°Ð¹","ÐÑÐ½Ñ","ÐÑÐ»Ñ","ÐÐ²Ð³ÑÑÑ","Ð¡ÐµÐ½ÑÑÐ±ÑÑ","ÐÐºÑÑÐ±ÑÑ","ÐÐ¾ÑÐ±ÑÑ","ÐÐµÐºÐ°Ð±ÑÑ"],AmPm:["am","pm","AM","PM"],S:function(b){return b<11||b>13?["st","nd","rd","th"][Math.min((b-1)%10,3)]:"th"},srcformat:"Y-m-d",newformat:"d.m.Y",masks:{ISO8601Long:"Y-m-d H:i:s",ISO8601Short:"Y-m-d",ShortDate:"n.j.Y",LongDate:"l, F d, Y",FullDateTime:"l, F d, Y G:i:s",MonthDay:"F d",ShortTime:"G:i",LongTime:"G:i:s",SortableDateTime:"Y-m-d\\TH:i:s",UniversalSortableDateTime:"Y-m-d H:i:sO",YearMonth:"F, Y"},reformatAfterEdit:false},baseLinkUrl:"",showAction:"",target:"",checkbox:{disabled:true},idName:"id"}}})(jQuery);