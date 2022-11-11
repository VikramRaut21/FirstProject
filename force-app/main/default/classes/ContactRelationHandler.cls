public with sharing class ContactRelationHandler {
    public static void RelatedToCon(List<Contact> newList) {
        List<Contact_Relationship__c> crlist = new List<Contact_Relationship__c>();
        for(Contact c : newList){
            if(c.Contact_Relationship__c == True){
                Contact_Relationship__c cr = new Contact_Relationship__c();
                cr.Name = c.LastName;
                cr.Contacts__c = c.id;
                crlist.add(cr);
            }
        }
        insert crlist; 
    }
}
