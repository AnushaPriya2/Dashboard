public class ListCustomSettingController {
    public void getListData(){
       List<ListCommonDataForOrg__c> sobjs=ListCommonDataForOrg__c.getall().values();
        System.debug('sObjs=='+sobjs.size());
        System.debug('sObjs=='+sobjs);
        
        ListCommonDataForOrg__c cd=ListCommonDataForOrg__c.getInstance('EmployeeIncrement');
        System.debug('cd=='+cd);
    }

}