import 'package:shared_preferences/shared_preferences.dart';
import '../../../models/authenthicating/sign_up_model.dart';

class UserPreference{
  Future<bool> saveUser(SignUpModel responseModel)async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setInt('id', responseModel.id!);
    sharedPreferences.setString('token', responseModel.token.toString());
    sharedPreferences.setBool('isLogin', responseModel.isLogin!);
    return true;
  }
  Future<SignUpModel> getUser() async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    String? token=sharedPreferences.getString('token');
    bool? isLogin=sharedPreferences.getBool('isLogin');
    int? id=sharedPreferences.getInt('id');
    return SignUpModel(id: id, token: token, isLogin: isLogin);
  }
}