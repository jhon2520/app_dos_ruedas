
import 'package:dos_ruedas_app/router/index.dart';
import 'package:dos_ruedas_app/screens/my_moto/consts/my_moto_const.dart';
import 'package:flutter/material.dart';

import '../../../const/const.dart';
import '../../../models/index.dart';

class CardMyMotoOption extends StatelessWidget {

  final CardOptionModel option;

  const CardMyMotoOption({
    Key? key, required this.option,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutesStrings.myMotoPageBasicInfo),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: MyMotoConst.cardOptionWidth,
        decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: option.backgroundColor.withOpacity(0.6),spreadRadius: 1,blurRadius: 8,offset: const Offset(0,3)
          )
        ],
        color: option.backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppLayoutConst.mainRaidiusContainer),
          bottomRight: Radius.circular(AppLayoutConst.minRaidiusContainer),
          topLeft: Radius.circular(AppLayoutConst.minRaidiusContainer),
          topRight: Radius.circular(AppLayoutConst.mainRaidiusContainer),
      )
        ),
        child:  Stack(
          children: [
    
            Positioned(
              right: -20,
              top: -20,
              child: Icon( option.icon, size: MyMotoConst.cardIconSize,color: MyMotoConst.cardIconColor,)),
    
    
            Positioned(
              top: 70,
              left: 10,
              child: Container(
                padding: MyMotoConst.paddingTextStadium,
                decoration: ShapeDecoration(
                  color: MyMotoConst.cardIconColor,
                  shape: const StadiumBorder()),
                child: Text(option.title,style: AppFonts.fontH4Light.copyWith(fontWeight: FontWeight.bold),)),
            ),
    
    
            Positioned(
              bottom: 20,
              left: 10,
              child: SizedBox(
                width: MyMotoConst.cardContainerSubtitleWidth,
                child: Text(option.subtitle,maxLines: 2,style: AppFonts.fontH4Light.copyWith(fontWeight: FontWeight.bold))))
          ],
        ),
      ),
    );
  }
}