import 'package:flutter/material.dart';
import 'package:owala_app/Views/auth/components/auth_button.dart';
import 'package:owala_app/Views/auth/components/auth_form_field.dart';
import 'package:owala_app/utils/consts.dart';
import 'package:owala_app/utils/validators.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              "Register",
              style: TextStyle(
                color: textColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Please create an account to continue",
              style: TextStyle(fontSize: 16, color: textColor),
            ),
            SizedBox(height: 30),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthFormField(
                    controller: _nameController,
                    label: "full name",
                    hintText: "Enter your full name",
                    validator: Validators.validatefullName,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _emailController,
                    label: "Email",
                    hintText: "Enter your email",
                    validator: Validators.validateEmail,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _passwordController,
                    label: "password",
                    hintText: "Enter your password",
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility),
                    validator: Validators.validatePassword,
                  ),
                  SizedBox(height: 20),
                  AuthFormField(
                    controller: _confirmPasswordController,
                    label: "confirm password",
                    hintText: "Confirm your password",
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility),
                    validator: (value) => Validators.validateConfirmPassword(
                      value,
                      _passwordController.text,
                    ),
                  ),
                  SizedBox(height: 50),
                  AuthButton(
                    text: "sign Up",
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        Navigator.pushReplacementNamed(context, '/catalogue');
                      }
                    },
                    BackgroundColor: primaryColor,
                    TextColor: Colors.white,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "have an account?",
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                        child: Text("Sign In"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
