package com.safe.vo;

public class Menu {
	private String code;
	private String food;
	private String allergy;
	private String calory;
	private String img;
	
	public Menu() {}

	public Menu(String code, String food, String allergy, String calory, String img) {
		this.code = code;
		this.food = food;
		this.allergy = allergy;
		this.calory = calory;
		this.img = img;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getCalory() {
		return calory;
	}

	public void setCalory(String calory) {
		this.calory = calory;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "MyMenu [code=" + code + ", food=" + food + ", allergy=" + allergy + ", calory=" + calory + ", img="
				+ img + "]";
	}
	
}
