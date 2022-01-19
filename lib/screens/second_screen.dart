
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_deneme/controllers/sayac_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  final SayacController _controller = Get.put(SayacController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Obx(
                      () => Text(
                    _controller.sayac.toString(),
                    style: const TextStyle(fontSize: 31),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Get.back();
            },child: Text("Geri Dön"),),
          ],
        ),
      ),
    );
  }
}
