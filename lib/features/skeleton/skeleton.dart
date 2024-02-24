import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/skeleton/providers/selected_page_provider.dart';
import 'package:provider/provider.dart';

import 'widgets/custom_bottom_bar_widget.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedPageProvider>(builder: (context, pageController, _) {
      return Scaffold(
        body: PageView(
          onPageChanged: (index) {
            pageController.changePage(index);
          },
          controller: pageController.pageController,
          children: pageController.pages,
        ),
        bottomNavigationBar: const CustomBottomBarWidget(),
      );
    });
  }
}
