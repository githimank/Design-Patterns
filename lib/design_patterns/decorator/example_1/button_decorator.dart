import 'package:flutter/material.dart';

import 'basic_button.dart';
import 'button_decorators/border_decorator.dart';
import 'button_decorators/shadow_decorator.dart';

class ButtonDecorator extends StatelessWidget {
  const ButtonDecorator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ShadowButtonDecorator(
              BorderButtonDecorator(
                BasicButton(
                  onPressed: () {},
                  text: '',
                ),
              ),
            ).build(),
          ),
          Center(
            child: BorderButtonDecorator(
              BasicButton(
                onPressed: () {},
                text: '',
              ),
            ).build(),
          ),
        ],
      ),
    );
  }
}
