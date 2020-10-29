public class AccountHandler {
    public static Account insertNewAccount(String name){
        
        Account a = new Account(name=name);
        try{
        insert a;    
        }catch(DmlException e){
            return null;
        }
        
        return a;
        
    }

}