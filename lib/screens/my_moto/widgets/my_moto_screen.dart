import 'dart:developer';

import 'package:dos_ruedas_app/state/bloc/moto_bloc/moto_bloc.dart';
import 'package:flutter/material.dart';

import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/screens/screens.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show CustomAppBar, CustomBoxSpacerSizesEnum, CustomTitleWidget;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../router/index.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_box_spacer/custom_box_spacer.dart';



class MyMotoScreen extends StatelessWidget {
  const MyMotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final motoBloc = BlocProvider.of<MotoBloc>(context);

    //log("${motoBloc.state.myMoto!.marca}");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [

            BlocBuilder<MotoBloc, MotoState>(
              builder: (context, state) {

                if(state.myMoto?.marca != null) {
                  return CustomAppBar(
                    mainTitle: motoBloc.state.myMoto!.marca,
                    backgroundColor: AppColors.backgroundScaffoldMyMoto);
                }

                return const CustomAppBar(
                    mainTitle: MyMotoScreenStrings.mainTitle,
                    backgroundColor: AppColors.backgroundScaffoldMyMoto);
              },
            ),


        
          
          const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xxxl),

          Padding(
            padding: const  EdgeInsets.symmetric(horizontal: AppLayoutConst.mainHorizontalPadding),
            child: CustomTitleWidget(
                backgroundColor: ColorsUtils.getColorByPage(PagesEnum.myMotoPage)!, 
                title: "¿Qué deseas revisar?" ,
                subTitle: "Selecciona"
                ,),
          ),

          const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xxl),

          const CustomMyMotoOptionsList()

            // MyMotoForm()
        
          ],
        ),
      ),
    );
  }
}