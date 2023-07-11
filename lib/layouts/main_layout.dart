import 'package:flutter/material.dart';
import 'package:threads_clone/flutter-icons/my_flutter_app_icons.dart';
import 'package:threads_clone/screens/home_screen.dart';
import 'package:threads_clone/screens/notification_screen.dart';
import 'package:threads_clone/screens/profile_screen.dart';
import 'package:threads_clone/screens/search_screen.dart';
import 'package:threads_clone/screens/write_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  static const routeName = '/mainlayout';

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final _home_screen = GlobalKey<NavigatorState>();
  final _search_screen = GlobalKey<NavigatorState>();
  final _write_screen = GlobalKey<NavigatorState>();
  final _notification_screen = GlobalKey<NavigatorState>();
  final _profile_screen = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(6.0),
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.redAccent,
      //     child: const Icon(Icons.add, color: Colors.white),
      //     onPressed: () {},
      //   ),
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Navigator(
            key: _home_screen,
            onGenerateRoute: (route) =>
                MaterialPageRoute(builder: (context) => const HomeScreen()),
          ),
          Navigator(
            key: _search_screen,
            onGenerateRoute: (route) =>
                MaterialPageRoute(builder: (context) => const SearchScreen()),
          ),
          Navigator(
            key: _write_screen,
            onGenerateRoute: (route) =>
                MaterialPageRoute(builder: (context) => const WriteScreen()),
          ),
          Navigator(
            key: _notification_screen,
            onGenerateRoute: (route) => MaterialPageRoute(
                builder: (context) => const NotificationScreen()),
          ),
          Navigator(
            key: _profile_screen,
            onGenerateRoute: (route) =>
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.home, size: 19), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mode_edit_outline), label: "Write"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
