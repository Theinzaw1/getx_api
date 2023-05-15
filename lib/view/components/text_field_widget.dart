import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_api/utils/utils.dart';
import 'package:getx_api/view_models/controller/sign_up_view_model.dart';
import 'package:http/http.dart';

class TextFieldWidget extends StatelessWidget {
  final String tfTitle;

   TextFieldWidget({super.key, required this.tfTitle});
  final signupVm=Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: tfTitle=='email'?signupVm.emailController.value:signupVm.passwordController.value,
      focusNode: tfTitle=='email'?signupVm.emailFocusNode.value:signupVm.passwordFocusNode.value,
      validator: (value){
        if(value!.isEmpty){
          tfTitle=='email'?Utils.snackBar('Email', 'Enter your email'):Utils.snackBar('Password', 'Enter your password');

        }
        

      },
      onFieldSubmitted: (value){
        if(tfTitle=='email'){
        Utils.fieldFocusChange(context, signupVm.emailFocusNode.value, signupVm.passwordFocusNode.value);

        }
      },
      decoration: InputDecoration(hintText:tfTitle=='email'? 'Type your email':'Type your passwowrd'),
    );
  }
}