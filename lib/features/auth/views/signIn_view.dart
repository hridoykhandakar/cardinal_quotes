import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/features/auth/views/signup_view.dart';
import 'package:cardinal_quotes/features/auth/widgets/auth_button.dart';
import 'package:cardinal_quotes/main.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBg,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset("assets/images/auth_bird.png"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/images/auth_fence.png"),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AuthButton(
                        text: "Sign Up",
                        variant: ButtonVariant.outline,

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupView(),
                            ),
                          );
                        },
                      ),
                      AuthButton(
                        text: "Sign In",
                        variant: ButtonVariant.defaultStyle,

                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    constraints: BoxConstraints(maxWidth: 352),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Email Address",
                        hintStyle: TextStyle(
                          color: AppColors.color3,
                          fontSize: 14,
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    constraints: BoxConstraints(maxWidth: 352),
                    child: TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Enter Password",

                        hintStyle: TextStyle(
                          color: AppColors.color3,
                          fontSize: 14,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.color3,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 43),
                  AuthButton(
                    text: "Next",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
