package com.nt.model;

import java.io.Serializable;

import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.SQLDelete;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

//TODO why data is not working, added getts and setts manaully
@Data
@Entity
@Table(name = "employee_new")
@SQLDelete(sql = "UPDATE employee_new set status = 'INACTIVE' WHERE no=?")
@SQLRestriction("status <> 'INACTIVE'")

public class Employee implements Serializable {

	@Id
	@SequenceGenerator(name = "gen1", sequenceName = "EMP_SEQ", initialValue = 5, allocationSize = 1)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private Integer no;

	

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	private String employeeName;
	private String job;
	private String salary;
	private String dept;
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
}
