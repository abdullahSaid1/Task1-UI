import 'package:flutter/material.dart';
import 'package:task/screen/verification.dart';

import '../custom/text.dart';
import '../custom/val.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<StatefulWidget> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController phController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController rePassController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final _globalFormKey = GlobalKey<FormState>();
  bool visibility = false;
  @override
  void dispose() {
    phController.dispose();
    emailController.dispose();
    passController.dispose();
    rePassController.dispose();

    super.dispose();
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
                  "Sign Up",
                  style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
                ),
                subtitle: Text(
                  "Please Enter your information below to Sign Up",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlaKvHRf6BPijDUQJQJfi_mOQvWu_DCPUfAw&usqp=CAU",
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomizedTextFormField(
                controller: phController,
                validator: phoneValidated,
                prefixIcon: const Icon(Icons.phone),
                keyboardType: TextInputType.phone,
                autofocus: true,
                labelText: "phone number",
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
                controller: passController,
                validator: passwordValidated,
                labelText: "Password",
                obscureText: !visibility,
                maxLines: 1,
                keyboardType: TextInputType.text,
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
              CustomizedTextFormField(
                controller: rePassController,

                // ignore: non_constant_identifier_names
                validator: (Value) => Value!.compareTo(passController.text) != 0
                    ? "Confirm Password Not Match"
                    : null,
                hintText: '',
                labelText: "Re-type password",
                obscureText: !visibility,
                maxLines: 1,
                keyboardType: TextInputType.text,
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
                              builder: (context) => const verification()),
                          (route) => false);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
