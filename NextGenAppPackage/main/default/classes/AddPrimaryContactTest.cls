@isTest
private class AddPrimaryContactTest {
    @testSetup
    public static void setup(){
        List<Account> accounts = new List<Account>();
        List<String>States = new List<String>{'NY','CA'};
        for (Integer i=0;i<50;i++)
            for (String state:States)
            accounts.add(new Account(Name='Nombre'+i,BillingState=state));
            
        insert accounts;
    }
    
    public static testmethod void test(){
        Test.startTest();
        Contact contacto = new Contact();
        contacto.FirstName='Andres';
        contacto.LastName='Santos';
        contacto.MailingState='Madrid';
        AddPrimaryContact apc = new AddPrimaryContact(contacto,'NY');
        System.enqueueJob(apc);
        Test.stopTest();
    
        System.assertEquals(50,[select count() from contact where FirstName='Andres']);
        
    }

}