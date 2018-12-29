package com.ws.object.thoitiet.main;

import com.ws.object.thoitiet.chitiet.ListClouds;
import com.ws.object.thoitiet.chitiet.ListMain;
import com.ws.object.thoitiet.chitiet.ListRain;
import com.ws.object.thoitiet.chitiet.ListSnow;
import com.ws.object.thoitiet.chitiet.ListWeather;
import com.ws.object.thoitiet.chitiet.ListWind;

public class ThongSoThoiTiet {
	String dt; //Thòi gian dự đoán
	ListMain main; // thông tin chính
	ListWeather weather; // thông tin thời tiết
	ListClouds clounds; // mây
	ListWind wind; //gió
	ListRain rain; // mưa
	ListSnow snow; // mây
	String dt_txt; // lượng thời tgian
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt;
	}
	public ListMain getMain() {
		return main;
	}
	public void setMain(ListMain main) {
		this.main = main;
	}
	public ListWeather getWeather() {
		return weather;
	}
	public void setWeather(ListWeather weather) {
		this.weather = weather;
	}
	public ListClouds getClounds() {
		return clounds;
	}
	public void setClounds(ListClouds clounds) {
		this.clounds = clounds;
	}
	public ListWind getWind() {
		return wind;
	}
	public void setWind(ListWind wind) {
		this.wind = wind;
	}
	public ListRain getRain() {
		return rain;
	}
	public void setRain(ListRain rain) {
		this.rain = rain;
	}
	public ListSnow getSnow() {
		return snow;
	}
	public void setSnow(ListSnow snow) {
		this.snow = snow;
	}
	public String getDt_txt() {
		return dt_txt;
	}
	public void setDt_txt(String dt_txt) {
		this.dt_txt = dt_txt;
	}
	public ThongSoThoiTiet(String dt, ListMain main, ListWeather weather, ListClouds clounds, ListWind wind,
			ListRain rain, ListSnow snow, String dt_txt) {
		super();
		this.dt = dt;
		this.main = main;
		this.weather = weather;
		this.clounds = clounds;
		this.wind = wind;
		this.rain = rain;
		this.snow = snow;
		this.dt_txt = dt_txt;
	}
	public ThongSoThoiTiet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
