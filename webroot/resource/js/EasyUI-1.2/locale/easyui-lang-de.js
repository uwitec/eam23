if ($.fn.pagination){
	$.fn.pagination.defaults.beforePageText = 'Seite';
	$.fn.pagination.defaults.afterPageText = 'von {pages}';
	$.fn.pagination.defaults.displayMsg = 'Angezeigte {from} zu {to} von {total} Artikel';
}
if ($.fn.datagrid){
	$.fn.datagrid.defaults.loadMsg = 'Processing, bitte warten ...';
}
if ($.messager){
	$.messager.defaults.ok = 'OK';
	$.messager.defaults.cancel = 'Stornieren';
}
if ($.fn.validatebox){
	$.fn.validatebox.defaults.missingMessage = 'Dieses Feld ist obligatorisch.';
	$.fn.validatebox.defaults.rules.email.message = 'Bitte geben Sie eine gÃ¼ltige E-Mail-Adresse.';
	$.fn.validatebox.defaults.rules.url.message = 'Bitte geben Sie eine gÃ¼ltige URL.';
	$.fn.validatebox.defaults.rules.length.message = 'Bitte geben Sie einen Wert zwischen {0} und {1}.';
}
if ($.fn.numberbox){
	$.fn.numberbox.defaults.missingMessage = 'Dieses Feld ist obligatorisch.';
}
if ($.fn.combobox){
	$.fn.combobox.defaults.missingMessage = 'Dieses Feld ist obligatorisch.';
}
if ($.fn.combotree){
	$.fn.combotree.defaults.missingMessage = 'Dieses Feld ist obligatorisch.';
}
if ($.fn.calendar){
	$.fn.calendar.defaults.weeks = ['S','M','T','W','T','F','S'];
	$.fn.calendar.defaults.months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
}
if ($.fn.datebox){
	$.fn.datebox.defaults.currentText = 'Heute';
	$.fn.datebox.defaults.closeText = 'SchlieÃen';
	$.fn.datebox.defaults.missingMessage = 'Dieses Feld ist obligatorisch.';
}
