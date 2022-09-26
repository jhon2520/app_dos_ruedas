import 'package:dos_ruedas_app/const/app_fonts.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {

  final Color backgroundColor;
  final String title;
  final String subTitle;

  const CustomTitleWidget({
    Key? key,
    required this.backgroundColor,
    required this.title,
    required this.subTitle
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: CustomTitleConst.mainContainerSize,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            child: Container(
              width: CustomTitleConst.radiusCircle,
              height: CustomTitleConst.radiusCircle,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    backgroundColor,
                    backgroundColor,
                    backgroundColor,
                    backgroundColor,
                    backgroundColor.withOpacity(0.8),
                    backgroundColor.withOpacity(0.9),
                  ]
                )),
            ),
          ),
          Positioned(
            left: 55,
            bottom: 60,
            child: Container(
              transform: Matrix4.skewX(-CustomTitleConst.skewValue) ,
              width: size.height * 0.35,
              height: 50,
              decoration:  BoxDecoration(
                color: backgroundColor,
                  border: const Border(
                left: BorderSide(color:Colors.white, width: 2),
                top: BorderSide(color:Colors.white, width: 4),
                ),
              ),
              child: Container(
                transform:  Matrix4.skewX(CustomTitleConst.skewValue) ,
                child:  Text(title,textAlign: TextAlign.left,style: AppFonts.fontH2Light.copyWith(fontWeight: FontWeight.bold),),),
            ),
          ),

          Positioned(
            left: 65,
            bottom: 50,
            child: Container(
              transform: Matrix4.skewX(-CustomTitleConst.skewValue) ,
              width: size.height * 0.25,
              height: 20,
              decoration: const BoxDecoration(
                border: Border(
                top: BorderSide(color:Colors.white, width: 2),
                left: BorderSide(color:Colors.white, width: 1)),
                color: Colors.black
              ),
              child: Container(
                transform: Matrix4.skewX(CustomTitleConst.skewValue) ,
                child:  Text(subTitle,textAlign: TextAlign.center,style:AppFonts.fontH4Light),
              ),
            ),
          )

        ],
      ),
    );

  }
}