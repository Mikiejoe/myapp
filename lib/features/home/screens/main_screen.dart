import 'package:flutter/material.dart';
import 'package:myapp/features/home/screens/add_expense_screen.dart';
import 'package:myapp/features/home/screens/budget_screen.dart';
import 'package:myapp/features/home/screens/expense_screen.dart';
import 'package:myapp/features/home/screens/home_screen.dart';
import 'package:myapp/features/home/screens/profile_screen.dart';
import 'package:myapp/features/home/widgets/bottom_navigation_bar.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const ExpenseScreen(),
    const AddExpenseScreen(),
    const BudgetScreen(),
    const ProfileScreen()
  ];
  int _selectedIndex = 0;

  void changeScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void show() {
    final double height = MediaQuery.of(context).size.height * 0.4;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20,),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          // height: 200, // Set your desired height
          child: GridView.builder(
            gridDelegate:   SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: height*0.8,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: height*0.4,
            ),
            itemCount: 4,
            itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20,
                  ),
                ),
                height: 200,
                width: 200,
                ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          onTap: changeScreen,
          showBottomSheet: show,
        ),
      ),
    );
  }
}
