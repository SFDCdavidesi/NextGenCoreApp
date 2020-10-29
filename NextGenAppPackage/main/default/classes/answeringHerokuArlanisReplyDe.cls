//Generated by wsdl2apex

public class answeringHerokuArlanisReplyDe {
    public class about {
        private String[] apex_schema_type_info = new String[]{'http://answering.heroku.arlanis.reply.de/','false','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class checkResponse {
        public Boolean return_x;
        private String[] return_x_type_info = new String[]{'return','http://answering.heroku.arlanis.reply.de/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://answering.heroku.arlanis.reply.de/','false','false'};
        private String[] field_order_type_info = new String[]{'return_x'};
    }
    public class aboutResponse {
        public String return_x;
        private String[] return_x_type_info = new String[]{'return','http://answering.heroku.arlanis.reply.de/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://answering.heroku.arlanis.reply.de/','false','false'};
        private String[] field_order_type_info = new String[]{'return_x'};
    }
    public class check {
        public String arg0;
        public String arg1;
        private String[] arg0_type_info = new String[]{'arg0','http://answering.heroku.arlanis.reply.de/',null,'0','1','false'};
        private String[] arg1_type_info = new String[]{'arg1','http://answering.heroku.arlanis.reply.de/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://answering.heroku.arlanis.reply.de/','false','false'};
        private String[] field_order_type_info = new String[]{'arg0','arg1'};
    }
    public class AnsweringServiceImplPort {
        public String endpoint_x = 'http://serene-sierra-59077.herokuapp.com:80/AnsweringService';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://answering.heroku.arlanis.reply.de/', 'answeringHerokuArlanisReplyDe'};
        public Boolean check(String arg0,String arg1) {
            answeringHerokuArlanisReplyDe.check request_x = new answeringHerokuArlanisReplyDe.check();
            request_x.arg0 = arg0;
            request_x.arg1 = arg1;
            answeringHerokuArlanisReplyDe.checkResponse response_x;
            Map<String, answeringHerokuArlanisReplyDe.checkResponse> response_map_x = new Map<String, answeringHerokuArlanisReplyDe.checkResponse>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://answering.heroku.arlanis.reply.de/',
              'check',
              'http://answering.heroku.arlanis.reply.de/',
              'checkResponse',
              'answeringHerokuArlanisReplyDe.checkResponse'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.return_x;
        }
        public String about() {
            answeringHerokuArlanisReplyDe.about request_x = new answeringHerokuArlanisReplyDe.about();
            answeringHerokuArlanisReplyDe.aboutResponse response_x;
            Map<String, answeringHerokuArlanisReplyDe.aboutResponse> response_map_x = new Map<String, answeringHerokuArlanisReplyDe.aboutResponse>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://answering.heroku.arlanis.reply.de/',
              'about',
              'http://answering.heroku.arlanis.reply.de/',
              'aboutResponse',
              'answeringHerokuArlanisReplyDe.aboutResponse'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.return_x;
        }
    }
}