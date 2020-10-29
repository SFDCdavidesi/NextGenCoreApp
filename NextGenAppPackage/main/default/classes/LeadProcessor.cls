global class LeadProcessor implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc) {

        return database.getQueryLocator('select id , leadsource from Lead ');
        
    }
    global void execute (Database.BatchableContext bc, List<Lead>scope){
        List<Lead> leads = new List<Lead>();
        for (Lead l : scope){
            l.LeadSource='Dreamforce';
            leads.add(l);
            
        }
        update leads;
        
    }
    global void finish (Database.BatchableContext bc){}
    
}