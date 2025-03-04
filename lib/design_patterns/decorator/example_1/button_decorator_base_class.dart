import 'package:flutter/material.dart';

// 1. abstract base class that defines the interface for a button.
abstract class Button {
  Widget build();
}

// 3. abstract class for the decorator that will extend the Button class and allow modifications.

abstract class ButtonDecorator implements Button {
  final Button button;

  ButtonDecorator(this.button);

  @override
  Widget build() {
    return button.build();
  }
}
