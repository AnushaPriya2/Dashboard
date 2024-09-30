trigger AccountTrigger on Account (before insert,after insert) {
    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
           AccountTriggerHandler.updateRating(Trigger.New);
           AccountTriggerHandler.copyBillingToShipping(Trigger.New); 
        }else if(Trigger.isAfter){
            AccountTriggerHandler.createRelatedContact(Trigger.New);
            AccountTriggerHandler.createRelatedOpportunity(Trigger.New);
            
        }
    }
    
}