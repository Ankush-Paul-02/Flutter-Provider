import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/auth_provider.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:flutter_provider/providers/example_one_provider.dart';
import 'package:flutter_provider/providers/favourite_provider.dart';
import 'package:flutter_provider/providers/theme_changer_provider.dart';
import 'package:flutter_provider/screens/auth/login_screen.dart';
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
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: Provider.of<ThemeChangerProvider>(context).getThemeMode,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          home: const LoginScreen(),
        ),
      ),
    );
  }
}
