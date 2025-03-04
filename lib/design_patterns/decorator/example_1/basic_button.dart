import 'package:flutter/material.dart';

import 'button_decorator_base_class.dart';

// 2. Concrete  implementation of the Button interface.




class BasicButton implements Button {
  final String text;
  final void Function()? onPressed;

  BasicButton({required this.text, required this.onPressed});

  @override
  Widget build() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
