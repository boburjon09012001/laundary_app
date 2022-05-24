import 'package:flutter/material.dart';
import 'package:laundry_app/models/recipes/recipe_list.dart';
import '../models/recipes/booking_item.dart';

class MainViewModel extends ChangeNotifier{
  int _count = 0;

  final List<BookingItem>  _items = [
    BookingItem(RecipeElement.recipes.elementAt(0), 0),
    BookingItem(RecipeElement.recipes.elementAt(1), 0),
    BookingItem(RecipeElement.recipes.elementAt(2), 0),
    BookingItem(RecipeElement.recipes.elementAt(3), 0),
    BookingItem(RecipeElement.recipes.elementAt(4), 0),
    BookingItem(RecipeElement.recipes.elementAt(5), 0),


  ];

  getBucket(){
    return _items;
  }

  updateBucket(int index , int count){
    _items[index].count = count;
  }

  initCount(int newCount){
    _count = newCount;
  }

  getCount(){
    return _count;
  }
  void increase(){
    _count++;
    notifyListeners();
}
  void decrease(){
    _count--;
    notifyListeners();
  }
}