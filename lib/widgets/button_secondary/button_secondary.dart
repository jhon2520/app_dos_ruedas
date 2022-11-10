import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/const/app_fonts.dart';
import 'package:dos_ruedas_app/utils/size_utils.dart';
import 'package:dos_ruedas_app/widgets/custom_box_spacer/custom_box_enums.dart';
import 'package:flutter/material.dart';


class CustomSecundaryButton extends StatelessWidget {

  final String labelBtn;
  final void Function()? onPressed;
  final Color? borderColor;
  final Color? backgroundColor;
  final TextStyle? fontStyle;
  final CustomBoxSpacerSizesEnum? buttonWidth;

  const CustomSecundaryButton({
    Key? key,
    required this.labelBtn,
    required this.onPressed, 
    required this.borderColor,
    this.backgroundColor,
    this.fontStyle,
    this.buttonWidth,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: buttonWidth != null ? SizeUtils.getButtonSizes( buttonWidth!)! : 15),
        side: BorderSide(
          color: borderColor!

        ),
        elevation:0,
        shape: const StadiumBorder(), 
        backgroundColor:  backgroundColor ?? AppColors.backgroundColorSecundaryButton
      ),
      child: Text(labelBtn,
      style: fontStyle ?? AppFonts.fontH3Dark,)
    );
  }
}