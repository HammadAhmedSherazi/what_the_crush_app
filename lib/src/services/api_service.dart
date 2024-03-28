import 'network_service.dart';

class ApiServices{

  static const String baseUrl =  "https://mymedjournalv2.blownclouds.com/api";

  static Map<String , String> header = {
    'Content-Type': 'application/json',
    'Accept-Type' :  'application/json'
  };

  //Signup Api
  static Future<bool> signupUserApi(Map<String, dynamic> data) async {

    var response = await NetworkApiService.singleton.postApiResponse(baseUrl, data);

    if(response != null){
      return true;
    }
    else{
      return false;
    }

  }

  
}