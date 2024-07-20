import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcProvider extends ChangeNotifier {
  final compController = TextEditingController();

  setValue(String val) {
    String str = compController.text;

    switch (val) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;

      case "X":
        compController.text = compController.text + "*";
        break;

      case "=":
        comp();
        break;
      default:
        compController.text += val;
    }
  }

  comp(){
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    compController.dispose();
  }
}
