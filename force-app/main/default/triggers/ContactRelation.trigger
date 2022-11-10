trigger ContactRelation on Contact (after insert) {
    ContactRelationHandler con = new ContactRelationHandler();
    con.RelatedToCon(Trigger.new);
}