public class ContactSearch {
    public static List<Contact> searchForContacts(String name, String mailing){
        return [select id,name from Contact where Lastname=:name and MailingPostalCode=:mailing];
        
    }

}