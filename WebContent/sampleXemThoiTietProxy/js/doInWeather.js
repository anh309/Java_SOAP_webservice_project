var kq = document.getElementById("kq").innerHTML;
var obj = JSON.parse(kq);	
var today = new Date();
var spic = "https://openweathermap.org/img/w/"+obj.list[0].weather[0].icon+".png";
var temp = parseInt(obj.list[0].main.temp) - 273;
var month = parseInt(today.getMonth()) +1;

document.getElementById("ThanhPho").innerHTML="Thời tiết tại "+obj.city.name+", " +obj.city.country;
document.getElementById("DoC").innerHTML= temp;
document.getElementById("weather-widget-cloudiness1").innerHTML = obj.list[0].weather[0].main;
document.getElementById("dateSys").innerHTML=today.getHours() + ":"+today.getMinutes()+" "+today.getDate() +"-"+ month +"-"+ today.getFullYear();
document.getElementById("img-TT").src=spic;
document.getElementById("weather-widget-wind").innerHTML= obj.list[0].wind.speed +" m/s";
document.getElementById("weather-widget-cloudiness2").innerHTML= obj.list[0].clouds.all +" %";
document.getElementById("info_as").innerHTML= obj.list[0].main.pressure  +" hpa";
document.getElementById("info_da").innerHTML= obj.list[0].main.humidity  +" %";
document.getElementById("wrong-data-lat").innerHTML= obj.city.coord.lat;
document.getElementById("wrong-data-lon").innerHTML= obj.city.coord.lon;



var tempS = "";
for(var i =0 ; i< obj.list.length; i++){
	var timing = new Date(obj.list[i].dt_txt);
	timing.setHours(timing.getHours() + 7);
	monthTiming = parseInt(timing.getMonth())+1;
	if(i<1){
		tempS = tempS 	+ '<div class="col-md-12 titleTT-D">'
					+'<p id="DateSysR">'+timing.getDate() +'-'+ monthTiming +'-'+ timing.getFullYear()+' Hôm nay</p></div>';
	}else{
		var prePoint = new Date(obj.list[i-1].dt_txt);
		prePoint.setHours(prePoint.getHours() + 7);

		if(timing.getDate() != prePoint.getDate()){
			tempS = tempS 	+ '<div class="col-md-12 titleTT-D">'
			+'<p id="DateSysR">'+timing.getDate() +'-'+ monthTiming +'-'+ timing.getFullYear()+'</p></div>';
		}
		var tempTiming = parseInt(obj.list[i].main.temp) - 273.1;
		 tempS = tempS+ '<div class="col-md-12 infoTT"><div class="col-md-5"><p id="H-TT">'
		 				+timing.getHours()+':'+timing.getMinutes()+'</p>'
		 				+'<img src="https://openweathermap.org/img/w/'+obj.list[i].weather[0].icon
		 				+'.png" alt=""></div><div class="col-md-7 "><div class="top-TT">'
		 				+'<p class="doC"><span id="DoC-R">'+tempTiming.toFixed(1)
		 				+'</span><sup>o</sup>C</p>'
		 				+'<p class="" id="may-R">'+obj.list[i].weather[0].description
		 				+'</p></div><div class="bot-TT"><p class="TocGio">'
		 				+'<span id="TocGio">'+obj.list[i].wind.speed
		 				+'</span>, m/s</p><p class="TiLeMay"><span id="TiLeMay">'+obj.list[i].clouds.all
		 				+'</span>%,</p><p class="hpa"><span class="hpa">'+obj.list[i].main.pressure
		 				+'</span> hpa</p></div></div></div>';
	}
	document.getElementById("info_details").innerHTML= tempS;
}

