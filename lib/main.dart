import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:flutter_provider/screens/count_example_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountProvider>(
      create: (context) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CountExampleScreen(),
      ),
    );
  }
}

