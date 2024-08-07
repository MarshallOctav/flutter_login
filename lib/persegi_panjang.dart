import 'package:flutter/material.dart';

void main() {
  runApp(const PersegiPanjang());
}

class PersegiPanjang extends StatelessWidget {
  const PersegiPanjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      color: Color.fromARGB(255, 25, 0, 255),
      child: Center(
        child: Text(
          'ini persegi panjang',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
