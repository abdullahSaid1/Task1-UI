import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import 'login.dart';

// ignore: camel_case_types
class verification extends StatelessWidget {
  const verification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'verification',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PinCodeVerification(phoneNumber: ""),
    );
  }
}

class PinCodeVerification extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerification({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PinCodeVerificationState createState() => _PinCodeVerificationState();
}

class _PinCodeVerificationState extends State<PinCodeVerification> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;
  final _globalFormKey = GlobalKey<FormState>();
  bool visibility = false;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Text(
                "verification",
                style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
              ),
              subtitle: Text(
                "please enter the OTP code sent to you by SMS",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '*',
                    blinkWhenObscuring: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(3),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: const Color.fromARGB(255, 20, 20, 20),
                    ),
                    cursorColor: Colors.black,
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        currentText = value;
                      });
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                hasError ? "*Please fill up all the cells properly" : "",
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't Get a Code"),
                TextButton(onPressed: () {}, child: const Text("Send Again"))
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (_globalFormKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                      (route) => false);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text("Verify")],
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
