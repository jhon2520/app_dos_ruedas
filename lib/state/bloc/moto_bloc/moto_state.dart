part of "moto_bloc.dart";


abstract class MotoState{

  final bool existMoto;
  final MotoModel? myMoto;

  const MotoState({this.existMoto = false, this.myMoto});

}


class MotoInitState extends MotoState{

  const MotoInitState():super(existMoto: false,myMoto: null);

}


class MotoSetState extends MotoState{

  final MotoModel newMoto;

  const MotoSetState(this.newMoto):super(existMoto: true,myMoto: newMoto);

}