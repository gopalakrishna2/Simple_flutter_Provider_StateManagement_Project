import "Package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:providers/count_provider.dart";
import "package:providers/first.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CountListProvider())],
      child: const MaterialApp(
        home: Providers(),
      ),
    );
  }
}
