import 'package:flutter/material.dart';

class CheckoutButtonSection extends StatelessWidget {
  const CheckoutButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
    );
  }
}
