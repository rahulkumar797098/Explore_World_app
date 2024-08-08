import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class UserUpdateScreen extends StatefulWidget {
  const UserUpdateScreen({super.key});

  @override
  State<UserUpdateScreen> createState() => _UserUpdateScreenState();
}

class _UserUpdateScreenState extends State<UserUpdateScreen> {
  String _currentLocation = "Unknown";
  TextEditingController locationController = TextEditingController();
  File? _image;
  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }



  Future<void> _checkPermissions() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      await _getCurrentLocation();
    } else {
      setState(() {
        _currentLocation = "Location permission is denied.";
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Reverse geocoding to get address from coordinates
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      Placemark place = placemarks[0];
      String location = " ${place.locality}, ${place.administrativeArea}, ${place.country}";
        _currentLocation = location;
        locationController.text = location; // Set the location in the TextField

    } catch (e) {
      setState(() {
        _currentLocation = "Failed to get location: ${e.toString()}";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: _image!= null ? DecorationImage(
                      image: FileImage(_image!),
                      fit: BoxFit.cover,
                    ) : const DecorationImage(
                      image: AssetImage("assets/icon/devrahul.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(18),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child:  IconButton(
                      color: Colors.green,
                      onPressed: () async {
                        final picker = ImagePicker();
                        final pickedFile = await picker.pickImage(source: ImageSource.gallery);

                        if (pickedFile != null) {
                          setState(() {
                            _image = File(pickedFile.path);
                          });
                        }
                      },
                      icon: Icon(Icons.image , size: 30,),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("Name"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2, color: Colors.blue),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 2, color: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: locationController, // Attach the controller here
                      decoration: InputDecoration(
                        label: const Text("Location"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 2, color: Colors.blue),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 2, color: Colors.blue),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 2, color: Colors.blue),
                        ),
                        prefixIcon: const Icon(Icons.location_on_sharp, size: 25, color: Colors.red,),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.green)
                    ),
                    child: IconButton(
                      onPressed: _getCurrentLocation,
                      icon: const Icon(Icons.my_location, size: 25, color: Colors.red,),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
