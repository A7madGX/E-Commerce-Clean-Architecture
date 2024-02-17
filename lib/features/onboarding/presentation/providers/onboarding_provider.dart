import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  PageController pageCtrl = PageController();
  static const int maxPage = 2;
  int pageIndex = 0;

  void updatePageIndex(int index) {
    pageIndex = index;
    notifyListeners();
  }

  void scrollToPage(int index) {
    pageCtrl.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
    pageIndex = index;
    notifyListeners();
  }

  void nextPage() {
    if (pageIndex < maxPage) {
      pageIndex++;
      scrollToPage(pageIndex);
      notifyListeners();
    } else {
      // Go to login page
    }
  }

  void skipPage() {
    pageIndex = maxPage;
    scrollToPage(pageIndex);
    notifyListeners();
  }
}
