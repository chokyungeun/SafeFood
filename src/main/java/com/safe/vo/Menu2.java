package com.safe.vo;

public class Menu2 {
	
	private String num;
	private String code;
	private String food;
	private String allergy;
	private String calory;
	private String img;
	
	public Menu2() {}

	public Menu2(String num, String code, String food, String allergy, String calory, String img) {
		this.num = num;
		this.code = code;
		this.food = food;
		this.allergy = allergy;
		this.calory = calory;
		this.img = img;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
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
		return "Menu2 [num=" + num + ", code=" + code + ", food=" + food + ", allergy=" + allergy + ", calory=" + calory
				+ ", img=" + img + "]";
	}

	
	
}
