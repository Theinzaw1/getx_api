import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../models/authenthicating/sign_up_model.dart';
import '../../res/routes/routs_name.dart';
import '../../respository/sign_up_repository.dart';
import '../../utils/utils.dart';
import 'user_preference/user_preference.dart';

class SignUpViewModel extends GetxController {
  final api = SignUpRepository();
  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  void signUpApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };

    api.signUpApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'Note: Only defined users succeed registration') {
        Utils.snackBar('Sign Up', value['error']);
      } else {
        SignUpModel signModel =
            SignUpModel(id: value['id'], token: value['token'], isLogin: true);

        userPreference.saveUser(signModel).then((value) {
          Get.delete<SignUpViewModel>();
          Get.toNamed(RouteNmae.homeScreen)!.then((value) {});
          Utils.snackBar('Signup', 'Signup Successfully');
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
