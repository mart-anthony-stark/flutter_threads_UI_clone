import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threads_clone/layouts/main_layout.dart';
import 'package:threads_clone/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MainLayout.routeName,
        routes: {
          MainLayout.routeName: (context) => const MainLayout(),
          HomeScreen.routeName: (context) => const HomeScreen()
        });
  }
}
