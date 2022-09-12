import 'package:flutter/material.dart';

import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/screens/screens.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show CustomAppBar;



class MyMotoScreen extends StatelessWidget {
  const MyMotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:const [
            CustomAppBar(
              mainTitle: MyMotoScreenStrings.mainTitle,
              backgroundColor: AppColors.backgroundScaffoldMyMoto)
          ],
        ),
      ),
    );
  }
}