import 'dart:developer';

import 'package:dos_ruedas_app/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'moto_events.dart';
part 'moto_state.dart';


class MotoBloc extends Bloc<MotoEvent,MotoState>{

  MotoBloc():super(const MotoInitState()){


    on<ActivateMotoEvent>((event, emit) {
      log("set new moto");
      emit(MotoSetState(event.newMoto));

    });

  }


}