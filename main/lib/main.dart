import 'package:flutter/material.dart';
import 'package:main/customer.dart';
import 'package:main/services/coffee_service.dart';
import 'package:main/starbucks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(
      create: (context) => CoffeeService(),
    ),
    ProxyProvider<CoffeeService, Starbucks>(
      update: (_, coffeeService, __) => Starbucks(coffeeService),
    )
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Customer()
    );
  }
}
