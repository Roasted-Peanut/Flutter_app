
import 'package:fl_app/controllers/unAuthentication/un_auth_binding.dart';
import 'package:fl_app/routes/route_name.dart';
import 'package:fl_app/views/unAuthentication/un_auth_page.dart';
import 'package:fl_app/views/unAuthentication/splash_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  // ignore: constant_identifier_names
  static const INITIAL = '/splash';

  static final routes = [
    GetPage(
      name: RouteName.splash, 
      page: () => const SplashPage(),
    ),
    GetPage(
        name: RouteName.authen,
        page: () => const UnAuthenPage(),
        binding: UnAuthBinding()),
    // GetPage(
    //   name: '/home', 
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: '/product/:id', 
    //   page: () => ProductPage(),
    //   binding: ProductBinding(),
    // )
  ];
}
