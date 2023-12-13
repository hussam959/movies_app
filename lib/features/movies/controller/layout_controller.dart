import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/core/utils/app_strings.dart';

import '../view/layout/home_screen.dart';
import '../view/layout/search_screen.dart';
import '../view/layout/wishlist_screen.dart';

class LayoutController extends GetxController {
  RxInt currentIndex = 0.obs;
  changeIndex(i) {
    currentIndex.value = i;
  }

  RxList<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: AppStrings.home),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: AppStrings.search),
    BottomNavigationBarItem(
        icon: Icon(Icons.label_important_outline_rounded), label: AppStrings.wishList),
  ].obs;

  RxList<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const WishListScreen(),
  ].obs;
}
