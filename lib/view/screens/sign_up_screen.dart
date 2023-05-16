import 'package:flutter/material.dart';
import '../components/button_widget.dart';
import '../components/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(tfTitle: 'email'),
            TextFieldWidget(tfTitle: 'password'),
            ButtonWidget(formKey: _formKey)
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: TextFormField(
          //     decoration:const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          //   ),
          // ),
          // Padding(padding:const EdgeInsets.all(10.0),
          // child: TextFormField(
          //   decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          // ),
          // ),
      
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: ElevatedButton(onPressed: (){}, child:const Text('Sign Up')),
          // )
        ],),
      ),
    );
  }
}