import 'package:amount_manager_mobile/routes/route_mapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Account Manager",
    getPages: RouteMapper.routes,
    initialRoute: RouteMapper.loginPage,
  ));
}

