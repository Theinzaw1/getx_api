import 'package:get/get.dart';
import 'package:tz_getx_api/res/routes/routs_name.dart';
import '../../view/screens/home_scrren.dart';
import '../../view/screens/sign_up_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteNmae.signUpScreen,
          page: () => const SignUpScreen(),
          transitionDuration:const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
          ),
        GetPage(
          name: RouteNmae.homeScreen,
          page: () =>const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
          )
      ];
}
