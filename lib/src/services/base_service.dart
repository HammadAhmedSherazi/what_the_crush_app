abstract class BaseApiServices {
  Future<dynamic> getApiResponse(String url);

  Future<dynamic> postApiResponse(String url, dynamic data);

  Future<dynamic> patchApiResponse(String url, dynamic data);

}