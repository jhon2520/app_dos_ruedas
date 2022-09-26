import 'package:flutter/material.dart';

import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show MenuToggleWidget,UserDataWidget;


class CustomAppBar extends StatelessWidget {
  
  final Color backgroundColor;
  final String mainTitle;
  
  const CustomAppBar({Key? key, required this.backgroundColor, required this.mainTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * AppLayoutConst.customAppBarSize,
      width: double.infinity,
      decoration: _customAppBarDecoration(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.mainHorizontalPadding,vertical: AppLayoutConst.mainVerticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  const MenuToggleWidget(),
                  Expanded(child: Text(mainTitle, style: AppFonts.mainTitle,))

                ],
              ),
              const UserDataWidget(radius: 35,showBlur: true,)
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _customAppBarDecoration() =>  BoxDecoration(
    color: backgroundColor,
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(AppLayoutConst.mainRaidiusContainer)
    )
  );
}

