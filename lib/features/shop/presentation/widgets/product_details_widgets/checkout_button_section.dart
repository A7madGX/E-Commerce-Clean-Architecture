import 'package:flutter/material.dart';

import '../../pages/checkout_page.dart';

class CheckoutButtonSection extends StatelessWidget {
  const CheckoutButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const CheckoutPage()));
          },
          child: const Text('Checkout')),
    );
  }
}
