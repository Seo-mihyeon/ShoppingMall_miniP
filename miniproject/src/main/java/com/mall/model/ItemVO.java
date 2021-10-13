package com.mall.model;

import java.util.Date;

public class ItemVO {

	// 상품 아이디
	private int itemId;

	// 상품코드
	private String itemCode;

	// 상품명
	private String itemName;

	// 상품가격
	private int itemPrice;

	// 상품정보
	private String itemInfo;

	// 등록날짜
	private Date sysDate;

	// 수정날짜
	private Date updateDate;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemInfo() {
		return itemInfo;
	}

	public void setItemInfo(String itemInfo) {
		this.itemInfo = itemInfo;
	}

	public Date getSysDate() {
		return sysDate;
	}

	public void setSysDate(Date sysDate) {
		this.sysDate = sysDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "ItemVO [itemId=" + itemId + ", =item";
	}
	
	

}
