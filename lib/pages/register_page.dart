import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/custom_button.dart';
import '../components/my_textfield.dart';
import '../services/auth/auth_service.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key, required this.onTap});

  //email and pw text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  //register method
  void register(BuildContext context) {
    // get auth service
    final _auth = AuthService();

    // passwords match -> create user
    if (_pwController.text == _confirmPwController.text) {
      try {
        _auth.signUpWithEmailAndPassword(
            _emailController.text, _pwController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    }

    // passwords don't match -> show error
    else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Passwords do not match!"),
              ));
    }
  }

  //tap to go to login page
  final void Function()? onTap;

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
              //welcome message
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
              //password textfield
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                controller: _pwController,
              ),

              const SizedBox(height: 20),
              //confirm password textfield
              MyTextField(
                hintText: 'Confirm Password',
                obscureText: true,
                controller: _confirmPwController,
              ),

              const SizedBox(height: 20),
              //register button
              CustomButton(
                text: "Register",
                onPressed: () => register(context),
              ),
              const SizedBox(height: 20),
              //already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login here",
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
