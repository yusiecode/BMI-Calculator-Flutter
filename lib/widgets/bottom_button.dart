import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
          color: const Color(0xFFEB1555),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
