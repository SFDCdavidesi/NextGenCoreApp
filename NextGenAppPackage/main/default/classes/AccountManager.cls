@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String tok1='Accounts/';
        String tok2='/contacts';
        String accountId =request.requestURI.substring(request.requestURI.lastIndexof(tok1)+ tok1.length(),request.requestURI.lastIndexOf(tok2));
        return [select id,name,(select id,name from Contacts) from Account where id=:accountId];
        
    }
    
}