package com.nhathanh.bean;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Validated
public class Student_Bai5 {
	@NotBlank
	String name;
	@NotBlank
	@Email
	String email;
	@NotNull
	@Min(0)
	@Max(10)
	Double marks;
	@NotNull
	Boolean gender;
	@NotBlank
	String faculty;
	@NotEmpty
	List<String> hobbies;
	String image;

}