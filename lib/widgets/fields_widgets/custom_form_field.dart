import 'package:dos_ruedas_app/router/pages_enum.dart';
import 'package:dos_ruedas_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../const/const.dart';

class CustomFormField extends StatelessWidget {

  final PagesEnum page;
  final String label;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final Function(String)? onSubmitted;
  final TextInputType keyboardType;
  
  

  const CustomFormField({
    Key? key, 
    required this.page, 
    required this.label,
    this.validator, 
    this.onSubmitted,
    this.keyboardType = TextInputType.text,
    this.inputFormatter}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
              validator: validator,
              style: AppFonts.fontH3Dark,
              inputFormatters: inputFormatter,
              decoration: InputDecoration(
                // prefixIcon: const Icon(Icons.motorcycle, size:  AppLayoutConst.iconSizeL,),
                suffixIcon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.clear, color: ColorsUtils.getColorByPage(page)!.withOpacity(0.4),)),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.backgroundMainColor,
                    width: 2.0
                  )
                ),
                enabledBorder:UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsUtils.getColorByPage(page)!,
                    width: 1.0
                    ) ),
                label:Text( label, style: AppFonts.labelFont,) 
              ),
              onFieldSubmitted: onSubmitted,
              keyboardType: keyboardType,
            );
  }
}