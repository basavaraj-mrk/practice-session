public with sharing class NewContactController {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAllContact(string accountName){
        if(String.isNotBlank(accountName)){
            string str1 = '%'+accountName+'%';
        List<Contact> contactList = [select id,Name,Phone,Email,Fax,Birthdate,LeadSource,Account.Name,accountId 
        from Contact where Account.Name like :str1];
            return contactList;
        }else{
            List<Contact> contactList = [select id,Name,Phone,Email,Fax,Birthdate,LeadSource,Account.Name,accountId 
            from Contact];
        return contactList;
        }

    }

}