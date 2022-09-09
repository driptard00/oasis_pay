import 'package:http/http.dart' as http;

class ApiServices{

  static Future<http.Response?> getUserDetails(String id, String url) async{
    String fullUrl = "$url$id";
    print("Full Url ::::::::::: $fullUrl");

    try {
      var _response = await http.get(Uri.parse(fullUrl));
      return _response;
    } catch (e) {
      print(e);
    }
    return null;
  }

}