public with sharing class accountController {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts(){
        
        List<Account> accs = [select id,name,website,industry,rating from Account];
        return accs;
    }
}