import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-ElZGfAs-Dhq8ZkYVtICYpspzFBdhE-U",
            authDomain: "placement-database-app.firebaseapp.com",
            projectId: "placement-database-app",
            storageBucket: "placement-database-app.appspot.com",
            messagingSenderId: "937378620114",
            appId: "1:937378620114:web:7280dd08782110198d830b",
            measurementId: "G-PNZ2PQ068L"));
  } else {
    await Firebase.initializeApp();
  }
}
