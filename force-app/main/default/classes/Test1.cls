public class Test1 {
    public static void insertAccount(){
        List<Account> accList=new List<Account>();
        for (Integer i = 1; i <= 2; i++) {
            Account acc = new Account(
                Name = 'Ammu' + i,
                Phone = '11111'
            );
            accList.add(acc);
        }
        insert accList;
    }
}