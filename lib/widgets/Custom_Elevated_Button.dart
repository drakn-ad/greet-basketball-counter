import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final int? points;
  final void Function() onPressed;
  const CustomElevatedButton({super.key, this.points, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFFF9800),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    ), 
    child: Text(
      points != null ? 'Add $points points' : 'Reset'),
    );
  }
}