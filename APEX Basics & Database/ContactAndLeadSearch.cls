public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String v_name){
        return [FIND :v_name IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
    }
}