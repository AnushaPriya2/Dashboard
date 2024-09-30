public class HierarchySetting {
    
    public void getHierarchyData(){
        
        HierarchyCustomSetting__c value =HierarchyCustomSetting__c.getInstance();//current logged in user
            System.debug('value=='+value);
        
        HierarchyCustomSetting__c uservalue =HierarchyCustomSetting__c.getInstance('005Dh000007TksaIAC');
            System.debug('uservalue=='+uservalue);
        
        HierarchyCustomSetting__c owd =HierarchyCustomSetting__c.getOrgDefaults();
            System.debug('owd=='+owd);
    }

}