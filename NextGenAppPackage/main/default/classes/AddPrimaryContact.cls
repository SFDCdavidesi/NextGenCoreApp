public class AddPrimaryContact implements Queueable{

    private String state;
    private Contact contact;
    
    public addPrimaryContact (Contact c,String state){
        this.state=state;
        this.contact=c;
    }
    public void execute(QueueableContext qc){
        List<Contact>contacts = new List<Contact>();
        for (Account a : [select id from Account where BillingState=:state limit 200]){
            Contact cloned = contact.clone();
            cloned.AccountId=a.id;
            contacts.add(cloned);
        }
        insert contacts;
    }
}