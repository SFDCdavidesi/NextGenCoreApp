@isTest
global class  AnimalLocatorTest {
@isTest static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    System.assert(String.isNotBlank( AnimalLocator.getAnimalNameById(1)));
    System.debug(AnimalLocator.getAnimalNameById(-1));
    System.assert('Error'== AnimalLocator.getAnimalNameById(-1));
}
   
}