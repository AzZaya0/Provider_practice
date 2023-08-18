import 'package:flutter/material.dart';

class newHome extends StatelessWidget {
  const newHome({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> count = ValueNotifier<int>(0);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: count,
                builder: (context, value, clild) {
                  return Text(count.value.toString());
                }),
            FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
