import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.only(right:18.0,left:18.0,top: 18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                            Text(
                              "Joseph Omondi",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 24,
                          child: Icon(
                            Icons.person,
                            size: 48,
                            color: Colors.grey.shade200,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: size.height * 0.3,
                width: double.infinity,
                child: Row(children: [
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => Container(
                            width: size.width*0.9,
                            margin: const EdgeInsets.only(left:12),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? Colors.blue
                                  : Colors.teal,
                              borderRadius: BorderRadius.circular(12),
                            ))),
                  )
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
