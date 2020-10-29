@RestResource(urlMapping='/Applicant__c/*')
global with sharing class BekoRestAPI {
    static final string OK='201';
    static final string KO='000';
    
    
    @HttpPost
    global static String createApplicant(List<Applicant__c> applicants) {
        try{
       //     List<Applicant__c>listApplicants = (List<Applicant__c>)JSON.deserialize(applicants, List<Applicant__c>.class);
            insert applicants;   
        }catch(Exception e){
            return KO;
        }
        
        return OK;
    }   
    
    
    
}