import 'package:dos_ruedas_app/const/const.dart';
import 'package:dos_ruedas_app/router/pages_enum.dart';
import 'package:dos_ruedas_app/widgets/custom_box_spacer/custom_box_spacer.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart' show CustomBoxSpacerSizesEnum, CustomFormField, CustomTitleDesign, CustonFieldValidators, InputFormatersList ;
import 'package:flutter/material.dart';

import '../../screens.dart';


class MyMotoForm extends StatefulWidget {

  const MyMotoForm({Key? key}) : super(key: key);

  @override
  State<MyMotoForm> createState() => _MyMotoFormState();
}

class _MyMotoFormState extends State<MyMotoForm> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppLayoutConst.mainHorizontalPadding),
          child: Column(
            children:[

              const CustomBoxSpacer(height: CustomBoxSpacerSizesEnum.xxxl),
              CustomTitleDesign(),
              // Text(MyMotoScreenStrings.formTitle,style: AppFonts.fontH2Dark,),
              const CustomBoxSpacer(height: CustomBoxSpacerSizesEnum.xxl),

          
              //* Marca
              CustomFormField(
                label:MyMotoScreenStrings.marcaLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
               //*Referencia 
              CustomFormField(
                label:MyMotoScreenStrings.referenciaLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
               //*modelo 
              CustomFormField(
                label:MyMotoScreenStrings.modeloLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                //*Color
                //TODO: Crear color picker para color primario y secundario
              CustomFormField(
                label:MyMotoScreenStrings.modeloLabel,
                page: PagesEnum.myMotoPage,
                inputFormatter: [
                  InputFormatersList.onlyLetter
                ],
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),
                //*Precio
              CustomFormField(
                label:MyMotoScreenStrings.precioLabel,
                page: PagesEnum.myMotoPage,
                keyboardType: TextInputType.number,
                validator: (value){
                  return CustonFieldValidators.validateNoEmptyValue(value); 
                }),

                const CustomBoxSpacer(height: CustomBoxSpacerSizesEnum.xl),
          
              TextButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("todo correcto")));
                }
              }, child: const Text("Guardar"))
            ],
          
          ),
        ),
      ),
    );
  }
}


