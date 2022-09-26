
import 'package:dos_ruedas_app/router/pages_enum.dart';
import 'package:dos_ruedas_app/utils/colors_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../const/const.dart';

class CustomFormField extends StatefulWidget {

  final PagesEnum page;
  final String label;
  final String? Function(String? value)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final Function(String)? onSubmitted;
  final  Function(String?)? onChange;
  final TextInputType keyboardType;
  final String? initialValue;
  
  

  const CustomFormField({
    Key? key, 
    required this.page, 
    required this.label,
    required this.onChange,
    required this.initialValue,
    this.validator, 
    this.onSubmitted,
    this.keyboardType = TextInputType.text,
    this.inputFormatter}) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  bool focus = false;
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (value){
          setState(() {
          focus = value;
          });
        },
        child: TextFormField(
                  // controller: _controller,
                  initialValue: widget.initialValue,
                  onChanged: widget.onChange,
                  validator: widget.validator,
                  style: AppFonts.fontH3Dark,
                  inputFormatters: widget.inputFormatter,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                    filled: true,
                    fillColor: Colors.white70,
                    suffixIcon: Visibility(
                      visible: focus ,
                      child: IconButton(
                        onPressed: ()=>_controller.clear(), 
                        icon: Icon(Icons.clear, color: ColorsUtils.getColorByPage(widget.page)!.withOpacity(0.3),)),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  BorderSide(
                        color: AppColors.backgroundMainColor.withOpacity(0.8),
                        width: 0.4
                      )
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: ColorsUtils.getColorByPage(widget.page)!,
                        width: 0.1
                        ) ),
                    label:Text( widget.label, style: AppFonts.labelFont,) 
                  ),
                  onFieldSubmitted: widget.onSubmitted,
                  keyboardType: widget.keyboardType,
                ),
      ),
    );
  }
}