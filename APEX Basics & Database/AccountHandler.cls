// carlo b 2023-03-07
public class AccountHandler {
    public static Account insertNewAccount(String vname){
        try {
             Account acct = new Account();
             acct.Name = vname;       
            //Account acct = new Account(Name=name);
            insert acct;
            // Once the account is inserted, the sObject will be 
            // populated with an ID.
            // Get this ID.
            ID acctID = acct.ID;
            return acct;
        } catch (DmlException e) {
            // This causes an exception because 
            // the required Name field is not provided.
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }
    }
}