import 'package:dos_ruedas_app/router/app_routes_strings.dart';
import 'package:flutter/material.dart';

import '../../../const/const.dart';
import '../../../widgets/widgets.dart';
import '../consts/login_strings.dart';


class LoginMainBody extends StatelessWidget {
  const LoginMainBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        const MyMotoAnimadaWidget(),
        CustomSecundaryButton(
          labelBtn: LoginStrings.labelButtonIngresar, 
          borderColor: AppColors.whiteColor, 
          backgroundColor: AppColors.backgroundMainColor,
          fontStyle: AppFonts.fontH3Light,
          buttonWidth: CustomBoxSpacerSizesEnum.xxl,
          onPressed: ()=> gotoHomePage(context))
      ],
    );
  }

  void gotoHomePage(BuildContext context){
    Navigator.pushNamed(context, AppRoutesStrings.homePage);
  }
} 