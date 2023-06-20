import 'package:belajar_getx_pertama/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController = Get.put(CounterController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: ThemeController.isDark.value
              ? ThemeData.dark()
              : ThemeData.light(),
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  final tema = Get.find<CounterController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('data${tema.angka}')),
            ElevatedButton(
                onPressed: () {
                  return tema.increment();
                },
                child: Text('Ubah tema')),
          ],
        ),
      ),
    );
  }
}
