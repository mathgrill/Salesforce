public class PropertyUtility {
    public static void newListedProperties() {
		List<Property__c> newPropList = [SELECT Name, Broker__r.Email__c, Days_On_Market__c FROM Property__c where Days_On_Market__c < 31];
            for (Property__c row : newPropList){
            String propEmail = row.Name + ':' + row.Broker__r.Email__c;
            //row.Name + row.Date_Listed__c + row.Broker__r.Email__c 
            //+ (system.today()).daysBetween(row.Date_Listed__c);
            system.debug(propEmail);
		}        
    }
}

// https://trailhead.salesforce.com/content/learn/modules/soql-for-admins
