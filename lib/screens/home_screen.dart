import 'package:flutter/material.dart';
import 'package:threads_clone/layouts/main_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Text("Home"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(MainLayout.routeName);
                },
                child: const Text("Go to home"))
          ],
        ),
      ),
    );
  }
}
