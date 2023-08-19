import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/homepageprovider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context, listen: false);
    print('build');
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Consumer<HomePageProvider>(
          builder: (context, snapshot, child) => Text(
            snapshot.count.toString(),
            style: TextStyle(fontSize: 40),
          ),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                heroTag: Text('add'),
                onPressed: () {
                  provider.add();
                },
                child: Icon(Icons.add),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                heroTag: Text('remove'),
                onPressed: () {
                  if (provider.count > 0) {
                    provider.remove();
                  }
                },
                child: Icon(Icons.remove),
              ),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                provider.newhome(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                color: Colors.blue,
                child: Text('home'),
              ),
            )),
      ])),
    );
  }
}
