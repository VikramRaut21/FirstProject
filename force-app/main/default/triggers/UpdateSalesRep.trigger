trigger UpdateSalesRep on Account (before insert,before update) {
    Set<Id> AccId = new Set<Id>();
    for(Account acc : Trigger.new){
        AccId.add(acc.OwnerId);
    }
    Map<Id,User> usermap = new Map<Id,User>([SELECT Name FROM user WHERE Id IN:(AccId)]);
    for(Account acc : Trigger.new){
        User usr = usermap.get(acc.OwnerId);
        acc.Sales_Rep__c = usr.Name;
    }
}