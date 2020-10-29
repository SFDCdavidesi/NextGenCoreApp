@isTest
global class ParkLocatorTest {
    public static testmethod void test1(){
          Test.setMock(WebServiceMock.class, new ParkServiceMock());
       System.assert(ParkLocator.country('Germany')!=null);
    }

}