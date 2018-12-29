//gán gt vào input
var stringDesLang="vi", stringsourceLang="en";
function setsLanguage(){
	var sourceLang = document.getElementById("sourceLang");
	var indexStringsourceLang = sourceLang.selectedIndex;
	switch (indexStringsourceLang) {
		case 0:
			stringsourceLang = "en";
			break;
		case 1:
			stringsourceLang = "vi";
			break;
		case 2:
			stringsourceLang = "ar";
			break;
		case 3:
			stringsourceLang = "ja";
			break;
		case 4:
			stringsourceLang = "ko";
			break;
		case 5:
			stringsourceLang = "de";
			break;
		case 6:
			stringsourceLang = "fr";
			break;
		case 7:
			stringsourceLang = "it";
			break;
		case 8:
			stringsourceLang = "es";
			break;
		case 9:
			stringsourceLang = "zh";
			break;
		
		default:
			break;
	}
	document.getElementById("sLangCode").value = stringsourceLang;	
}

function setdLanguage(){
	var desLang = document.getElementById("destinationLang");
	var indexStringDesLang = desLang.selectedIndex;
	switch (indexStringDesLang) {
		case 0:
			stringsourceLang = "vi";
			break;
		case 1:
			stringDesLang = "en";
			break;
		case 2:
			stringDesLang = "ar";
			break;
		case 3:
			stringDesLang = "ja";
			break;
		case 4:
			stringDesLang = "ko";
			break;
		case 5:
			stringDesLang = "de";
			break;
		case 6:
			stringDesLang = "fr";
			break;
		case 7:
			stringDesLang = "it";
			break;
		case 8:
			stringDesLang = "es";
			break;
		case 9:
			stringDesLang = "zh";
			break;
		
		default:
			break;
	}
	document.getElementById("dLangCode").value = stringDesLang;
}

