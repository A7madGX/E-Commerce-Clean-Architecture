import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopSection(),
      ],
    );
  }
}
