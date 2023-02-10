import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rema_sharaf/Home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      initialRoute: "/HomeScreen",
      getPages: [
        GetPage(
          name: "/HomeScreen",
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
