@isTest
global class TestRestrictContactByName {
    public static testmethod void test1(){
        try{
        insert new Contact(Firstname='Pepe',LastName='INVALIDNAME');    
        }catch (Exception e){
            System.assert(e.getmessage().contains('DML'));
        }
        
    }

}