import 'package:flutter/services.dart';

import '../../const/const.dart';

class InputFormatersList{

  static TextInputFormatter onlyLetter = FilteringTextInputFormatter.allow(RegExp(AppRegExpConts.onlyLettersRegExp));
  static TextInputFormatter blocSpaces = FilteringTextInputFormatter.deny(" ");

}