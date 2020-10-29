public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String str){
        return [FIND :str IN NAME FIELDS 
                   RETURNING Lead(Name),Contact(FirstName,LastName)];
        }
    }