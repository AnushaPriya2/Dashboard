trigger OpportunityTrigger1 on Opportunity (before insert) {
    OpportunityTriggerHandler1.updateDescription(Trigger.New);
}