import 'package:flutter/material.dart';

import '../../const/app_fonts.dart';

class CustomDivider extends StatelessWidget {

  final String? titulo;


  const CustomDivider({Key? key, this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
          children:  [
            const Expanded(flex: 1, child: Divider()),
            if(titulo != null)
              Expanded(flex: 1, child: Text(titulo!,
              textAlign: TextAlign.center,
              style: AppFonts.fontH3Dark,
              )),
            const Expanded(flex: 1, child: Divider()),
          ],
        );
  }
}