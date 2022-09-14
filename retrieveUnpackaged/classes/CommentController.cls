public with sharing class CommentController {
    
    @AuraEnabled
    public static string addCaseComment(string cid,string comm){
        CaseComment cc = new CaseComment();
        cc.ParentId = cid;
        cc.commentBody = comm;
        insert cc;
        return 'success';
    }
}