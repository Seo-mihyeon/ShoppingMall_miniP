package com.mall.model;

import java.util.Date;

public class ItemVO {

	/* 상품 id */
	private int itemId;
	/* 상품 코드 */
	private String itemCode;
	/* 상품 이름 */
	private String itemName;
	/* 상품 가격 */
	private int itemPrice;
	/* 상품 소개 */
	private String itemInfo;
	/* 등록 날짜 */
	private Date regDate;
	/* 수정 날짜 */
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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "ShopVO [itemId=" + itemId + ", itemCode=" + itemCode + ", itemName=" + itemName + ", itemPrice="
				+ itemPrice + ", itemInfo=" + itemInfo + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}

}
