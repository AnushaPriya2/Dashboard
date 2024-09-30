public class CustomMetadata {
  	
    public void data(){
        List<TestCustomMetadata__mdt> list1=TestCustomMetadata__mdt.getall().values();
        System.debug('list1=='+list1.size());
        System.debug('list1=='+list1);
        
        TestCustomMetadata__mdt cd=TestCustomMetadata__mdt.getInstance('MaduraiToTirunelveli');
        System.debug('cd=='+cd);
        
        List<TestCustomMetadata__mdt> listcmd=[select Country__c,From_Location__c,To_Location__c from TestCustomMetadata__mdt];
        System.debug('listcmd=='+listcmd);
    }
}