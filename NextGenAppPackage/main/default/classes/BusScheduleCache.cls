public class BusScheduleCache {
private Cache.OrgPartition part;

    public BusScheduleCache(){
        
        part = Cache.Org.getPartition('local.BusSchedule');

    }
    public void putSchedule(String busline, Time[]schedule){
        part.put(busLine,schedule);
        
        

        
    }
    public Time[] getSchedule(String busLine){
        Time[] cachedRate = (Time[])part.get(busLine);
        if (cachedRate==null){
            cachedRate = new Time[]{Time.newInstance(8, 0, 0, 0),Time.newInstance(17, 0, 0, 0)};
        }
        return cachedRate;

    }
}