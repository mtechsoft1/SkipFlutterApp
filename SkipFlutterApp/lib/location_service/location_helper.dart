import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocationHelper {
  static Future<void> getLocation(BuildContext context) async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled, request the user to enable it
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Location Service Disabled"),
              content: Text("Please enable location services to use this app."),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        throw 'Location permissions are permanently denied, we cannot request permissions.';
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Position position = await Geolocator.getCurrentPosition();
        // Save location to the database
        await _saveLocationToDatabase(position);
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> _saveLocationToDatabase(Position position) async {
    try {
      // Open the database
      final database = openDatabase(
        join(await getDatabasesPath(), 'location_database.db'),
        onCreate: (db, version) {
          // Create the table to store locations
          return db.execute(
            "CREATE TABLE locations(id INTEGER PRIMARY KEY AUTOINCREMENT, latitude REAL, longitude REAL)",
          );
        },
        version: 1,
      );

      // Insert the location into the database
      await (await database).insert(
        'locations',
        {
          'latitude': position.latitude,
          'longitude': position.longitude,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      print('Error saving location to database: $e');
    }
  }

  static Future<void> _queryDatabase() async {
    try {
      final database = openDatabase(
        join(await getDatabasesPath(), 'location_database.db'),
      );

      final List<Map<String, dynamic>> locations =
          await (await database).query('locations');
      print('Saved Locations:');
      for (var location in locations) {
        print(
            'Latitude: ${location['latitude']}, Longitude: ${location['longitude']}');
      }
    } catch (e) {
      print('Error querying database: $e');
    }
  }
}
