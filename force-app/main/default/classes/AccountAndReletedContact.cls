public class AccountAndReletedContact {
    @InvocableMethod(Label='Get All Accounts and related Contacts')
    public static List<AccountWithContacts> getAccountsAndContacts() {
        List<AccountWithContacts> results = new List<AccountWithContacts>();
        List<Account> accounts = [SELECT Id, Name, (SELECT Id, Name, Email FROM Contacts) FROM Account];

        // Log the number of accounts retrieved
        System.debug('Number of Accounts retrieved: ' + accounts.size());

        for (Account acc : accounts) {
            AccountWithContacts accountData = new AccountWithContacts();
            accountData.accountId = acc.Id;
            accountData.accountName = acc.Name;
            accountData.contacts = new List<ContactDetails>();

            // Log account details
            System.debug('Processing Account: ' + acc.Id + ', Name: ' + acc.Name);

            for (Contact con : acc.Contacts) {
                ContactDetails contactData = new ContactDetails();
                contactData.contactId = con.Id;
                contactData.contactName = con.Name;
                contactData.contactEmail = con.Email;
                accountData.contacts.add(contactData);

                // Log contact details
                System.debug('  Contact - Id: ' + con.Id + ', Name: ' + con.Name + ', Email: ' + con.Email);
            }

            results.add(accountData);
        }

        // Log the final results
        System.debug('Final Results: ' + results);

        return results;
    }

    public class AccountWithContacts {
        @InvocableVariable
        public String accountId;
        @InvocableVariable
        public String accountName;
        @InvocableVariable
        public List<ContactDetails> contacts;
    }

    public class ContactDetails {
        @InvocableVariable
        public String contactId;
        @InvocableVariable
        public String contactName;
        @InvocableVariable
        public String contactEmail;
    }

}