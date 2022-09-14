@isTest
public class AccBanking {
	
    @isTest
    public static void testAcc(){
        Account acc = new Account(Name = 'Bunty', Industry='Banking');
        acc.Phone = '666666';
        insert acc;
        
        Account ac = [select Id, Name, Industry, Phone from Account where Id=: acc.Id];
        system.assertEquals('666666', ac.Phone);
    }
}