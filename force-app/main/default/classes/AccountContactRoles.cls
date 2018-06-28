public with sharing class AccountContactRoles {
    private final Contact acr;
    
    public AccountContactRoles(ApexPages.StandardController controller){
        this.acr = (Contact)controller.getRecord();
    }
    
    public List<AccountContactRole> acrs {
        get {
            if (acrs == null) {
                acrs = [Select Id, Account.BillingState, Account.Name, 
                    Account.RecordType.Name, Role, IsPrimary 
                    From AccountContactRole 
                    Where ContactId=:acr.Id 
                    Order By Account.RecordType.Name, Role];                
            }
            return acrs;
        }
        private set;
    }
}