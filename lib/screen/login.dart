import 'package:flutter/material.dart';
import 'package:task/NavigationBar/bottom_navbar.dart';
import 'package:task/screen/signup.dart';

import '../custom/text.dart';
import '../custom/val.dart';
import 'forgetpassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _globalFormKey = GlobalKey<FormState>();
  bool visibility = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _globalFormKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const ListTile(
                title: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
                ),
                subtitle: Text(
                  "Log In To Your  Account",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Image.network(
                "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomizedTextFormField(
                controller: emailController,
                validator: emailValidated,
                labelText: "Email",
                prefixIcon: const Icon(Icons.email_outlined),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomizedTextFormField(
                controller: passwordController,
                validator: passwordValidated,
                labelText: "Password",
                obscureText: !visibility,
                suffixIcon: InkWell(
                  onTap: () => setState(() {
                    visibility = !visibility;
                  }),
                  child: visibility
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_globalFormKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBar()),
                          (route) => false);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              Row(
                children: [
                  Checkbox(
                      value: true,
                      onChanged: (v) {
                        visibility = !visibility;
                      }),
                  const Text("remember me"),
                  const Spacer(
                    flex: 1,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forget Password ?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 34, 51),
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.facebook),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Account? "),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      child: const Text(
                        'SignUP',
                        style: TextStyle(
                          color: Color.fromARGB(255, 1, 34, 51),
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
