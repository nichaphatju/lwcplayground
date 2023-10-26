public class BusScheduleCache {
	private Cache.OrgPartition part;
    
    public BusScheduleCache(){
        part = Cache.Org.getPartition('local.BusSchedule');
    }
    
    public void putSchedule(String busLine, Time[] schedule){
        part.put(busLine, schedule);
    }
    
    public Time[] getSchedule(String busLine){
        if(part.get(busLine) == null){
            Time[] t = new Time[]{};
            t.add(Time.newInstance(8,0,0,0));
            t.add(Time.newInstance(17,0,0,0));
            return t;
        }else{
            return (Time[])part.get(busLine);
        }
    }
}