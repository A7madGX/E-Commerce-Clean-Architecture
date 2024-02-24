import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/skeleton/providers/selected_page_provider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class CustomBottomBarWidget extends StatelessWidget {
  const CustomBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedPageProvider>(builder: (context, pageController, _) {
      return NavigationBar(
        selectedIndex: pageController.selectedPage,
        elevation: 0,
        onDestinationSelected: (index) {
          pageController.changePageFromNavBar(index);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      );
    });
  }
}
