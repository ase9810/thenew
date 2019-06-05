package org.zerock.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import org.zerock.domain.MemberVO;

@Component
public class MemberValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return MemberVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userid", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userpw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userphone", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "useremail", "required");
	}

}
