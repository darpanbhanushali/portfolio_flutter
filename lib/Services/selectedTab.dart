import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SelectedTab extends ChangeNotifier {
  String currentTab = 'home';
  updateSelectedTab(String tabSelected) {
    currentTab = tabSelected;
    print(currentTab);
    notifyListeners();
  }
}
