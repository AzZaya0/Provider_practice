import 'package:flutter/material.dart';

class newHome extends StatelessWidget {
  const newHome({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    //=------------------------ This the The another way to use provider ---------------=\\
    ValueNotifier<int> count =
        ValueNotifier<int>(0); //value notifier to set veriables

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                //value listenable builder is use  to build specific part of UI which should be
                //build rather than building the entire scaffold
                valueListenable: count,
                builder: (context, value, clild) {
                  return Center(
                    child: Text(
                      count.value.toString(),
                      style: TextStyle(fontSize: 40),
                    ),
                  );
                }),
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  count.value++;
                })
          ],
        ),
      ),
    );
  }
}
