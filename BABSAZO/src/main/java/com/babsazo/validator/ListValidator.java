package com.babsazo.validator;

import org.springframework.validation.*;

import com.babsazo.model.ListCommand;


public class ListValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return ListCommand.class.isAssignableFrom(clazz);
	}

	// 작성자 , 제목, 내용이 빈값인지 확인해서 비어있다면 에러출력함
	// resources 의 messages 에  존재
	// 점포등록시에 사용
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "writer", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "subject", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "content", "required");
		
	}
}