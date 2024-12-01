import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
        maximumSize: const Size(250, 50),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
