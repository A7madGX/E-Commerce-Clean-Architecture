import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/top_section.dart';

import '../widgets/home_widgets/bottom_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: TopSection(),
          expandedHeight: 300,
          automaticallyImplyLeading: false,
          collapsedHeight: 70,
        ),
        SliverToBoxAdapter(child: BottomSection()),
      ],
    );
  }
}
