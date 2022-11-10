import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyMotoAnimadaWidget extends StatefulWidget {


  const MyMotoAnimadaWidget({Key? key}) : super(key: key);

  @override
  State<MyMotoAnimadaWidget> createState() => _MyMotoAnimadaWidgetState();
}

class _MyMotoAnimadaWidgetState extends State<MyMotoAnimadaWidget> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> moverDerecha;
  late Animation<double> picarMoto;
  late Animation<double> terminarMovimiento;
  late Animation<double> opacidad;


  @override
  void initState() {
    controller = AnimationController(vsync: this, duration:  const Duration(milliseconds:  3500));
    moverDerecha = Tween(begin: 0.0,end: 150.0).animate(CurvedAnimation(
      parent: controller, 
      curve: const Interval(0.0,0.5,curve: Curves.easeInOutCirc)));

    picarMoto = Tween(begin: 0.0,end: math.pi/4.5).animate(CurvedAnimation(
      parent: controller, 
      curve: const Interval(0.5,0.7,curve: Curves.easeInBack)));

    terminarMovimiento = Tween(begin: 0.0,end: 300.0).animate(CurvedAnimation(
      parent: controller, 
      curve: const Interval(0.7,1,curve: Curves.easeInBack)));

    opacidad = Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      parent: controller, 
      curve: const Interval(0,0.25, curve: Curves.easeInOut)));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    controller.repeat();
    return AnimatedBuilder(
      animation: controller,
      child: const _MotoContainer(),
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: opacidad.value,
          child: Transform.translate(
            offset: Offset(terminarMovimiento.value,0),
            child: Transform.rotate(
              angle: -picarMoto.value,
              child: Transform.translate(
                offset: Offset(moverDerecha.value,0.0),
                child: child),
            ),
          ),
        );
      },
    );
  }
}

class _MotoContainer extends StatelessWidget {
  const _MotoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 160,
        // color: Colors.red,
        alignment: Alignment.centerLeft,
        child: const Image(
          width: 120,
          height: 120,
          image: AssetImage("assets/moto.png")),
      ),
    );
  }
}