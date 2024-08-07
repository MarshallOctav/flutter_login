import 'package:flutter/material.dart';

void main() {
  runApp(const Segitiga());
}

class Segitiga extends StatelessWidget {
  const Segitiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      color: Color.fromARGB(255, 2, 141, 211),
      child: Center(
        child: Text(
          'ini segitiga',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
