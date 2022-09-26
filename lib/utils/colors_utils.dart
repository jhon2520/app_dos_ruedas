import 'dart:math';

import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/router/pages_enum.dart';
import 'package:flutter/material.dart';


class ColorsUtils {

  
  static Color getRandomColor(){

    Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return color;
  }

  static Color? getColorByPage(PagesEnum page){

    const Map<PagesEnum,Color> colorsMap ={

      PagesEnum.homePage:AppColors.backgroundScaffoldHome,
      PagesEnum.myMotoPage:AppColors.backgroundScaffoldMyMoto,
      PagesEnum.settingPage:AppColors.backgroundScaffoldSetting,
      PagesEnum.alertsPage:AppColors.backgroundScaffoldGestorAlertas,

    };

    return colorsMap[page];

  }

  // List<Color>? getShadowColorsByPage(PagesEnum page){

  //   const Map<PagesEnum,List<Color>> shadowColorsMap ={
  //     PagesEnum.homePage:[AppColors.backgroundScaffoldHome],
  //     PagesEnum.myMotoPage:[AppColors.backgroundScaffoldMyMoto],
  //     PagesEnum.settingPage:[AppColors.backgroundScaffoldSetting],
  //     PagesEnum.alertsPage:[AppColors.backgroundScaffoldGestorAlertas],
  //   };

  //   return shadowColorsMap[page];

  // }

}
