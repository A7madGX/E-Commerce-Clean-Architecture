import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/favourites_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/home_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/profile_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/store_page.dart';

class SelectedPageProvider extends ChangeNotifier {
  List<Widget> pages = const [
    HomePage(),
    StorePage(),
    FavouritesPage(),
    ProfilePage(),
  ];

  int selectedPage = 0;
  final int maxPage = 3;
  final PageController pageController = PageController();

  void changePage(int newValue) {
    selectedPage = newValue;
    notifyListeners();
  }

  void changePageFromNavBar(int newValue) {
    changePage(newValue);
    pageController.animateToPage(
      newValue,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}
