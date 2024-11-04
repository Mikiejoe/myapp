import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey)),
                          Text("Joseph Omondi",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 24,
                        child: Icon(Icons.person,size: 48,color: Colors.grey.shade200,),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
