package com.nhathanh.bean;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Validated
public class Student {
	@NotBlank(message="Không được để trống họ và tên !")
	String name;
	@NotBlank(message = "Không được bỏ trống email của bạn !")
	@Email(message = "Email nhập vào không đúng định dạng thử lại !")
	String email;
	@NotNull(message = "Không được bỏ trống điểm của bạn!")
	@Min(0)
	@Max(10)
	Double marks;
	@NotNull(message="Hãy chọn vào giới tính của bạn !")
	Boolean gender;
	@NotBlank(message="Chọn vào chuyên ngành của bạn !")
	String faculty;
	@NotEmpty(message="Vui lòng chọn sở thích của bạn !")
	List<String> hobbies;

}