public class AccountTriggerHandler {
    public static void updateRating(List<Account> accList){
        for(Account acc:accList){
            if(acc.Industry=='Media' || acc.Industry=='Energy'){
                acc.Rating='Hot';
            }
        }
        
    }
    public static void copyBillingToShipping(List<Account> accList){
        for(Account acc:accList){
            if(acc.CopyBillingToShipping__c && acc.BillingCity != null){
            acc.ShippingCity=acc.BillingCity;
            acc.ShippingCountry=acc.BillingCountry;
            acc.ShippingPostalCode=acc.BillingPostalCode;
            acc.ShippingState=acc.BillingState;
            acc.ShippingStreet=acc.BillingStreet;
            }
        }
    }
    
    public static void createRelatedContact(List<Account> accList){
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList){
            Contact con=new Contact();
            con.FirstName='Anusha';
            con.LastName='Subaskar';
            con.AccountId=acc.id;
            conList.add(con);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        
    }
    public static void createRelatedOpportunity(List<Account> accList){
        List<Opportunity> oppList=new List<Opportunity>();
        
        for(Account acc:accList){
            Opportunity opp=new Opportunity();
            opp.Name='OppTest';
            //opp.Name=acc.Name;
            opp.CloseDate=System.today();
            opp.StageName='Qualification';
            opp.AccountId=acc.id;
            oppList.add(opp);
            
        }
        if(!oppList.isEmpty()){
            insert oppList;
    }

}
}