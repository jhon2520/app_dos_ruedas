import 'package:flutter/material.dart';

import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/screens/screens.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show CustomAppBar;




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:const [
            CustomAppBar(
              mainTitle: HomeScreenStrings.mainTitle,
              backgroundColor: AppColors.backgroundScaffoldHome,)
          ],
        ),
      ),
    );
  }
}