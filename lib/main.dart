import 'package:admin_uber_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "(API KEY HERE)",
        authDomain: "uberclone-6857b.firebaseapp.com",
        databaseURL: "https://uberclone-6857b-default-rtdb.firebaseio.com",
        projectId: "uberclone-6857b",
        storageBucket: "uberclone-6857b.appspot.com",
        messagingSenderId: "246513499118",
        appId: "1:246513499118:web:40a6e28fdb24bb4c73acff",
        measurementId: "G-H7PJMZDP69"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SideNavigationDrawer(),
    );
  }
}