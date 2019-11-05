package com.safe.vo;

public class MyFood {

	protected String id;
	protected String code;
	protected String img;
	protected String name;
	protected String count;
	protected String allergy;
	
	public MyFood() {}

	public MyFood(String id, String code, String img, String name, String count, String allergy) {
		super();
		this.id = id;
		this.code = code;
		this.img = img;
		this.name = name;
		this.count = count;
		this.allergy = allergy;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	
	
	
	
	
}
