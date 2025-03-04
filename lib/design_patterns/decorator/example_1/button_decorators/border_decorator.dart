import 'package:design_patterns/design_patterns/decorator/example_1/button_decorator_base_class.dart';
import 'package:flutter/material.dart';

class BorderButtonDecorator extends ButtonDecorator {
  BorderButtonDecorator(super.button);

  @override
  Widget build() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: super.build(),
    );
  }
}
