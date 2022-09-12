import 'package:flutter/material.dart';
import 'custom_menu_item.dart';


class  MenuItems {

  static const homeScreen = CustomMenuItem("Inicio",Icons.home); 
  static const settingsScreen = CustomMenuItem("Configuración",Icons.settings);
  static const myMotoScreen = CustomMenuItem("Mi Moto",Icons.motorcycle);
  static const gestorAlertas = CustomMenuItem("Alertas",Icons.add_alert_rounded);

  static const all = <CustomMenuItem>[
    homeScreen,
    gestorAlertas,
    myMotoScreen,
    settingsScreen,
  ];

}

