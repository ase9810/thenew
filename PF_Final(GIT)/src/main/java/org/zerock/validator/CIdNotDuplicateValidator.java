package org.zerock.validator;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.zerock.domain.CompanyVO;
import org.zerock.service.CompanyService;

@Component
public class CIdNotDuplicateValidator implements Validator {

	@Resource(name="companyService")
	private CompanyService companyService;	

	@Override
	public boolean supports(Class<?> clazz) {
		
		return CompanyVO.class.isAssignableFrom(clazz);
	}
	

	@Override
	public void validate(Object target, Errors errors) {

		CompanyVO companyVO = (CompanyVO)target;
		
		//아이디 중복 체크(비어있지 않은 경우 한건의 데이터 받아서 검사)
		if(companyVO.getCompid() != null && !companyVO.getCompid().isEmpty()) {
			CompanyVO company = companyService.getCompany(companyVO.getCompid());
			//받은 한건의 데이터가 비어있지 않으면 검사
			if(company != null && company.getCompid().equals(companyVO.getCompid())) {
				//아이디 중복
				errors.rejectValue("companyid", "duplicatedId");
			}
		}
	}
	

}
