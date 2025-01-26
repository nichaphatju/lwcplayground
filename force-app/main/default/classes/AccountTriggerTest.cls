@isTest
public class AccountTriggerTest {
  @isTest static void testCreateAccount(){
    Account acc = new Account();
		acc.Name = 'Test Account';
    insert acc;
  }
}
