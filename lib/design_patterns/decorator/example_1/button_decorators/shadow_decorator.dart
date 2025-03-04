import 'package:design_patterns/design_patterns/decorator/example_1/button_decorator_base_class.dart';
import 'package:flutter/material.dart';

class ShadowButtonDecorator extends ButtonDecorator {
  ShadowButtonDecorator(super.button);

  @override
  Widget build() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: super.build(),
    );
  }
}
