trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> tasksToCreate = new List<Task>();
    for(Order_Event__e orderEvt: Trigger.New){
        if(orderEvt.Has_Shipped__c){
            Task t = new Task();
            t.Priority = 'Medium';
            t.Subject = 'Follow up on shipped order 105';
            t.OwnerId = orderEvt.CreatedById;
            tasksToCreate.add(t);
        }
    }
    insert tasksToCreate;
}