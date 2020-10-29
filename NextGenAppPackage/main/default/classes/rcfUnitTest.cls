@isTest
global class rcfUnitTest {

    public static testmethod void test1(){
        System.debug(RandomContactFactory.generateRandomContacts(22,'Perez'));
    }
}