public class ListComponentCntrl {
@AuraEnabled  
   public static List<Contact> loadData(){  
     List<Contact> conList = [select Id,Name from Contact order by Name desc];  
     return conList;  
   }  
}