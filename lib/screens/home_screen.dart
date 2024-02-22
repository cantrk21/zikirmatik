import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF191919),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                Positioned(
                  top: 47,
                  right: 80,
                  child: _counterText(),
                ),
                Positioned(
                  bottom: 25,
                  child: _incrementButton(),
                ),
                Positioned(
                  right: 76,
                  bottom: 114,
                  child: _resetButton(),
                )
              ]),
            ],
          ),
        ));
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: () => _resetCounter(),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: () => _incrementCounter(),
      child: Container(
        width: 104,
        height: 100,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    );
  }

  Text _counterText() {
    return Text(
      '$_counter',
      style: const TextStyle(
        fontFamily: 'Digital7',
        fontSize: 50,
        color: Colors.white,
      ),
    );
  }
}
