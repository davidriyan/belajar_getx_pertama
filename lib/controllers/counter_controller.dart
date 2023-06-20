import 'package:get/get.dart';

class CounterController extends GetxController {
  var isDark = false.obs;
  var angka = 0.obs;

  void increment() => angka++;

  void ThemeData() => isDark.value = !isDark.value;
}
