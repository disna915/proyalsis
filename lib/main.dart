import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyasis/providers/officer_provider.dart';
import 'package:proyasis/screens/officer_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OfficerProvider()..loadOfficers(),
      child: MaterialApp(
        title: 'Officer Directory',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: const OfficerScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
