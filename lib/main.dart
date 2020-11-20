import 'package:List_of_placesApp/providers/great_places.dart';
import 'package:List_of_placesApp/screens/add_place_screen.dart';
import 'package:List_of_placesApp/screens/places_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
          child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
         
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()
        },
      ),
    );
  }
}
