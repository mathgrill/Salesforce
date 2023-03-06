/**
 * The StringArrayTest class provides a static method for generating an array of strings.
 */
public class StringArrayTest {

    /**
     * Generates an array of strings of the form "Test X", where X is a number from 0 to n-1.
     *
     * @param n the size of the array to generate
     * @return a list of strings of size n, where each element is of the form "Test X"
     */
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