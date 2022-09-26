import 'dart:developer';

import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/models/index.dart';
import 'package:dos_ruedas_app/router/pages_enum.dart';
import 'package:dos_ruedas_app/state/bloc/moto_bloc/moto_bloc.dart';
import 'package:dos_ruedas_app/utils/colors_utils.dart';
import 'package:dos_ruedas_app/widgets/custom_box_spacer/custom_box_spacer.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show CustomBoxSpacerSizesEnum, CustomFormField, CustomPrimaryButton, CustomSecundaryButton, CustonFieldValidators, InputFormatersList ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../screens.dart';


class MyMotoForm extends StatefulWidget {

  const MyMotoForm({Key? key}) : super(key: key);

  @override
  State<MyMotoForm> createState() => _MyMotoFormState();
}

class _MyMotoFormState extends State<MyMotoForm> {

  final _formKey = GlobalKey<FormState>();
  String? _marca;


  @override
  Widget build(BuildContext context) {

    final motoBloc = BlocProvider.of<MotoBloc>(context);


    return SizedBox(
      width: double.infinity,
      child: Form(
        // autovalidateMode: AutovalidateMode.always,
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.mainHorizontalPadding),
          child: Column(
            children:[
            
          
              //* Marca
              CustomFormField(
                
                initialValue: motoBloc.state.myMoto?.marca != null
                ? motoBloc.state.myMoto!.marca
                : "",
                label:MyMotoScreenStrings.marcaLabel,
                page: PagesEnum.myMotoPage,
                
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                onChange: (value) {
                  _marca = value;
                },
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),
               //*Referencia 
              CustomFormField(
                initialValue:"",
                label:MyMotoScreenStrings.referenciaLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                onChange: (p0) {
                  
                },
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),
               //*modelo 
              CustomFormField(
                 initialValue:"",
                label:MyMotoScreenStrings.modeloLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                onChange: (p0) {
                  
                },
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),
                //*Color
                //TODO: Crear color picker para color primario y secundario
              CustomFormField(
                 initialValue:"",
                label:MyMotoScreenStrings.modeloLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                onChange: (p0) {
                  
                },
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xl),
                //*Precio
              CustomFormField(
                 initialValue:"",
                label:MyMotoScreenStrings.precioLabel,
                page: PagesEnum.myMotoPage,
                keyboardType: TextInputType.number,
                onChange: (p0) {
                  
                },
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
    
                const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.xxl),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
    
                CustomPrimaryButton(
                  labelBtn: MyMotoBasicInfoStrings.btnPrimaryGuardaInfoBasica,
                  backgroundColor:ColorsUtils.getColorByPage(PagesEnum.myMotoPage),
                  onPressed: (){

                      //TODO: Validar campos vacíos
                        final MotoModel moto =  MotoModel(
                      cilindraje: "200",
                      color: "Verde",
                      marca: _marca!,
                      modelo: "2023",
                      precio: 123456,
                      proposito: PropositoEnum.enduro,
                      referencia: "123"
                    );
                    motoBloc.add(ActivateMotoEvent(moto));
                  },
                  ),
                  const CustomBoxSpacer(size: CustomBoxSpacerSizesEnum.m,vertical: false),
                CustomSecundaryButton(
                  labelBtn: MyMotoBasicInfoStrings.btnSecundarySalir, 
                  onPressed: (){

                  
                  },
                  borderColor: ColorsUtils.getColorByPage(PagesEnum.myMotoPage))
                  ],
                )
            ],
          
          ),
        ),
      ),
    );
  }
}


