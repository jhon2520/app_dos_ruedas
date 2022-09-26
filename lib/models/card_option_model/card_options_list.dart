
import 'package:flutter/material.dart';

import 'index.dart' show  CardOptionModel;

class CardOptionsList{

  static List<CardOptionModel> getOptionsList(){
    
    List<CardOptionModel> listAux = [

      CardOptionModel(
        optionId: "1", 
        title: "Tu moto", 
        subtitle: "Datos básicos de tu moto", 
        icon: Icons.motorcycle_outlined, 
        backgroundColor: Colors.cyan),
      CardOptionModel(
        optionId: "2", 
        title: "Talleres", 
        subtitle: "Talleres que te han gustado", 
        icon: Icons.settings, 
        backgroundColor: Colors.purpleAccent),
      CardOptionModel(
        optionId: "3", 
        title: "Opcion 3", 
        subtitle: "subtitulo 3", 
        icon: Icons.settings, 
        backgroundColor: Colors.green),
      CardOptionModel(
        optionId: "4", 
        title: "Opcion 4", 
        subtitle: "subtitulo 4", 
        icon: Icons.settings, 
        backgroundColor: Colors.teal),

    ];

    return listAux;

  }

}