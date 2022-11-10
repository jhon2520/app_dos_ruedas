import 'package:flutter/material.dart';

import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/router/index.dart';
import 'package:dos_ruedas_app/state/bloc/moto_bloc/moto_bloc.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> MotoBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
        title: AppStrings.appName,
        initialRoute: AppRoutesStrings.loginPage,
        home: const CustomZoomDrawer(),
      ),
    );
  }
}