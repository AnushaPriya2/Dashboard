@isTest
public class AccountTriggerHandlerTest {
    @isTest
     public static void updateRatingTest() {
        List<Account> accList = new List<Account>();

        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Test' + i;
            acc.Industry = 'Energy';
            accList.add(acc);
        }

        Test.startTest();
        insert accList;
        Test.stopTest();
    
    List<Account> updatedAccList = [SELECT Id, Rating FROM Account WHERE Id = :accList[0].Id];
    System.assertEquals('Hot', updatedAccList[0].Rating);
}
    @isTest
    public static void copyBillingToShippingTest(){
        List<Account> accList=new List<Account>();
        
        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Test' + i;
            acc.BillingCity='Test City';
            acc.BillingCountry='Test Country';
            acc.BillingPostalCode='1234';
            acc.BillingState='Test State';
            acc.BillingStreet='Test Street';
            acc.CopyBillingToShipping__c=true;
            accList.add(acc);
        }
        Test.startTest();
        insert accList;
        Test.stopTest();
        
        List<Account> updatedAccList = [SELECT Id, ShippingCity FROM Account WHERE Id = :accList[0].Id];
    System.assertEquals('Test City', updatedAccList[0].ShippingCity);
        
    }
    
    @isTest
     public static void createRelatedContactTest() {
        List<Account> accList = new List<Account>();

        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Test' + i;
            accList.add(acc);
        }

        Test.startTest();
        insert accList;
        Test.stopTest();
    
    List<Contact> conList = [SELECT Id FROM Contact WHERE Id = :accList[0].Id];
    System.assert(conList!=null, 'Contact is not created');
}
    @isTest
     public static void createRelatedOpportunityTest() {
        List<Account> accList = new List<Account>();

        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Test' + i;
            accList.add(acc);
        }

        Test.startTest();
        insert accList;
        Test.stopTest();
    
    List<Opportunity> oppList = [SELECT Id FROM Opportunity WHERE Id = :accList[0].Id];
    System.assert(oppList!=null, 'Opportunity is not created');
}
}