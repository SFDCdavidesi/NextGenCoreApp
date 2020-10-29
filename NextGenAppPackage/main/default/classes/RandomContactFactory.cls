public class RandomContactFactory {
    public static List<Contact>generateRandomContacts(Integer f,String s){
        List<Contact>rl= new List<Contact>();
        for (Integer i=0;i<f;i++){
            rl.add(new Contact(firstName='Random name'+i,LastName=s));
        }
        return rl;
    }
}