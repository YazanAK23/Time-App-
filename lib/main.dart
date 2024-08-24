import 'package:flutter/material.dart';
import 'package:flutter_youtube_training/pages/choose_location.dart';
import 'package:flutter_youtube_training/pages/home.dart';
import 'package:flutter_youtube_training/pages/loading.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) =>  Home(),
    '/location': (context) => ChooseLocation(),
    
  }
));