
import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';



import 'package:dos_ruedas_app/widgets/widgets.dart' show MenuItems,CustomMenuItem,MenuPage;
import 'package:dos_ruedas_app/screens/screens.dart' show SettingScreen,HomeScreen,MyMotoScreen,GestorAlertasScreen;




class CustomZoomDrawer extends StatefulWidget {
  const CustomZoomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomZoomDrawer> createState() => _CustomZoomDrawerState();
}

class _CustomZoomDrawerState extends State<CustomZoomDrawer> {

  CustomMenuItem currentItem = MenuItems.homeScreen;



  @override
  Widget build(BuildContext context) {

  

    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      menuBackgroundColor: AppColors.backgroundMainColor,
      drawerShadowsBackgroundColor: ColorsUtils.getRandomColor(),
      showShadow: true,
      angle: -10.0,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.linear,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) =>  MenuPage(
          currentItem: currentItem,
          onSelectedItem:(item){
            setState(() {
              currentItem = item;
              ZoomDrawer.of(context)!.close();
            });
          }
        ),
      ), 
      );


  }
    Widget getScreen(){
    switch (currentItem) {
      case MenuItems.homeScreen:
        return const HomeScreen();
      case MenuItems.settingsScreen:
        return const SettingScreen();
      case MenuItems.myMotoScreen:
        return const MyMotoScreen();
      case MenuItems.gestorAlertas:
        return const GestorAlertasScreen();
      default:
        return const HomeScreen();
    }
  }
    

}