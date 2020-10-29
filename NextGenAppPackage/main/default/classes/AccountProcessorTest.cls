@isTest
public class AccountProcessorTest {
    static testMethod void validate() {
       List<Account> listacuentas = new List<Account>();
        List<Contact> listaContactos = new List<Contact>();
        
        for (integer i =0;i<10;i++)listaCuentas.add (new Account(Name='test'+i));
        
        insert listaCuentas;
        for (Integer i=0;i<10;i++){
            for (Integer j=0;j<5;j++){
                listaContactos.add(new Contact(FirstName='contacto'+j,LastName='Perey'+i,AccountID=listaCuentas[i].ID));
            }
        }
        insert listaContactos;
        List<id>accountsID= new List<id>();
        accountsID.addAll(new Map<id,Account>(listaCuentas).keyset());
        
         Test.startTest();
        
        AccountProcessor.countContacts(accountsID);
        Test.stopTest();
        
        
    }


}