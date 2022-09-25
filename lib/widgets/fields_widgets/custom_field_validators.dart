class CustonFieldValidators{

  static String? validateNoEmptyValue(String? value){

    if(value == ""){
      return "El campo no puede estar vacío";
    }

    return null;
  }
}