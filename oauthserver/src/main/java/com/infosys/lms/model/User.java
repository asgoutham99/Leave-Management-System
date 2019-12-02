package com.infosys.lms.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class User {

    @Id
    @Column(name = "employee_id")
    private long id;
    @Column(name = "employee_name")
    private String employeename;
    @Column(name = "password")
    @JsonIgnore
    private String password;
    @Column(name = "employee_role")
    private String employeerole;
    @Column(name = "department")
    private String dept;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmployeerole() {
		return employeerole;
	}
	public void setEmployeerole(String employeerole) {
		this.employeerole = employeerole;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	

    
}
