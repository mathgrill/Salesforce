public class MyController {
  public List<Contact> contacts { get; set; }
  
  public MyController() {
    contacts = [SELECT Id, Name, Email, MobilePhone FROM Contact];
  }

}

/*
public with sharing class MyController {
   public String myApexCode {
      get {
         // Add your Apex code here
         return 'This is my Apex code';
      }
   }
}
*/