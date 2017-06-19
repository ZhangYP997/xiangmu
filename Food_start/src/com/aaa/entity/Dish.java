package com.aaa.entity;

public class Dish {
	private Integer dish_id;
	private Integer cate_id;
	private String dish_name;
	private String dish_price;
	private String dish_poh;
	private Integer dish_status;
	public Integer getDish_id() {
		return dish_id;
	}
	public void setDish_id(Integer dish_id) {
		this.dish_id = dish_id;
	}
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public String getDish_name() {
		return dish_name;
	}
	public void setDish_name(String dish_name) {
		this.dish_name = dish_name;
	}
	public String getDish_price() {
		return dish_price;
	}
	public void setDish_price(String dish_price) {
		this.dish_price = dish_price;
	}
	public String getDish_poh() {
		return dish_poh;
	}
	public void setDish_poh(String dish_poh) {
		this.dish_poh = dish_poh;
	}
	public Integer getDish_status() {
		return dish_status;
	}
	public void setDish_status(Integer dish_status) {
		this.dish_status = dish_status;
	}
}
