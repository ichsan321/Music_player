import 'package:flutter/material.dart';

class TextSubTitle extends StatelessWidget {
  final String title;

  const TextSubTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 11,
        color: Color.fromARGB(255, 129, 124, 124),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
