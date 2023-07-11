import 'package:flutter/material.dart';

class WriteScreen extends StatelessWidget {
  const WriteScreen({super.key});
  static const routeName = "/write";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("New Thread"),
      ),
    );
  }
}
