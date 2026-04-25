// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:my_app/screens/screen_1.dart';
import 'package:my_app/screens/screen_2.dart';
import 'package:my_app/screens/screen_3.dart';
import 'package:my_app/screens/screen_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: ScreenMain(),
    );
  }
}

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.grey),
      activeIcon: Icon(Icons.home, color: Colors.purple),
      label: 'Home',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.report, color: Colors.grey),
      activeIcon: Icon(Icons.report, color: Colors.purple),
      label: 'Reports',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.card_giftcard_outlined, color: Colors.grey),
      activeIcon: Icon(Icons.card_giftcard_outlined, color: Colors.purple),
      label: 'Cards',
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_2, color: Colors.grey),
      activeIcon: Icon(Icons.person_2, color: Colors.purple),
      label: 'Profile',
      backgroundColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(205, 90, 7, 214),
                    child: Text(
                      'NS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Welcome back,',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Neazdin Shafiq',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          color: Colors.black87,
                          size: 26,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 6,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Container(
        color: Colors.white,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: const [Screen1(), Screen2(), Screen3(), Screen4()],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: _bottomNavigationBarItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
