public class CustomSetting {
    public void getListData() {
        Map<String, ListCommonDataForOrg__c> cs = ListCommonDataForOrg__c.getAll();
        System.debug('cs=='+cs);
        ListCommonDataForOrg__c cd=ListCommonDataForOrg__c.getValues('EmployeeIncrement');
        System.debug('cd=='+cd);

    }
}