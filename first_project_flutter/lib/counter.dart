import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {});
                count--;
              },
              icon: Text('MINUS', style: TextStyle(fontSize: 30)),
            ),
            SizedBox(width: 20),
            Text(count.toString(), style: TextStyle(fontSize: 50)),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {
                setState(() {});
                count++;
              },
              icon: Text('PLUS', style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
