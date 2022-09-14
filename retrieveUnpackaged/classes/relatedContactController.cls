public with sharing class relatedContactController {
    
    // @AuraEnabled(cacheable=true)
    // public static List<Contact> getAllContacts(){
    //     List<Contact> cons = [select id,email,phone,name, Account.Name,accountid,firstname,lastname from Contact];
    //     return cons;
    // }
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAllContacts(string actId){
        List<Contact> cons = [select id,email,phone,name, Account.Name,accountid,firstname,lastname from Contact where accountId = :actId];
        return cons;
    }
}