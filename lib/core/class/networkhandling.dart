
import 'package:http/http.dart' as http;

class NetworkHandler{

  static Future<http.Response?> getApiCall({String? url, Map<String,String>? headers})async{

   
      final response = await http.get(Uri.parse(url!),headers: headers!);


      return response;
    
    
}


}