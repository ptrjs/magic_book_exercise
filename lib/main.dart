import 'package:magic_book_exercise/module/dashboard/view/dashboard_view.dart';
import 'package:magic_book_exercise/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardView(),
      builder: (context, child) {
        return Material(
          child: Stack(
            children: [
              child!,
              Positioned(
                left: 2,
                bottom: 70,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: const CircleAvatar(
                    radius: 12.0,
                    backgroundColor: Colors.black,
                    child: Icon(
                      size: 12.0,
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
