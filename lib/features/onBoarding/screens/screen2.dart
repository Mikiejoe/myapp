import 'package:flutter/material.dart';
import 'package:myapp/features/home/screens/main_screen.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/image2.png",
                      width: size.width * 0.3,
                      height: size.height * 0.3,
                    )),
                Text(
                  "Track Your Expenses Effortlessly.",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.grey.shade800,
                      ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Add your expenses in just a few taps and see where your money goes.",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.grey.shade500,fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            minWidth: double.infinity,
            color: Colors.teal,
            padding: const EdgeInsets.symmetric(vertical: 10),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>const MainHomeScreen()
              ));
            },
            child: const Text("Get Started"),
          )
        ],
      ),
    );
  }
}
