public class OpportunityTriggerHandler1 {
    public static void updateDescription(List<Opportunity>oppList){
        for(Opportunity opp:oppList){
            if(opp.Amount!= null && opp.Amount>=1000 && opp.Amount<=2000){
                opp.Description='Warm Opportunity';
            }
        }
    }
}