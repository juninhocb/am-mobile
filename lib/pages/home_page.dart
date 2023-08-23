import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromRGBO(104, 108, 120, 1),
        body: _buildHomePage()
    );
  }
  
  Widget _buildHomePage(){
    return Container(
      child: Text("Home page with scaffold"),
    );
  } 
}
