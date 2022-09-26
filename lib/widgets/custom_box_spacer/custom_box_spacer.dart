import 'package:dos_ruedas_app/utils/size_utils.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomBoxSpacer extends StatelessWidget {

  final CustomBoxSpacerSizesEnum size;
  final bool vertical;

  const CustomBoxSpacer({
    Key? key,
    required this.size,
    this.vertical = true
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return vertical 
    ? SizedBox( height: SizeUtils.getBoxSpacerSize(size))
    : SizedBox( width: SizeUtils.getBoxSpacerSize(size));
  }
}