import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:test_app/controllers/music_controller.dart';
import 'package:test_app/screens/music_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.cyan));
    return MaterialApp(
      title: 'Flutter Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.blueAccent,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MusicController(),
        child: const MusicScreen(),
      ),
    );
  }
}
