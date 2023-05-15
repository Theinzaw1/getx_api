import 'package:getx_api/data/network/network_api_service.dart';
import 'package:getx_api/res/app_url/app_url.dart';

class SignUpRepository {
  final _apiService = NetworkApiService();
  Future<dynamic> signUpApi(var data) async {
    dynamic response = await _apiService.postApi(data, AppUrl.signUpUrl);
    return response;
  }
}
