import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          Image.network(
            "https://www.shutterstock.com/image-vector/icon-concept-about-wrong-password-260nw-1909183087.jpg",
            height: 150,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
