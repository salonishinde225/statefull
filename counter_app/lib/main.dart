import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State createState() => _CounterAppState();
}

class _CounterAppState extends State {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home :Scaffold(
        appBar: AppBar(
          title: const Text("CounterApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            "$_count",
            style: const TextStyle(fontSize: 40), 
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}









