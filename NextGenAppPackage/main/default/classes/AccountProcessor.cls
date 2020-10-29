public class AccountProcessor {
	@future
    public static void countContacts(List<id>listOfIds){
        /*For each Account ID passed to the method, count the number of Contact
	records associated to it and update the 'Number_of_Contacts__c'
	field with this value.*/
        List<Account>processedAccounts = new List<Account>();
        for (Account  a : [select id, (select id from Contacts) from Account where id in : listOfIds]){
            a.Number_of_contacts__c=a.Contacts.size();
            processedAccounts.add(a);
            
        }
        update processedAccounts;
        
        
    }
}