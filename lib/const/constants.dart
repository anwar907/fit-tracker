import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tracker/controller/auth_controller.dart';

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialize = Firebase.initializeApp();
FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
