import 'package:flutter/material.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const Login()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://images-platform.99static.com//3-Q1pVVslMC1TNL-jdAzHFleLbE=/0x0:1080x1080/fit-in/500x500/projects-files/54/5416/541643/f9e23dcd-5d99-4cd4-8974-31c867ccec62.gif",
            ),
          ],
        ),
      ),
    );
  }
}
