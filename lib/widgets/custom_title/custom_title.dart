import 'package:flutter/material.dart';

class CustomTitleDesign extends StatelessWidget {
  const CustomTitleDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 120,
      // color: Colors.red,
      
      child: Stack(
        
        children: [
          Positioned(
            top: 20,
            left: 0,
            child: Container(
              width: 80,
              height: 80,
              
              decoration:  BoxDecoration(
                gradient: LinearGradient(

                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
    
                    Colors.indigo,
                    Colors.indigo,
                    Colors.indigo,
                    Colors.indigo,
                    Colors.indigo[500]!,
                    Colors.indigo[700]!,
                    Colors.indigo[800]!,
                    Colors.indigo[900]!
                  ]
                  
                ),
                
                boxShadow: [
                              BoxShadow(color: Colors.grey[400]!, blurRadius: 5, spreadRadius: 0.5),
                              // BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 5),
                            ],
                color: Colors.indigo,
                shape: BoxShape.circle,
              
              ),
            ),
          ),
          Positioned(
            left: 55,
            bottom: 60,
            child: Container(
              transform: Matrix4.skewX(-0.5) ,
              width: size.height * 0.35,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                  border: Border(
                left: BorderSide(color:Colors.white, width: 2),
                top: BorderSide(color:Colors.white, width: 4),
                ),
              ),
              child: Container(
                transform:  Matrix4.skewX(0.5) ,
                child: const Text("Este es el titulo",textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
            ),
          ),

          Positioned(
            left: 65,
            bottom: 50,
            child: Container(
              transform: Matrix4.skewX(-0.5) ,
              width: size.height * 0.25,
              height: 20,
              decoration: const BoxDecoration(
                border: Border(
                top: BorderSide(color:Colors.white, width: 2),
                left: BorderSide(color:Colors.white, width: 1),
 
                ),
                color: Colors.black
              ),
              child: Container(
                transform: Matrix4.skewX(0.5) ,
                child: const Text("Subtitulo",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14)),
              ),
            ),
          )

        ],
      ),
    );

  }
}