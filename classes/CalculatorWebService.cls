public class CalculatorWebService {
    
    public class subtractResponse_element {
        public Double Result;
        private String[] Result_type_info = new String[]{'Result','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'Result'};
    }
    
    public class divide_element {
        public Double numerator;
        public Double denominator;
        private String[] numerator_type_info = new String[]{'numerator','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] denominator_type_info = new String[]{'denominator','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'numerator','denominator'};
    }
    
    public class multiply_element {
        public Double x;
        public Double y;
        private String[] x_type_info = new String[]{'x','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] y_type_info = new String[]{'y','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'x','y'};
    }
    
    public class divideResponse_element {
        public Double Result;
        private String[] Result_type_info = new String[]{'Result','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'Result'};
    }
    
    public class subtract_element {
        public Double x;
        public Double y;
        private String[] x_type_info = new String[]{'x','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] y_type_info = new String[]{'y','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'x','y'};
    }
    
    public class add_element {
        public Double x;
        public Double y;
        private String[] x_type_info = new String[]{'x','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] y_type_info = new String[]{'y','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'x','y'};
    }
    
    public class ICalculator {
        public String endpoint_x = 'http://ws1.parasoft.com/glue/calculator';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/', 'CalculatorWebService'};
        
        public Double multiply(Double x,Double y) {
            CalculatorWebService.multiply_element request_x = new CalculatorWebService.multiply_element();
            CalculatorWebService.multiplyResponse_element response_x;
            request_x.x = x;
            request_x.y = y;
            Map<String, CalculatorWebService.multiplyResponse_element> response_map_x = new Map<String, CalculatorWebService.multiplyResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'multiply',
              'http://www.parasoft.com/wsdl/calculator/',
              'multiply',
              'http://www.parasoft.com/wsdl/calculator/',
              'multiplyResponse',
              'CalculatorWebService.multiplyResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Result;
        }
        
        public Double divide(Double numerator,Double denominator) {
            CalculatorWebService.divide_element request_x = new CalculatorWebService.divide_element();
            CalculatorWebService.divideResponse_element response_x;
            request_x.numerator = numerator;
            request_x.denominator = denominator;
            Map<String, CalculatorWebService.divideResponse_element> response_map_x = new Map<String, CalculatorWebService.divideResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'divide',
              'http://www.parasoft.com/wsdl/calculator/',
              'divide',
              'http://www.parasoft.com/wsdl/calculator/',
              'divideResponse',
              'CalculatorWebService.divideResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Result;
        }
        
        public Double add(Double x,Double y) {
            CalculatorWebService.add_element request_x = new CalculatorWebService.add_element();
            CalculatorWebService.addResponse_element response_x;
            request_x.x = x;
            request_x.y = y;
            Map<String, CalculatorWebService.addResponse_element> response_map_x = new Map<String, CalculatorWebService.addResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'add',
              'http://www.parasoft.com/wsdl/calculator/',
              'add',
              'http://www.parasoft.com/wsdl/calculator/',
              'addResponse',
              'CalculatorWebService.addResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Result;
        }
        
        public Double subtract(Double x,Double y) {
            CalculatorWebService.subtract_element request_x = new CalculatorWebService.subtract_element();
            CalculatorWebService.subtractResponse_element response_x;
            request_x.x = x;
            request_x.y = y;
            Map<String, CalculatorWebService.subtractResponse_element> response_map_x = new Map<String, CalculatorWebService.subtractResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'subtract',
              'http://www.parasoft.com/wsdl/calculator/',
              'subtract',
              'http://www.parasoft.com/wsdl/calculator/',
              'subtractResponse',
              'CalculatorWebService.subtractResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Result;
        }
    }
    
    public class addResponse_element {
        public Double Result;
        private String[] Result_type_info = new String[]{'Result','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'Result'};
    }
    
    public class multiplyResponse_element {
        public Double Result;
        private String[] Result_type_info = new String[]{'Result','http://www.parasoft.com/wsdl/calculator/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.parasoft.com/wsdl/calculator/','true','false'};
        private String[] field_order_type_info = new String[]{'Result'};
    }
}