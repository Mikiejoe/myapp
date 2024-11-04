import 'dart:async'; // Import the async library for Timer
import 'package:flutter/material.dart';
import 'package:myapp/features/onBoarding/screens/screen1.dart';
import 'package:myapp/features/onBoarding/screens/screen2.dart';
import 'package:myapp/features/onBoarding/screens/screen3.dart';
import 'package:myapp/features/onBoarding/screens/screen4.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
  ];
  final Duration duration = const Duration(milliseconds: 300);
  final Curve curve = Curves.ease;
  Timer? _timer; // Timer instance

  @override
  void initState() {
    super.initState();
    // Start the automatic page change
    // _startAutoPageChange();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoPageChange() {
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      // Calculate the next page index
      int nextPage = (_pageController.page!.toInt() + 1) % _pages.length;

      // Animate to the next page
      _pageController.animateToPage(
        nextPage,
        duration: duration,
        curve: curve,
      );
    });
  }

  void onPageChanged(int index) {
    // Optional: You can add functionality here if needed when a page is changed
    if (index >= _pages.length) {
      debugPrint('Index is greater than pages length');
    }
    setState(() {}); // This setState can be optional in this context
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController, // Set the controller
        onPageChanged: onPageChanged,
        children: _pages,
      ),
    );
  }
}
