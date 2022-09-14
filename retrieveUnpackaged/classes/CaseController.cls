public with sharing class CaseController {
    
    @AuraEnabled(cacheable=true)
    public static List<case> getAllCases(string acName){
        if(String.isNotBlank(acName)){
            string str = '%'+acName+'%';
            List<case> caseList = [select id,Account.Name,CaseNumber,IsClosed,accountId,Description from case where Account.Name like :str];
            return caseList;
        }else{
       

         List<case> caseList = [select id,Account.Name,CaseNumber,IsClosed,accountId,Description from case];
        return caseList;
        }

    }
    @AuraEnabled
    public static string closeCase(string caseId){
       string msg;
        try {
            Case cc = new Case(id=caseId);
            cc.Status='Closed';
            update cc;
            msg='Case has been Closed successfully..!!';
        } catch (Exception e) {
            msg = e.getMessage();
        }
        return msg;
    }
}