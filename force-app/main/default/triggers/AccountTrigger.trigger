trigger AccountTrigger on Account (before insert,before update, after insert) {
    for(Account acc: Trigger.New){
        System.debug(acc.Name);
        acc.Name = 'abc';
        System.debug(acc.AccountNumber);
    }
}
