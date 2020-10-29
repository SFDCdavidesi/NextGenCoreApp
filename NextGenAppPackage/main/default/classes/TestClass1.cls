public class TestClass1 {
    
    public static void cacheTest1(){
        // Get partition
Cache.SessionPartition sessionPart = Cache.Session.getPartition('local.MyApplication');

// Add cache value to the partition
sessionPart.put('FavoriteCurrency', 'JPY');

// Retrieve cache value from the partition
String cachedRate = (String)sessionPart.get('FavoriteCurrency');
        System.debug(cachedRate);
        
    }

}