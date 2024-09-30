public class ApexEmployee {
    public class EmployeeWrapper {
        @InvocableVariable
        public List<Employee__c> employees;
    }

    @InvocableMethod(Label='Get Employee Details')
    public static List<EmployeeWrapper> getEmployeeDetails() {
        List<Employee__c> empList = [SELECT Id, Name, Active__c, CreatedDate from Employee__c];

        EmployeeWrapper wrapper = new EmployeeWrapper();
        wrapper.employees = empList;

        List<EmployeeWrapper> employeeList = new List<EmployeeWrapper>();
        employeeList.add(wrapper);

        return employeeList;
    }

}