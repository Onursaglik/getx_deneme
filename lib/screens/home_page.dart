
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_deneme/controllers/sayac_controller.dart';
import 'package:getx_deneme/screens/second_screen.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required String title}) : super(key: key);
  final SayacController _controller = Get.put(SayacController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: ElevatedButton(onPressed: ,),
      //   title: const Text("asdas"),
      //   backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Numara",
              style: TextStyle(fontSize: 31),
            ),
            Obx(
                  () => Text(
                _controller.sayac.toString(),
                style: const TextStyle(fontSize: 31),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            onPressed: () {
              _controller.arttir();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () {
              _controller.azalt();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: "3",
            onPressed: () {
              Get.to(SecondPage());
            },
            child: Icon(Icons.track_changes),
          ),
        ],
      ),
    );
  }
}
