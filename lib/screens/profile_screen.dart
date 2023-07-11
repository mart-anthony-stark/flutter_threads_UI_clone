import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Profile")),
    );
  }
}
