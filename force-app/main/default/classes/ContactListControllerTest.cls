@isTest
public with sharing class ContactListControllerTest {


	@isTest 
	static void testController() {
		ContactsListController contrlrObj = new ContactsListController();
		List<Contact> contactLst = new List<Contact>();
		List<Contact> contLst = new List<Contact>();
		Contact conObj = new Contact();
		conObj.LastName = 'Test';
		conObj.FirstName = 'First';
		contLst.add(conObj);
		insert contLst;

		Test.startTest();
		
		contactLst = contrlrObj.getContacts();
		System.assertEquals(1, contactLst.size());
		contrlrObj.sortByLastName();
		contrlrObj.sortByFirstName();
		Test.stopTest();
	}
}
