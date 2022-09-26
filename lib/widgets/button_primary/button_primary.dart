import 'package:dos_ruedas_app/const/app_fonts.dart';
import 'package:flutter/material.dart';


class CustomPrimaryButton extends StatelessWidget {

  final String labelBtn;
  final Color? backgroundColor;
  final void Function()? onPressed;

  
  const CustomPrimaryButton({
    Key? key, 
    required this.labelBtn,
    required this.backgroundColor,
    required this.onPressed
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const StadiumBorder(),
        backgroundColor: backgroundColor
    ), 
    child:  Text(labelBtn,
    style: AppFonts.fontH3Light),
    
    );


  }
}