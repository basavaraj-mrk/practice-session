@isTest
public class RatingHot {
	@isTest
    public static void testRating(){
        Account acc = new Account(Name='Burlin', Rating='Hot');
        insert acc;
        
        acc.Rating = 'Warm';
        Database.SaveResult sr = Database.update(acc,false);
        for(Database.Error err : sr.getErrors()){
            system.assertEquals('If Rating is Hot then it can not be changed', err.getMessage());
        }
    }
}