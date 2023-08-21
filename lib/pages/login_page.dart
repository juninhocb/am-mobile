import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(104, 108, 120, 1),
      body: SingleChildScrollView(child: bodyConstructor()),
    );
  }

  Widget bodyConstructor() {
    return Container(
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.symmetric(vertical: 150, horizontal: 75),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(40, 44, 52, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Form(child: _formBuilder()),
    );
  }

  Widget _formBuilder() {
    return Column(
      children: [
         Container(
          child: SvgPicture.asset('assets/images/logo.svg', width: 150.0, height: 150.0,),
        ),
        TextFormField(
            cursorColor: const Color.fromRGBO(104, 108, 120, 1),
            decoration:  const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color.fromRGBO(104, 108, 120, 1),
                  )),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Color.fromRGBO(104, 108, 120, 1),
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold
                )),
            style: const TextStyle(
                color: Color.fromRGBO(104, 108, 120, 1)
            ),
            keyboardType: TextInputType.name,),
        TextFormField(
          cursorColor: const Color.fromRGBO(104, 108, 120, 1),
          decoration:  const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(104, 108, 120, 1),
                  )),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                  color: Color.fromRGBO(104, 108, 120, 1),
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold
              )),
          style: const TextStyle(
              color: Color.fromRGBO(104, 108, 120, 1)
          ),
          keyboardType: TextInputType.visiblePassword,),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
            onPressed: (() => {}),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}
