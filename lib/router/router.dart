import 'package:dos_ruedas_app/router/index.dart';
import 'package:dos_ruedas_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter{

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch (settings.name) {
      case AppRoutesStrings.initialRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>  const HomeScreen());
      case AppRoutesStrings.homePage:
        //*ejemplo arguments
        //*var varialbe = settings.arguments as string => se pasas por variable si la ventana lo requiere
        return MaterialPageRoute(builder: (BuildContext context)=>  const HomeScreen());
      case AppRoutesStrings.myMotoPage:
        return MaterialPageRoute(builder: (BuildContext context)=>  const MyMotoScreen());
      case AppRoutesStrings.myMotoPageBasicInfo:
        return MaterialPageRoute(builder: (BuildContext context)=>  const MyMotoBasicInfoScreen());
      case AppRoutesStrings.settingsPage:
        return MaterialPageRoute(builder: (BuildContext context)=>  const SettingScreen());
      case AppRoutesStrings.alerstPage:
        return MaterialPageRoute(builder: (BuildContext context)=>  const GestorAlertasScreen());
      case AppRoutesStrings.loginPage:
        return MaterialPageRoute(builder: (BuildContext context)=>  const LoginScreen());
      default:
        //TODO: Crear una ventana de loading
        return MaterialPageRoute(builder: (_)=> const HomeScreen());
    }





  }

}