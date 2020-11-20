import 'package:flutter/foundation.dart';
import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _item = [];

  List<Place> get item {
    return [..._item];
  }


  
}
