import 'package:elmaton/screens/auth/auth_layout.dart';
import 'package:elmaton/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

List<GetPage> routes = [
  ///
  /// Splash Screen
  ///
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
    transition: Transition.noTransition,
  ),

  /// -------------------------------------------------------------
  GetPage(
    name: '/auth-layout',
    page: () => const AuthLayout(),
    transition: Transition.fadeIn,
  ),

  /// Popular Food Details Screen
  // GetPage(
  //   name: '/popular-food',
  //   page: () {
  //     var index = Get.parameters['pageId'];
  //     return PopularFoodDetails(pageId: int.parse(index!));
  //   },
  //   transition: Transition.fadeIn,
  // ),
];
