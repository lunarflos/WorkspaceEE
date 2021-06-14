package com.myspring.MainPlan.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("mainplanVO")
public class MainPlanVO {
	private Date plandate;
	private String item_Code;
	private String item_Name;
	private String standard;
	private String unit;
	private int sequence;
	private Date expected_date;
	private Date due_date;
	private int plan_quantity;
	private String customer_name;
	private String note;
	
	public MainPlanVO() {}
	
	public MainPlanVO(Date plandate,String item_Code,String item_Name,String standard,String unit,int sequence,
			Date expected_date,Date due_date,int plan_quantity,String customer_name,String note) 
	{
		this.plandate=plandate;
		this.item_Code=item_Code;
		this.item_Name=item_Name;
		this.standard=standard;
		this.unit=unit;
		this.sequence=sequence;
		this.expected_date=expected_date;
		this.due_date=due_date;
		this.plan_quantity=plan_quantity;
		this.customer_name=customer_name;
		this.note=note;
	}
	
	public Date getPlandate() {return plandate;}
	public void setPlandate(Date plandate) {this.plandate=plandate;}
	
	public String getItem_Code() {return item_Code;}
	public void setItem_Code(String item_Code) {this.item_Code=item_Code;}
	
	public String getItem_Name() {return item_Name;}
	public void setItem_Name(String item_Name) {this.item_Name=item_Name;}
	
	public String getStandard() {return standard;}
	public void setStandard(String standard) {this.standard=standard;}
	
	public String getUnit() {return unit;}
	public void setUnit(String unit) {this.unit=unit;}
	
	public int getSequence() {return sequence;}
	public void setSequence(int sequence) {this.sequence=sequence;}
	
	public Date getExpected_date() {return expected_date;}
	public void setExpected_date(Date expected_date) {this.expected_date=expected_date;}
	
	public Date getDue_date() {return due_date;}
	public void setDue_date(Date due_date) {this.due_date=due_date;}
	
	public int getPlan_quantity() {return plan_quantity;}
	public void setPlan_quantity(int plan_quantity) {this.plan_quantity=plan_quantity;}
	
	public String getCustomer_name() {return customer_name;}
	public void setCustomer_name(String customer_name) {this.customer_name=customer_name;}
	
	public String getNote() {return note;}
	public void setNote(String note) {this.note=note;}
	
}
