import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subTitle;
  final String trailingTitle;
  final String trailingSubTitle;

  const CustomListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle,
      required this.trailingTitle,
      required this.trailingSubTitle});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(8),
        height: size.height * 0.15,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: size.width * 0.2,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.greenAccent.shade200, shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 54,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  trailingSubTitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  trailingTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
