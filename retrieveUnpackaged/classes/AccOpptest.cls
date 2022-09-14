@isTest
public class AccOpptest {
	
    @isTest
    public static void testOpp(){
        List<Opportunity> oppList = new List<Opportunity>();
        Account accs = new Account(Name='Account101', Industry='Education',Rating='Hot');
        Opportunity opp = new Opportunity();
            opp.AccountId = accs.Id;
            opp.Name = 'Opportunity101';
            opp.StageName = 'Qualification';
            opp.CloseDate = system.today();
            oppList.add(opp);
        
        insert oppList;
    }
}