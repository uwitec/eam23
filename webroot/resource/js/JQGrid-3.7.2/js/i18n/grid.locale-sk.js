(function(a){a.jgrid={defaults:{recordtext:"ZobrazenÃ½ch {0} - {1} z {2} zÃ¡znamov",emptyrecords:"Neboli nÃ¡jdenÃ© Å¾iadne zÃ¡znamy",loadtext:"NaÄÃ­tÃ¡m...",pgtext:"Strana {0} z {1}"},search:{caption:"VyhÄ¾adÃ¡vam...",Find:"HÄ¾adaÅ¥",Reset:"Reset",odata:["rovnÃ¡ sa","nerovnÃ¡ sa","menÅ¡ie","menÅ¡ie alebo rovnajÃºce sa","vÃ¤ÄÅ¡ie","vÃ¤ÄÅ¡ie alebo rovnajÃºce sa","zaÄÃ­na s","nezaÄÃ­na s","je v","nie je v","konÄÃ­ s","nekonÄÃ­ s","obahuje","neobsahuje"],groupOps:[{op:"AND",text:"vÅ¡etkÃ½ch"},{op:"OR",text:"niektorÃ©ho z"}],matchText:" hÄ¾adaÅ¥ podla",rulesText:" pravidiel"},edit:{addCaption:"PridaÅ¥ zÃ¡znam",editCaption:"EditÃ¡cia zÃ¡znamov",bSubmit:"UloÅ¾iÅ¥",bCancel:"Storno",bClose:"ZavrieÅ¥",saveData:"Ãdaje boli zmenenÃ©! UloÅ¾iÅ¥ zmeny?",bYes:"Ano",bNo:"Nie",bExit:"ZruÅ¡iÅ¥",msg:{required:"Pole je poÅ¾adovanÃ©",number:"ProsÃ­m, vloÅ¾te valÃ­dne ÄÃ­slo",minValue:"hodnota musÃ­ bÃ½Å¥ vÃ¤ÄÅ¡ia ako alebo rovnÃ¡ ",maxValue:"hodnota musÃ­ bÃ½Å¥ menÅ¡ia ako alebo rovnÃ¡ ",email:"nie je valÃ­dny e-mail",integer:"ProsÃ­m, vloÅ¾te celÃ© ÄÃ­slo",date:"ProsÃ­m, vloÅ¾te valÃ­dny dÃ¡tum",url:"nie je platnou URL. PoÅ¾adovanÃ½ prefix ('http://' alebo 'https://')",nodefined:" nie je definovanÃ½!",novalue:" je vyÅ¾adovanÃ¡ nÃ¡vratovÃ¡ hodnota!",customarray:"Custom function mala vrÃ¡tiÅ¥ pole!",customfcheck:"Custom function by mala byÅ¥ prÃ­tomnÃ¡ v prÃ­pade custom checking!"}},view:{caption:"ZobraziÅ¥ zÃ¡znam",bClose:"ZavrieÅ¥"},del:{caption:"ZmazaÅ¥",msg:"ZmazaÅ¥ vybranÃ½(Ã©) zÃ¡znam(y)?",bSubmit:"ZmazaÅ¥",bCancel:"Storno"},nav:{edittext:" ",edittitle:"EditovaÅ¥ vybranÃ½ riadok",addtext:" ",addtitle:"PridaÅ¥ novÃ½ riadek",deltext:" ",deltitle:"ZmazaÅ¥ vybranÃ½ zÃ¡znam ",searchtext:" ",searchtitle:"NÃ¡jsÅ¥ zÃ¡znamy",refreshtext:"",refreshtitle:"ObnoviÅ¥ tabuÄ¾ku",alertcap:"Varovanie",alerttext:"ProsÃ­m, vyberte riadok",viewtext:"",viewtitle:"ZobraziÅ¥ vybranÃ½ riadok"},col:{caption:"Zobrazit/SkrÃ½Å¥ stÄºpce",bSubmit:"UloÅ¾iÅ¥",bCancel:"Storno"},errors:{errcap:"Chyba",nourl:"Nie je nastavenÃ¡ url",norecords:"Å½iadne zÃ¡znamy k spracovaniu",model:"DÄºÅ¾ka colNames <> colModel!"},formatter:{integer:{thousandsSeparator:" ",defaultValue:"0"},number:{decimalSeparator:".",thousandsSeparator:" ",decimalPlaces:2,defaultValue:"0.00"},currency:{decimalSeparator:".",thousandsSeparator:" ",decimalPlaces:2,prefix:"",suffix:"",defaultValue:"0.00"},date:{dayNames:["Ne","Po","Ut","St","Å t","Pi","So","Nedela","Pondelok","Utorok","Streda","Å tvrtok","Piatek","Sobota"],monthNames:["Jan","Feb","Mar","Apr","MÃ¡j","JÃºn","JÃºl","Aug","Sep","Okt","Nov","Dec","JanuÃ¡r","FebruÃ¡r","Marec","AprÃ­l","MÃ¡j","JÃºn","JÃºl","August","September","OktÃ³ber","November","December"],AmPm:["do","od","DO","OD"],S:function(b){return b<11||b>13?["st","nd","rd","th"][Math.min((b-1)%10,3)]:"th"},srcformat:"Y-m-d",newformat:"d/m/Y",masks:{ISO8601Long:"Y-m-d H:i:s",ISO8601Short:"Y-m-d",ShortDate:"n/j/Y",LongDate:"l, F d, Y",FullDateTime:"l, F d, Y g:i:s A",MonthDay:"F d",ShortTime:"g:i A",LongTime:"g:i:s A",SortableDateTime:"Y-m-d\\TH:i:s",UniversalSortableDateTime:"Y-m-d H:i:sO",YearMonth:"F, Y"},reformatAfterEdit:false},baseLinkUrl:"",showAction:"",target:"",checkbox:{disabled:true},idName:"id"}}})(jQuery);