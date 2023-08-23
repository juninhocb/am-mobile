import 'package:amount_manager_mobile/pages/bank_page.dart';
import 'package:amount_manager_mobile/pages/exit_page.dart';
import 'package:amount_manager_mobile/pages/home_page.dart';
import 'package:amount_manager_mobile/pages/invoice_page.dart';
import 'package:amount_manager_mobile/pages/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../constants/app_colors.dart';

class NavbarSelector extends StatefulWidget {
  const NavbarSelector({Key? key}) : super(key: key);

  @override
  State<NavbarSelector> createState() => _NavbarSelectorState();
}

class _NavbarSelectorState extends State<NavbarSelector> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
    context,
    controller: _controller,
    screens: _buildScreens(),
    items: _navBarsItems(),
    confineInSafeArea: true,
    backgroundColor: AppColors.secondaryColor, // Default is Colors.white.
    handleAndroidBackButtonPress: true, // Default is true.
    resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
    stateManagement: true, // Default is true.
    hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
    decoration: NavBarDecoration(
    borderRadius: BorderRadius.circular(10.0),
    colorBehindNavBar: AppColors.secondaryColor,
    ),
    popAllScreensOnTapOfSelectedTab: true,
    popActionScreens: PopActionScreensType.all,
    itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
    duration: Duration(milliseconds: 200),
    curve: Curves.ease,
    ),
    screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
    animateTabTransition: true,
    curve: Curves.ease,
    duration: Duration(milliseconds: 200),
    ),
    navBarStyle: NavBarStyle.style15,);
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      BankPage(),
      InvoicePage(),
      ProductPage(),
      ExitPage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home, color: AppColors.greenColor,),
        title: ("Home"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.mainColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.building_2_fill, color: AppColors.greenColor),
        title: ("Bank"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.mainColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.money_dollar_circle, color: AppColors.greenColor),
        title: ("Invoice"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.mainColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.cube_box, color: AppColors.greenColor),
        title: ("Product"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.mainColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.power, color: AppColors.greenColor),
        title: ("Exit"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: AppColors.mainColor,
      ),
    ];
  }
}
