import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  var counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter >= 20) {
        final snackBar = SnackBar(
          content: const Text('Dah ah cape!!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        counter++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter < 1) {
        final snackBar = SnackBar(
          content: const Text('Tuluy we dikurangan!!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 0, 162, 255),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Perulangan ke : ',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Text(
            '$counter',
            style: TextStyle(
              fontSize: counter.toDouble() * 2.5,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  incrementCounter();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  decrementCounter();
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
