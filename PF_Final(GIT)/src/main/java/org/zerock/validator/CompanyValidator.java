package org.zerock.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import org.zerock.domain.CompanyVO;

@Component
public class CompanyValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return CompanyVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compid", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "comppw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compname", "required");		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compdate", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compcontent", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compphone", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "compdomain", "required");
	}

}
