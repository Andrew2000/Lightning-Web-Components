public with sharing class productListController {
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProductList(String productFamily) {
        return [SELECT Id, Picture_URL__c, Name, MSRP__c FROM Product__c WHERE Product_Family__c = :productFamily];
    }
}
