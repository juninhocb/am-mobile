import 'package:amount_manager_mobile/routes/route_mapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

class ExitPage extends StatelessWidget {
  const ExitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor, body: _buildHomePage());
  }

  Widget _buildHomePage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 150.0,
              height: 150.0,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            child: Text(
              "Amount Manager",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
          SizedBox(height: 15.0,),
          Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            height: 275.0,
            width: 350.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "User: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "juninhocb@hotmail.com ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Member since: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      " 15/05/2023 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "Group Id: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      " 17 - Jr's Group ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      "App version: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      " 1.0.2 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ElevatedButton(
                    onPressed: () => {
                      Get.toNamed(RouteMapper.loginPage)
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.greenColor)
                    ),
                    child: const Text("Exit", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                    ),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
