import 'package:flutter/material.dart';
import 'package:tracker/controller/auth_controller.dart';
import 'package:tracker/style/app_colors.dart';
import 'package:tracker/view/widget/custom_button.dart';
import 'package:tracker/view/widget/custon_formfield.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final _userName = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get userName => _userName.text.trim();
  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.whiteshade,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.09),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                        headingText: 'UserName',
                        hintText: 'username',
                        obsecureText: false,
                        suffixIcon: const SizedBox(),
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _userName,
                        maxLines: 1),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                        headingText: 'Email',
                        hintText: 'Email',
                        obsecureText: false,
                        suffixIcon: const SizedBox(),
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        controller: _emailController,
                        maxLines: 1),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                        headingText: 'Password',
                        hintText: 'At least 8 Character',
                        obsecureText: true,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility)),
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller: _passwordController,
                        maxLines: 1),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthButton(
                        onTap: () {
                          AuthController.instance.register(email, password);
                        },
                        text: 'Register')
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
