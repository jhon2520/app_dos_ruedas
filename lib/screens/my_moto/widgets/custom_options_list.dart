

import 'package:dos_ruedas_app/models/index.dart';
import 'package:dos_ruedas_app/screens/my_moto/consts/my_moto_const.dart';
import 'package:dos_ruedas_app/screens/my_moto/consts/my_moto_strings.dart';
import 'package:dos_ruedas_app/widgets/custom_box_spacer/custom_box_spacer.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'custom_option_card.dart';



class CustomMyMotoOptionsList extends StatelessWidget {
  const CustomMyMotoOptionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<CardOptionModel> opciones = CardOptionsList.getOptionsList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const CustomDivider(titulo: MyMotoScreenStrings.separadorOpciones),
      
        const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),
        
        SizedBox(
          height: MyMotoConst.sizeContainerListOptions,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: opciones.length,
            itemBuilder: (BuildContext context, int index) {

              final option = opciones[index];

              return CardMyMotoOption(option : option);
            },
          ),
        ),
      ],
    );
    
  }
}
