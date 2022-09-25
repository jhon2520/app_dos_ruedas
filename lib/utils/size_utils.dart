import '../widgets/widgets.dart';

class SizeUtils{




  static double? getBoxSpacerSize(CustomBoxSpacerSizesEnum size){

    const Map<CustomBoxSpacerSizesEnum,double> auxMap = {

      CustomBoxSpacerSizesEnum.m : 5.0,
      CustomBoxSpacerSizesEnum.l : 12.0,
      CustomBoxSpacerSizesEnum.xl : 20.0,
      CustomBoxSpacerSizesEnum.xxl : 30.0,
      CustomBoxSpacerSizesEnum.xxxl : 45.0,

    };


    return auxMap[size];


  }


}