@isTest
public class OpportunityTriggerHandler1Test {
    @isTest
    public static void updateRatingTest(){
        
        List<Opportunity> oppList=new List<Opportunity>();
        for(integer i=1;i<=5;i++){
           Opportunity opp=new Opportunity();
            opp.Name='TestOpp'+i;
            Opp.StageName='Prospecting';
            Opp.CloseDate=System.Today();
            opp.Amount=1000;
            oppList.add(opp);
        }
        
        Test.startTest();
        insert oppList;
        Test.stopTest();
        
        List<Opportunity> updatedOppList = [SELECT Id, Description FROM Opportunity WHERE Id = :oppList[0].Id];
        System.assertEquals('Warm Opportunity', updatedOppList[0].Description);
        
    }

}