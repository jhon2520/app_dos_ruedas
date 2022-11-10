import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/screens/screens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundMainColor,
      body: SafeArea(
        child: Stack(
          children: const[
            Positioned(
              left: -60,
              top: -60,
              child: LoginIconDecoration(icon: Icons.settings,opacity: 0.1,size: 280)),
            Positioned(
              bottom: -70,
              right: -80,
              child: LoginIconDecoration(icon: Icons.settings,opacity: 0.2,size: 280)),
            LoginMainBody()
          ]),
      ) ,
    );
  }
}

