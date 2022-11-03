%dw 2.0
output application/json
---
payload map ( payload01 , indexOfPayload01 ) -> {
	salesforceid:payload01.Id,
	id: ceil(payload01.id__c)as Number,
	bankName: payload01.bankName__c,
	branchName: payload01.branchName__c,
	accountNumber: payload01.accountNumber__c,
	accountType: payload01.accountType__c,
	primaryAccountOwner: payload01.primaryAccountOwner__c,
	accountStatus: payload01.accountStatus__c,
	accountBalance: payload01.accountBalance__c as Number,
	availableBalance: payload01.availableBalance__c as Number,
	accountCurrency: payload01.accountCurrency__c,
	accountLabel: payload01.accountLabel__c,
	interestRate: payload01.interestRate__c as Number,
	taxIdentificationNumber: payload01.taxIdNumber__c,
	openedDate: payload01.openedDate__c,
	address: {
		country: payload01.country__c,
		city: payload01.city__c,
		zip_code: payload01.zip_code__c,
		state: payload01.state__c,
		address_line_1: payload01.address_line_1__c
	}
}