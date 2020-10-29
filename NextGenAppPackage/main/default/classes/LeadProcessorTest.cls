@isTest
private class LeadProcessorTest {
    @testSetup
    static void setup(){
        List<Lead> leads = new List<Lead>();
        for (Integer i =0;i<200;i++)
            leads.add(new Lead(firstName='lead_'+i,LeadSource='Unknown',lastname='Perey'+i,Company='cocacola'));
        insert leads;
        
    }
    
    static testmethod void test(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        ID batchID=Database.executeBatch(lp);
        Test.stopTest();
        system.assertEquals(200,[select count() from Lead where leadsource='Dreamforce']);
        
    }

}