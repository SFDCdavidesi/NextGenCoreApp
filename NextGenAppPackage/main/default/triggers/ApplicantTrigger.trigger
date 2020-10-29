trigger ApplicantTrigger on Applicant__c (before insert) {
    ApplicantTrHdl handler = new ApplicantTrHdl();
    
    if (Trigger.isBefore && Trigger.isInsert){
     	handler.beforeInsert(Trigger.new);   
    }

}