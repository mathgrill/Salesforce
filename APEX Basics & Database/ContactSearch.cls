// carlo 2023-03-07
// https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_soql
public class ContactSearch {
    public static List<Contact> searchForContacts(String v_name, String v_zip){
        String p_name = '%' + v_name + '%';
        String p_zip = '%' + v_zip + '%';
        String query = 'SELECT Id, Name FROM Contact where '
            + 'LastName LIKE :p_name and MailingPostalCode LIKE :p_zip';
        // List<Contact> cts = 
        Contact[] cts = Database.query(query);
        return cts;
    }
}

// use
// List<Contact> contacts = ContactSearch.searchForContacts('Young', '66045');
// System.debug(contacts);