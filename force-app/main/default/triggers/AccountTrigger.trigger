trigger AccountTrigger on Account (before insert,before update, after insert) {
    for(Account acc: Trigger.New){
        System.debug(acc.Name);
        acc.Name += ' Test123';
        if(acc.Name.contains('Test123')){
        	acc.AccountNumber += 1;
        }
        System.debug(acc.AccountNumber);
    }
}
