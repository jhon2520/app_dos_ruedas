import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/const/app_fonts.dart';
import 'package:flutter/material.dart';


class CustomSecundaryButton extends StatelessWidget {

  final String labelBtn;
  final void Function()? onPressed;
  final Color? borderColor;

  const CustomSecundaryButton({
    Key? key,
    required this.labelBtn,
    required this.onPressed, 
    required this.borderColor

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: borderColor!
        ),
        elevation:0,
        shape: const StadiumBorder(), 
        backgroundColor: AppColors.backgroundColorSecundaryButton
      ),
      child: Text(labelBtn,
      style: AppFonts.fontH3Dark)
    );
  }
}