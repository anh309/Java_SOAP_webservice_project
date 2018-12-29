var kq = document.getElementById("kq").innerHTML;
var tyGiaString = kq.substring(1,kq.length-1);

var obj = JSON.parse(tyGiaString);




for(var i = 0; i< 14; i++){
	var t = obj.items[i].type;
	if(t == "USD" || t == "AUD" ||t == "CAD" ||t == "CHF" ||t == "EUR" ||t == "GBP" ||t == "HKD" ||t == "JPY" ||t == "NZD" ||t == "SGD" ||t == "THB"){
		document.getElementById(t+"_mtm").innerHTML = obj.items[i].muatienmat;
		document.getElementById(t+"_mck").innerHTML = obj.items[i].muack;
		document.getElementById(t+"_btm").innerHTML = obj.items[i].bantienmat;
		document.getElementById(t+"_bck").innerHTML = obj.items[i].banck;
	}
}
function transFromVND(ex) {
	var inputVND = document.getElementById("VND").value;
	for(var i = 0; i< 14; i++){
		var t = obj.items[i].type;
		if(t == "USD" || t == "AUD" ||t == "CAD" ||t == "CHF" ||t == "EUR" ||t == "GBP" ||t == "HKD" ||t == "JPY" ||t == "NZD" ||t == "SGD" ||t == "THB"){
			if(t==ex) continue;
			var num = inputVND/obj.items[i].muack;
			if (isNaN(num)){		// Kiểm tra có phải số không
    			num=0;
			}
			document.getElementById(obj.items[i].type).value = num.toFixed(2);
		}
	}
}

function transFromOrthers (idObj) {
	var inputObj = document.getElementById(idObj).value;
	for(var i = 0; i< 14; i++){
		if(idObj==obj.items[i].type){
			var num = inputObj*obj.items[i].banck;
			document.getElementById("VND").value = num;
			break;
		}
	}
	transFromVND(idObj);
}

