(function(a){a.jgrid={defaults:{recordtext:"View {0} - {1} of {2}",emptyrecords:"No records to view",loadtext:"Loading...",pgtext:"Page {0} of {1}"},search:{caption:"SÃ¸g...",Find:"Find",Reset:"Nulstil",odata:["equal","not equal","less","less or equal","greater","greater or equal","begins with","does not begin with","is in","is not in","ends with","does not end with","contains","does not contain"],groupOps:[{op:"AND",text:"all"},{op:"OR",text:"any"}],matchText:" match",rulesText:" rules"},edit:{addCaption:"TilfÃ¸j",editCaption:"Ret",bSubmit:"Send",bCancel:"Annuller",bClose:"Luk",saveData:"Data has been changed! Save changes?",bYes:"Yes",bNo:"No",bExit:"Cancel",msg:{required:"Felt er nÃ¸dvendigt",number:"Indtast venligst et validt tal",minValue:"vÃ¦rdi skal vÃ¦re stÃ¸rre end eller lig med",maxValue:"vÃ¦rdi skal vÃ¦re mindre end eller lig med",email:"er ikke en valid email",integer:"Indtast venligst et validt heltalt",date:"Indtast venligst en valid datovÃ¦rdi",url:"is not a valid URL. Prefix required ('http://' or 'https://')",nodefined:" is not defined!",novalue:" return value is required!",customarray:"Custom function should return array!",customfcheck:"Custom function should be present in case of custom checking!"}},view:{caption:"View Record",bClose:"Close"},del:{caption:"Slet",msg:"Slet valgte rÃ¦kke(r)?",bSubmit:"Slet",bCancel:"Annuller"},nav:{edittext:" ",edittitle:"Rediger valgte rÃ¦kke",addtext:" ",addtitle:"TilfÃ¸j ny rÃ¦kke",deltext:" ",deltitle:"Slet valgte rÃ¦kke",searchtext:" ",searchtitle:"Find poster",refreshtext:"",refreshtitle:"IndlÃ¦s igen",alertcap:"Advarsel",alerttext:"VÃ¦lg venligst rÃ¦kke",viewtext:"",viewtitle:"View selected row"},col:{caption:"Vis/skjul kolonner",bSubmit:"Send",bCancel:"Annuller"},errors:{errcap:"Fejl",nourl:"Ingel url valgt",norecords:"Ingen poster at behandle",model:"colNames og colModel har ikke samme lÃ¦ngde!"},formatter:{integer:{thousandsSeparator:" ",defaultValue:"0"},number:{decimalSeparator:",",thousandsSeparator:" ",decimalPlaces:2,defaultValue:"0,00"},currency:{decimalSeparator:",",thousandsSeparator:" ",decimalPlaces:2,prefix:"",suffix:"",defaultValue:"0,00"},date:{dayNames:["SÃ¸n","Man","Tirs","Ons","Tors","Fre","LÃ¸r","SÃ¸ndag","Mandag","Tirsdag","Onsdag","Torsdag","Fredag","LÃ¸rdag"],monthNames:["Jan","Feb","Mar","Apr","Maj","Jun","Jul","Aug","Sep","Okt","Nov","Dec","Januar","Februar","Marts","April","Maj","Juni","Juli","August","September","Oktober","November","December"],AmPm:["","","",""],S:function(b){return"."},srcformat:"Y-m-d",newformat:"d/m/Y",masks:{ISO8601Long:"Y-m-d H:i:s",ISO8601Short:"Y-m-d",ShortDate:"j/n/Y",LongDate:"l d. F Y",FullDateTime:"l d F Y G:i:s",MonthDay:"d. F",ShortTime:"G:i",LongTime:"G:i:s",SortableDateTime:"Y-m-d\\TH:i:s",UniversalSortableDateTime:"Y-m-d H:i:sO",YearMonth:"F Y"},reformatAfterEdit:false},baseLinkUrl:"",showAction:"",target:"",checkbox:{disabled:true},idName:"id"}}})(jQuery);