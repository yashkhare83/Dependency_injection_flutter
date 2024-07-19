import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main/starbucks.dart';
import 'package:provider/provider.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    final starbucks = Provider.of<Starbucks>(context);

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(starbucks.serveCoffee()),
      )),
    );
  }
}
