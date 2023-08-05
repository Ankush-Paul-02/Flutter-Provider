import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:flutter_provider/providers/example_one_provider.dart';
import 'package:flutter_provider/providers/favourite_provider.dart';
import 'package:flutter_provider/screens/favorite/favourite_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: FavouriteScreen(),
      ),
    );
  }
}
