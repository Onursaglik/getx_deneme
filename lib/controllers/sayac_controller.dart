
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SayacController extends GetxController {
  var _sayac = 0.obs;

  int sayacDegeriniVer(){
    return _sayac.value;
  }

  get sayac => _sayac.value;

  set sayac(yeniDeger)=> _sayac.value = yeniDeger;

  void arttir(){
    sayac += 1;
    Get.snackbar("Snackbar", "Arttı",
      duration: Duration(seconds: 2),
      dismissDirection: (DismissDirection.startToEnd),);
  }

  void azalt(){
    sayac -= 1;

    Get.snackbar("Snackbar", "Azaldı",
        duration: Duration(seconds: 2),
        dismissDirection: (DismissDirection.horizontal));

  }


}
