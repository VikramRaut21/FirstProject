trigger ContactRelation on Contact (after insert) {
    ContactRelationHandler.RelatedToCon(Trigger.new);
}