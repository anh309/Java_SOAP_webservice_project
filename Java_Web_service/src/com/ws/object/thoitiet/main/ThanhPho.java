package com.ws.object.thoitiet.main;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class ThanhPho {
	String id; // id
	String name;
	Coord coord; // kinh tuyến , vĩ tuyến
	String Country; // đất nước
	public String getId() {
		return id;
	}
	public void setId() {
		JSONParser parser = new JSONParser();
		JSONArray countries;
		try {
			countries = (JSONArray)parser.parse(new FileReader("city.list.min.json"));
			for(int i=0; i< countries.size();i++) {
				JSONObject jsonObject = (JSONObject) countries.get(i);
				String id = (String) jsonObject.get("id");
				String name = (String) jsonObject.get("name");
				if(name.equalsIgnoreCase(this.getName()))
					this.id = id;
			}
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.id = "";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Coord getCoord() {
		return coord;
	}
	public void setCoord(Coord coord) {
		this.coord = coord;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public ThanhPho(String id, String name, Coord coord, String country) {
		super();
		this.id = id;
		this.name = name;
		this.coord = coord;
		Country = country;
	}
	public ThanhPho() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
