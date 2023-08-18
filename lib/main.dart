import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/homepageprovider.dart';
import 'package:provider_practice/screen/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ),
        providers: [ChangeNotifierProvider(create: (_) => HomePageProvider())]);
  }
}
