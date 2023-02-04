package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
	@Id
	String username;
	String password;
	String fullname;
	String email;
	String photo;
	boolean activated;
	boolean admin;
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
