import 'package:dos_ruedas_app/const/app_layout.dart';
import 'package:dos_ruedas_app/router/index.dart';
import 'package:dos_ruedas_app/screens/my_moto/my_moto.dart';
import 'package:dos_ruedas_app/utils/colors_utils.dart';
import 'package:dos_ruedas_app/widgets/custom_box_spacer/custom_box_spacer.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyMotoBasicInfoScreen extends StatelessWidget {
  const MyMotoBasicInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(MyMotoBasicInfoStrings.appbarTitle),
        backgroundColor: ColorsUtils.getColorByPage(PagesEnum.myMotoPage),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xxl),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.mainHorizontalPadding),
                child: CustomTitleWidget(
                  backgroundColor:  ColorsUtils.getColorByPage(PagesEnum.myMotoPage)!, 
                  title: "Datos De Tu Moto", 
                  subTitle: "formulario"),
              ),

              const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),

               MyMotoForm(),
            ],
          ),
        ),
      ),
    );
  }
}