import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/custom_button.dart';
import '../components/my_textfield.dart';
import '../services/auth/auth_service.dart';

class LoginPage extends StatelessWidget {
  //email and pw text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //login method
  void login(BuildContext context) async {
    // auth service
    final AuthService _ = AuthService();

    //try login
    try {
      await AuthService().signInWithEmailAndPassword(
        _emailController.text,
        _pwController.text,
      );
    }
    //catch any errors
    catch (e) {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  //tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'assets/amal_logo1.png',
                height: 60,
              ),

              const SizedBox(height: 20),
              //welcome back message
              Text(
                "Ammal Tech Repair",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 20),
              //email textfield
              MyTextField(
                hintText: 'Email',
                obscureText: false,
                controller: _emailController,
              ),

              const SizedBox(height: 20),
              //pw textfield
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                controller: _pwController,
              ),

              const SizedBox(height: 20),
              //login button
              CustomButton(
                text: "Login",
                onPressed: () => login(context),
              ),

              const SizedBox(height: 20),

              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Register now",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
