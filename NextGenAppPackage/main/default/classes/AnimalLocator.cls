public class AnimalLocator {
    public static HttpResponse makeCallout(Integer num){
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+num);       
        request.setMethod('GET');
        return http.send(request);
    }
    public static String getAnimalNameById(Integer num){
        System.debug(num);
        HttpResponse response=makeCallout(num);
        if (response.getStatusCode()==200 && num>0){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String,Object>result2=(Map<String,Object>)results.get('animal');
            return (String)result2.get('name');
        }else{
            return 'Error';
        }
    }
}