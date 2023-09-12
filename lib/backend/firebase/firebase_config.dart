import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGanSAs-sCdh39uFDCZqCSmJFNBnG-2a4",
            authDomain: "momok-fcc18.firebaseapp.com",
            projectId: "momok-fcc18",
            storageBucket: "momok-fcc18.appspot.com",
            messagingSenderId: "674312208466",
            appId: "1:674312208466:web:130f6760ad43ebba561f8b",
            measurementId: "G-XBCPD2R3Q1"));
  } else {
    await Firebase.initializeApp();
  }
}
