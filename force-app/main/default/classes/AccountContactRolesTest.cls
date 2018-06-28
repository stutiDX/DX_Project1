@isTest 
public class AccountContactRolesTest 
{
	static testMethod void testMethod1() 
	{
		
		Account testAccount = new Account();
			testAccount.Name='Test Account' ;
		insert testAccount;

		Contact cont = new Contact();
			cont.FirstName ='Test';
			cont.LastName ='Test';
			cont.Accountid = testAccount.id;
		insert cont;
		
		AccountContactRole acr1 = new AccountContactRole();
			acr1.AccountId = testAccount.Id;
			acr1.ContactId = cont.Id;
			acr1.Role = 'Test 1';
			acr1.IsPrimary=True;
		insert acr1;
		
		
		Test.StartTest(); 

			ApexPages.StandardController sc = new ApexPages.StandardController(cont);
			AccountContactRoles  obj = new AccountContactRoles(sc);
			List<AccountContactRole> lstACR = obj.acrs;
			

		Test.StopTest();
	}
}