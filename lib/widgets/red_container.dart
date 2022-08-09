import 'package:flutter/material.dart';

class RedContainer extends StatelessWidget {
  const RedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(width: 2, color: Colors.yellow),
      ),
      child: const Icon(Icons.no_accounts),
    );
  }
}