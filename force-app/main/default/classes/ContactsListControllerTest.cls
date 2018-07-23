@isTest
public class ContactsListControllerTest{

	static testMethod void testMethod1(){
		Contact testContact = new Contact();
        testContact.FirstName='First Name' ;
		testContact.LastName='Last Name' ;
        insert testContact;

			Test.StartTest();

            ApexPages.currentPage().getParameters().put('id', String.valueOf(contr.Id));

            ContactListController  testAccPlan = new ContactListController();

            testAccPlan.cancel();

            testAccPlan.add ();

        	Test.StopTest();

	}
    
}