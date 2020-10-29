@isTest
private class DailyLeadProcessorTest {
    @testSetup
    public static void setup(){
        List<Lead> leads = new List<Lead>();
        for (Integer i=0;i<200;i++)
            leads.add ( new Lead(firstname='lead'+i,company='test'+i,lastName='Garcia'));
        
        insert leads;
        
    }
   public static String CRON_EXP = '0 0 0 15 3 ? 2022'; 
    static testmethod  void test (){
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',

            CRON_EXP,

            new DailyLeadProcessor());  
        test.stopTest();
        System.assertEquals(200, [select count() from Lead where LeadSource='Dreamforce']);
    }

}