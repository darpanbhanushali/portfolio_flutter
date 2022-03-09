import 'package:flutter/material.dart';
import 'package:portfolio_flutter/Services/selectedTab.dart';
import 'package:portfolio_flutter/screens/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Darpan\'s Personal Profile Resume',
      theme: ThemeData(
        primaryColor: Color(0xFF2E2555),
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<SelectedTab>(
        create: (BuildContext context) => SelectedTab(),
        child: MainPage(),
      ),
    );
  }
}
