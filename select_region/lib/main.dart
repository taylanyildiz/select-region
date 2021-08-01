import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/bindings/home_binding.dart';
import '/routers/pages.dart';
import '/routers/routers.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routers.HOME,
      initialBinding: HomeBinding(),
      getPages: Pages.pages,
    );
  }
}
