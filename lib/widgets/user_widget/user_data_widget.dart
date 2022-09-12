import 'package:dos_ruedas_app/const/const.dart';
import 'package:flutter/material.dart';

class UserDataWidget extends StatelessWidget {

  final double radius;
  final bool showBlur;

  const UserDataWidget({Key? key, this.radius = 25, this.showBlur = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final Size size = MediaQuery.of(context).size;
    
    return Container  (
      width: size.width * 0.5,
      padding:const EdgeInsets.all(10),
      decoration: showBlur ? _customContainerDecoration() : null,
      child: Column(
        children:  [
            CircleAvatar(
              backgroundColor:  AppColors.mainColorBlur,
              radius:radius,
              child:const  FadeInImage(
                
              image: NetworkImage("https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png") ,
              fit: BoxFit.cover,
              placeholder:AssetImage("assets/loading_gif.gif") 
              
              ,
                        ),
            ),
          const SizedBox(height: 10,),
          const Text("Jhon Romero", style: AppFonts.fontH3,),
          const SizedBox(height: 5,),
        ],
      ),
    );
  }

  BoxDecoration _customContainerDecoration() => BoxDecoration(
    color: AppColors.mainColorBlur,
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(AppLayout.mainRaidiusContainer),
      topRight: Radius.circular(AppLayout.mainRaidiusContainer),
      topLeft: Radius.circular(AppLayout.minRaidiusContainer),
      bottomRight: Radius.circular(AppLayout.minRaidiusContainer),
    )
  );
}