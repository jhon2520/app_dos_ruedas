import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';

class LoginIconDecoration extends StatelessWidget {

  final IconData icon;
  final double opacity;
  final double size;

  const LoginIconDecoration({
    Key? key,
    required this.icon,
    required this.opacity,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: AppColors.mainIconsColor.withOpacity(opacity),size: size,);
  }
}
