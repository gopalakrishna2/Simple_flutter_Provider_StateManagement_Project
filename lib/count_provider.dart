import 'Package:flutter/material.dart';

class CountListProvider extends ChangeNotifier{
  List<int> count = [1, 2, 3];
  void add(){
    
    int last = count.last;
    count.add(last + 1);
    notifyListeners();
  }

}