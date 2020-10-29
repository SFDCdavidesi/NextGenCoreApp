public class ApplicantTrHdl {

    public void  beforeInsert(List<Applicant__c> newList){
        doThingsBefore (newList);
    }
    
    private void doThingsBefore(List<Applicant__c>newLIst){
        
        for (Applicant__c a : newlist){
            //check Start Date
            if (a.PossibleStartDate__c<System.today()){
                a.possibleStartDate__c=System.today();
            }
            //set department
            a.Department__c='Sales Development';
        }
    }
    
}