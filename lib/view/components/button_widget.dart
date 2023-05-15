import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/view/components/round_button.dart';
import 'package:getx_api/view_models/controller/sign_up_view_model.dart';

class ButtonWidget extends StatelessWidget {
  final formKey;
  ButtonWidget({Key? key, required this.formKey}) : super(key: key);
  final signupVm = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
      width: 200,
        title: 'Signup',
        loading: signupVm.loading.value,
        onPress: () {
          if (formKey.currentState!.validate()) {
            signupVm.signUpApi();
          }
        }));
  }
}
