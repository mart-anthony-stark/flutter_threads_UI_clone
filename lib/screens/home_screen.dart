import 'package:flutter/material.dart';
import 'package:threads_clone/layouts/main_layout.dart';
import 'package:threads_clone/widgets/threads_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(95.0),
        child: ThreadsAppBar(),
      ),
      body: Center(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
