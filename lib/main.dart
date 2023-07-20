import 'dart:convert';
import 'vsjgooglesignin.dart';
// import 'package:firebasedemo/VsjTwo.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  //while(true)
  {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
    } catch (e) {}
  }
  runApp(FirebaseDemo());
}

class FirebaseDemo extends StatefulWidget {
  // static FirebaseFirestore firestoredb; //=FirebaseFirestore.instance;
  @override
  _FirebaseDemoState createState() => _FirebaseDemoState();
}

class _FirebaseDemoState extends State<FirebaseDemo> {
  String username = "", chatmessage = "", status = "Messages";
  TextEditingController textcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    firebaseInit();
  }

  void firebaseInit() {
    try {
      //Firebase.initializeApp().whenComplete(() {

      // print("Initialized");
      // });
      // FirebaseDemo.firestoredb = FirebaseFirestore.instance;
    } catch (ee) {
      print(ee);
    }
  }

  _FirebaseDemoState() {}
  String firebasedata = "data";

  //*****************************************************************************

  //*****************************************************************************

  //*****************************************************************************

  //*****************************************************************************

  //*****************************************************************************

  String loginfo = "Varanasi Software Junction";
  String data = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text(loginfo),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(data),
              ElevatedButton(
                  onPressed: () async {
                    await VsjGoogleSignIn.doSignIn();
                  },
                  child: const Text("sign in")),
              ElevatedButton(
                  onPressed: () async {
                    await VsjGoogleSignIn.doSignOut();
                    User? user = VsjGoogleSignIn.getUser();
                    if (user == null) {
                      data = "null";
                    } else {
                      data = user.displayName!;
                    }
                    setState(() {});
                  },
                  child: const Text("sign out"))
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
