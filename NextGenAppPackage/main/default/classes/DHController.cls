public class DHController {
    public List<String>countries{get;set;}
    public List<String>states{get;set;}
    public List<String>cities{get;set;}
    
    public PageReference submitQuery() {
        doCallout();
        return null;
        
    }
    public String doCallout(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String endpoint='http://webservice.fabricarcervezaencasa.es/content.php?';
        if (!String.isBlank(city)){
            endpoint+='&ci='+city;
        }
        if (!String.isBlank(country)){
            endpoint+='&co='+country;
        }
        if (!String.isBlank(state)){
            endpoint+='&st='+state;
        }
        String type=(String.isNotBlank(country) & String.isBlank(state) & String.isBlank(city)?'country':(String.isNotBlank(state) && String.isNotBlank(country) && String.isBlank(city)?'state':'city'));
        
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserialize the JSON string into collections of primitive data types.
            //   Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            //            List<String>names = (List<String>)json.deserializeUntyped(response.getBody());
            System.debug('Received the following animals:' + response);
            System.debug('Received the following animals:' + response.getBody());
            if (type=='country'){
           countries= (List<String>)System.JSON.deserialize(response.getBody(), List<String>.class);     
            }else if (type=='state'){
                states= (List<String>)System.JSON.deserialize(response.getBody(), List<String>.class);     
            }else{
                cities= (List<String>)System.JSON.deserialize(response.getBody(), List<String>.class);     
            }
           
            
        }
        return 'OK';
    }
    
    
    public String city { get; set; }
    
    public String state { get; set; }
    
    public String country { get; set; }
}