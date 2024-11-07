import 'package:flutter/material.dart';

class FinanceCard extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;
  final IconData icon;
  const FinanceCard({super.key, required this.color, required this.title, required this.amount, required this.icon});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.46,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text("KSH $amount"),
            ],
          ),
        ],
      ),
    );
  }
}
