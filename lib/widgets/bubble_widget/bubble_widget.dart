import 'package:flutter/material.dart';

class CustomBubble extends StatelessWidget {

  final double radius;
  final double opacity;


  const CustomBubble(
    {Key? key, this.radius = 15,  this.opacity = 0.2}
    ) :assert(radius>0),assert(opacity >0), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(opacity),
        shape: BoxShape.circle
      ),
    );
  }
}