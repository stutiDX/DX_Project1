@isTest
public with sharing class ContactListControllerTest {
	@testSetup {
		List<Contact> contLst = new List<Contact>();
		Contact conObj = new Contact();
		conObj.LastName = 'Test';
		conObj.FirstName = 'First';
		contLst.add(conObj);
		insert contLst;
	}

	@isTest 
	static void testController() {
		ContactListController contrlrObj = new ContactListController();
		List<Contact> contactLst = new List<Contact>();

		Test.startTest();
		
		contactLst = contrlrObj.getContacts();
		System.assertEquals(1, contactLst.size());
		contrlrObj.sortByLastName();
		contrlrObj.sortByFirstName();
		Test.stopTest();
	}
}
