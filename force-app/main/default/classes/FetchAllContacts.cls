public class FetchAllContacts {
    @InvocableMethod(Label='Get All Contacts')
    public static List<Contact> getAllContacts() {
        List<Contact> contacts = [SELECT Id, FirstName, LastName, Email FROM Contact];
        System.debug('Number of contacts fetched: ' + contacts.size());
        for (Contact contact : contacts) {
            System.debug('Contact: ' + contact);
        }
        
        return contacts;
    }
}