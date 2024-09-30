public class ApexContacts {
    public class ContactWrapper {
        @InvocableVariable
        public List<Contact> contacts;
    }

    @InvocableMethod(Label='Get All Contacts')
    public static List<ContactWrapper> getAllContacts() {
        List<Contact> contactList = [SELECT Id, FirstName, LastName, Email FROM Contact];

        ContactWrapper wrapper = new ContactWrapper();
        wrapper.contacts = contactList;

        List<ContactWrapper> wrapperList = new List<ContactWrapper>();
        wrapperList.add(wrapper);

        return wrapperList;
    }
}