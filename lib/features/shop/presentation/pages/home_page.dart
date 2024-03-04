import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/top_section.dart';

import '../widgets/home_widgets/bottom_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
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
        BottomSection(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
