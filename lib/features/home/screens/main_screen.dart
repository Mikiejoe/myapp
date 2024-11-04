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

  void changeScreen(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Colors.red,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(onTap: changeScreen,),
    );
  }
}