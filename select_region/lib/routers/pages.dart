import 'package:get/get.dart';
import '/bindings/binding.dart';
import '/routers/routers.dart';
import '/screens/screen.dart';

class Pages {
  Pages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routers.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
