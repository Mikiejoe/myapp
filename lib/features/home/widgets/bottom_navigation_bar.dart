import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Function(int) onTap;
  final Function showBottomSheet;
  const CustomBottomNavigationBar({super.key, required this.onTap, required this.showBottomSheet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              onPressed: () => onTap(0),
              icon: const Icon(Icons.home),
            ),
          ),

          // Icon for expenses
          Expanded(
            child: IconButton(
              onPressed: () => onTap(1),
              icon: const Icon(Icons.bar_chart,),
            ),
          ),
          // Icon for categories
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () => showBottomSheet(),
                icon: const Icon(Icons.add),
              ),
            ),
          ),
          // Icon for budget
          Expanded(
            child: IconButton(
              onPressed: () => onTap(3),
              icon: const Icon(Icons.attach_money_rounded),
            ),
          ),
          // Icon for profile

          Expanded(
            child: IconButton(
              onPressed: () => onTap(4),
              icon: const Icon(Icons.person_2_outlined),
            ),
          ),

          // Icon for budgets

          // Icon for settings
        ],
      ),
    );
  }
}
