import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({Key? key, required this.errors}) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => Text(errors[index]!)
      ),
    );
  }
}
