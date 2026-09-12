import 'package:flutter/material.dart';

class TextFieldCustomizer extends StatelessWidget {
  final String hntText;
  final TextEditingController? controller;
   TextFieldCustomizer({super.key, required this.hntText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: controller,
                  decoration: InputDecoration(
                    hintText: hntText,
                    
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
            );
  }
}