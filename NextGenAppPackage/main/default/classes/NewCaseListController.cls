public with sharing class NewCaseListController {
public case[]getNewCases(){

return [select id,casenumber from case];
}
}