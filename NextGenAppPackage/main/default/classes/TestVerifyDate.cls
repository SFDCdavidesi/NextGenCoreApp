@isTest
global class TestVerifyDate {
    public static testmethod void test1(){
        Date date1= Date.today();
        Date date2= Date.today();
        date2.addDays(5);
        VerifyDate.CheckDates(date1, date2);
        date2=date2.addDays(55);
        VerifyDate.CheckDates(date1, date2);
        Test.startTest();

            
        
            
        
        
        Test.stopTest();
    }

}