import 'package:dos_ruedas_app/utils/size_utils.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomBoxSpacer extends StatelessWidget {

  final CustomBoxSpacerSizesEnum height;

  const CustomBoxSpacer({
    Key? key,
    required this.height
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.getBoxSpacerSize(height),
    );
  }
}