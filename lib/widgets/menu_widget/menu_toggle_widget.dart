import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/const/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuToggleWidget extends StatelessWidget {
  const MenuToggleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: ()=> ZoomDrawer.of(context)!.toggle(), 
      icon: const Icon(Icons.menu,size: AppLayoutConst.iconSizeXXL,color: AppColors.mainIconsColor,)
      );
  }
}
