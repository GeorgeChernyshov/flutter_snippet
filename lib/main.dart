import 'package:flutter/material.dart';
import 'package:flutter_snippet/home/crane_home.dart';
import 'package:flutter_snippet/ui/crane_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Snippet',
        theme: craneTheme,
        home: CraneHome(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}