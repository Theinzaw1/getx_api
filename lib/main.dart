import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'res/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx With Api',
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
