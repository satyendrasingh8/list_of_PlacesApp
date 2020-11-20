import 'package:List_of_placesApp/helpers/db_helper.dart';
import 'package:flutter/foundation.dart';
import '../models/place.dart';
import 'dart:io';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, File pickedImage) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        image: pickedImage,
        title: pickedTitle,
        location: null);
    _items.add(newPlace);
    notifyListeners();
    DBHelper.insert('places', {
      'id':newPlace.id,
      'title':newPlace.title,
      'image':newPlace.image.path,
    });
  }
}
