@IsTest
private class AccountManagerTest {
    final static String requestURI='https://dav-dev-ed.my.salesforce.com/services/apexrest/Accounts/{0}/contacts';
    @isTest static void testGetCaseById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri = String.format(requestURI,new List<String>{recordId});
            
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account a = AccountManager.getAccount();
        System.assert(a!=null);
        System.assert(a.Contacts.size()>0);
        

    }
 static Id createTestRecord() {
        // Create test record
        Account a= new Account(
        Name='Account Test'
);
        insert a;
        List<Contact> cl = new List<Contact>();
        cl.add(new Contact(LastName='Pepe',AccountId=a.ID));
        cl.add(new Contact(LastName='Paco',AccountId=a.ID));
        cl.add(new Contact(LastName='Clara',AccountId=a.ID));        
        insert cl;
        return a.Id;
    }  
}