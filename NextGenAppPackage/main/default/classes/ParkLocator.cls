public class ParkLocator {
    public static List<String>country(String country){
      ParkService.ParksImplPort pip = new Parkservice.ParksImplPort();
		return pip.byCountry('Germany');
    }
}