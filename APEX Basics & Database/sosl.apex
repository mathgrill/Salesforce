// https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_sosl

List<List<SObject>> searchList = [FIND 'SFDC' IN ALL FIELDS RETURNING Account(Name), Contact(FirstName,LastName)];
System.debug('searchList: ' + searchList);


// Add account and related contact
Account acct = new Account(
    Name='SFDC Computing',
    Phone='(415)555-1212',
    NumberOfEmployees=50,
    BillingCity='San Francisco');
insert acct;
// Once the account is inserted, the sObject will be 
// populated with an ID.
// Get this ID.
ID acctID = acct.ID;
// Add a contact to this account.
Contact con = new Contact(
    FirstName='Carol',
    LastName='Ruiz',
    Phone='(415)555-1212',
    Department='Wingo',
    AccountId=acctID);
insert con;
// Add account with no contact
Account acct2 = new Account(
    Name='The SFDC Query Man',
    Phone='(310)555-1213',
    NumberOfEmployees=50,
    BillingCity='Los Angeles',
    Description='Expert in wing technologies.');
insert acct2;

//run in query editor
FIND {Wingo} IN ALL FIELDS RETURNING Account(Name), Contact(FirstName,LastName,Department)

The search query in the Query Editor and the API must be enclosed within curly brackets ({Wingo}). In contrast, in Apex the search query is enclosed within single quotes ('Wingo').

String soslFindClause = 'Wingo OR SFDC';
List<List<sObject>> searchList = [FIND :soslFindClause IN ALL FIELDS
                    RETURNING Account(Name),Contact(FirstName,LastName,Department)];
Account[] searchAccounts = (Account[])searchList[0];
Contact[] searchContacts = (Contact[])searchList[1];
System.debug('Found the following accounts.');
for (Account a : searchAccounts) {
    System.debug(a.Name);
}
System.debug('Found the following contacts.');
for (Contact c : searchContacts) {
    System.debug(c.LastName + ', ' + c.FirstName);
}

// challenge
FIND {Smith} IN ALL FIELDS RETURNING Contact(FirstName,LastName), Leads(FirstName,LastName)

// the class
public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String v_name){
        return [FIND :v_name IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
    }
}