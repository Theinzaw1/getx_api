import 'package:flutter/material.dart';

class SignUpModel{
  int? id;
  String? token;
  bool? isLogin;
  SignUpModel({required this.id,required this.token,required this.isLogin});

  SignUpModel.fromJson(Map<String,dynamic> json){
    id=json['id'];
    token=json['token'];
    isLogin=json['isLogin'];
  }
  Map<String, dynamic> toJson(){
    final Map<String,dynamic> data= Map<String,dynamic>();
    data['id']=id;
    data['token']=token;
    data['isLogin']=isLogin;
    return data;
  }
}