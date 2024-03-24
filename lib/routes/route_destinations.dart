import 'package:e_learning_app/views/home/search_page.dart';
import 'package:e_learning_app/views/settings/settings_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:e_learning_app/routes/route_names.dart';
import 'package:e_learning_app/views/auth/login/login.dart';
import 'package:e_learning_app/views/auth/register/register.dart';
import 'package:e_learning_app/views/home/home_screen.dart';
import 'package:e_learning_app/views/splash/splash_screen.dart';

import '../views/home/catagories_page.dart';
import '../views/home/popularcoures.dart';
import '../views/recruiter/home/recruiter_create.dart';

class RouteDestinations {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.splash,
      page: () =>  SplashScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.register,
      page: () =>  RegisterScreen(),
    ),
    GetPage(
      name: RouteNames.settingScreen,
      page: () =>  Test(),
    ),
    GetPage(
      name: RouteNames.recruiterCreateScreen,
      page: () =>  RecruiterOrganizationScreen(),
    ),
    GetPage(
      name: RouteNames.categoriesPage,
      page: () => CategoriesPage(),
    ),
    GetPage(
      name: RouteNames.popularCourses,
      page: () =>  PopularCourses(),
    ),
    GetPage(
      name: RouteNames.searchPage,
      page: () => SearchPage(),
    ),
  ];
}
