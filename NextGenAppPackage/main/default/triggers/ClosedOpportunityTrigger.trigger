trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> lops = new List<Task>();
    for (Opportunity o : Trigger.new){
        if (o.StageName=='Closed Won'){
            lops.add(new Task(subject='Follow Up Test Task',WhatId=o.iD));
        }
        
    }
        
    if (!lops.isEmpty()){
        insert lops;
    }

}