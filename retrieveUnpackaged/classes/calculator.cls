public class calculator {
	@AuraEnabled
    public static integer doSum(integer i,integer j)
    {
        return i+j;
    }
}