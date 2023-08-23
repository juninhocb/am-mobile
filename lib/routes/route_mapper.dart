import 'package:amount_manager_mobile/pages/home_page.dart';
import 'package:amount_manager_mobile/pages/login_page.dart';
import 'package:amount_manager_mobile/pages/navbar_selector.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteMapper {

  static const String loginPage = "/login-page";
  static const String homePage = "/home-page";
  static const String navbarSelector = "/navbar-selector";

  static String getLoginPage() => loginPage;
  static String getHomePage() => homePage;
  static String getNavbarSelector() =>  navbarSelector;

  static List<GetPage> routes = [
    GetPage(name: loginPage, page: () => LoginPage()),
    GetPage(name: homePage, page: () => HomePage()),
    GetPage(name: navbarSelector, page: () => NavbarSelector())
  ];

}