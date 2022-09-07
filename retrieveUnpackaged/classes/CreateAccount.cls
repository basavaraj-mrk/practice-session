public class CreateAccount {
	string name= 'Handi Kraft';
    public Account createAcc(){
        Account acc = new Account();
        acc.Name= name;
        return acc;
    }
}