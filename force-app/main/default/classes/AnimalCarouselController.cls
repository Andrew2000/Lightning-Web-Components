public with sharing class AnimalCarouselController {
    @AuraEnabled(cacheable=true)
    public static List<Park_Sightings__c> getAnimal(String parkId) {
        return [SELECT Id, Animal__r.Id, Animal__r.Name, Animal__r.Image_of_Animal__c FROM Park_Sightings__c WHERE Park__c = :parkId];
    }
}
