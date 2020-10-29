global class DailyLeadProcessor implements Schedulable{
    global void execute (SchedulableContext ctx){
        List<Lead>leads = new List<Lead>();
        for (Lead l:[select id,leadsource from lead where leadsource=null]){
            l.leadSource='Dreamforce';
            leads.add(l);
        }
        update leads;
    }
}