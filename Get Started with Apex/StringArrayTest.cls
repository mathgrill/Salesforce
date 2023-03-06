public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> data = new List<String>();
        for(Integer i=0; i<n; i++) {
            data.add('Test ' + i);
        }
        return data;
    }
}

// https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_intro

// test
/*
List<String> stringArray = StringArrayTest.generateStringArray(5);
for(String str : stringArray) {
    System.debug(str);
}
*/