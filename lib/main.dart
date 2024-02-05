import 'package:expense_tracker/widgets/expenses.dart';
//Prevent app from being in landscape mode-->basically lock the screen to a desired orientation.
//Starts here
// import 'package:flutter/services.dart';
//Ends here
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.purple.shade700);
// var kDarkColorScheme = ColorScheme.fromSeed(
//   seedColor: Colors.black54,
//   brightness: Brightness.dark,
// );

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onSecondaryContainer,
          foregroundColor: kColorScheme.onPrimary,
        ),
        cardTheme: const CardTheme().copyWith(
          margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
          color: kColorScheme.primaryContainer,
        ),
        textTheme: const TextTheme().copyWith(
          bodyMedium: const TextStyle(color: Colors.black),
          titleMedium: const TextStyle(fontSize: 15, color: Colors.purple),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    );
  }
}
