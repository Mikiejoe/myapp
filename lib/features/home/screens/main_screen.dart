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

  final List<IconData> _list = [
     Icons.attach_money_outlined,
     Icons.attach_money_outlined,
     Icons.wallet,
     Icons.wallet,
  ];

  void show() {
    final double height = MediaQuery.of(context).size.height * 0.7;
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: height,
          padding: EdgeInsets.only(
            top: 8,
            right: height * 0.04,
            left: height * 0.04,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          // height: 200, // Set your desired height
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Add Transaction", style: TextStyle(fontSize: 20),),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: height * 0.5,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent:150,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      boxShadow: [
                        BoxShadow(
                          // offset: Offset.fromDirection( 10,),
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          // offset: Offset.fromDirection( 10,),
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          // offset: Offset.fromDirection( 10,),
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          // offset: Offset.fromDirection( 10,),
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    height: 200,
                    width: 200,
                    child: Icon(_list[index],size: 48,color: Colors.blueAccent,),
                  ),
                ),
              ),
            ],
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
