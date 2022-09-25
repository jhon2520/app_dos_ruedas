part of "moto_bloc.dart";


@immutable
abstract class MotoEvent{}


//* Activar Moto
class ActivateMotoEvent extends MotoEvent {

  final MotoModel newMoto;

  ActivateMotoEvent(this.newMoto);


}