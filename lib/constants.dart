import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/add_video_screen.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/video_screen.dart';
import 'controllers/auth_controller.dart';

List pages = [
  VideoScreen(),
  Text('Search Screen'),
  const AddVideoScreen(),
  Text('Messages Screen'),
  Text('Profile'),
];

//COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER
var  authController = AuthController.instance;

