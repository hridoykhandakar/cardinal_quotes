import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/features/auth/views/signIn_view.dart';
import 'package:cardinal_quotes/features/auth/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool _isPasswordVisible = false;
  bool _isConformPasswordVisible = false;
  bool _isSIgnIn = false;
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
                        variant: ButtonVariant.defaultStyle,
                        onPressed: () {
                          setState(() {
                            _isSIgnIn = false;
                          });
                          print(_isSIgnIn);
                        },
                      ),
                      AuthButton(
                        text: "Sign In",
                        variant: ButtonVariant.outline,

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInView(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    constraints: BoxConstraints(maxWidth: 352),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your username",
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
                        hintText: "Create A Password",

                        hintStyle: TextStyle(
                          color: AppColors.color3,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: AppColors.authBg,
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

                  const SizedBox(height: 15),
                  Container(
                    constraints: BoxConstraints(maxWidth: 352),
                    child: TextField(
                      obscureText: !_isConformPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Confirm password",

                        hintStyle: TextStyle(
                          color: AppColors.color3,
                          fontSize: 14,
                        ),
                        filled: true,
                        fillColor: AppColors.authBg,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConformPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.color3,
                          ),
                          onPressed: () {
                            setState(() {
                              _isConformPasswordVisible =
                                  !_isConformPasswordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    constraints: BoxConstraints(maxWidth: 352),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter your email address",
                        hintStyle: TextStyle(
                          color: AppColors.color3,
                          fontSize: 14,
                        ),
                        isDense: true,
                        filled: true,
                        fillColor: AppColors.authBg,
                      ),
                    ),
                  ),

                  const SizedBox(height: 43),
                  AuthButton(text: "Next", onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
