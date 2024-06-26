
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_editor_gsoc/controllers/controllers.dart';
import 'package:firebase_editor_gsoc/controllers/user_controller.dart';
import 'package:firebase_editor_gsoc/views/circle_widget.dart';
import 'package:firebase_editor_gsoc/views/custom_drawer.dart';
import 'package:firebase_editor_gsoc/views/define_schema.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_profile.dart';

class HomeScreen extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final userController = Get.put(UserController());
  final accessController = Get.put(AccessController());


  // handle logout
  void _handleLogout() {
    try {
      _auth.signOut();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.handyman),
            Text("Under Development",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.grey,
                  fontSize: 30.0
              ),
            ),
                      ],
        ),
      ),
    );
  }
}