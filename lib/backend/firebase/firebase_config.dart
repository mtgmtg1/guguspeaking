import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCiER_aaDWGWQQhqbDU6ge0H_v1oskBki0",
            authDomain: "ttspeaking-376f0.firebaseapp.com",
            projectId: "ttspeaking-376f0",
            storageBucket: "ttspeaking-376f0.appspot.com",
            messagingSenderId: "576758613365",
            appId: "1:576758613365:web:af5915eb348f957e893f3c",
            measurementId: "G-Q7KZBM5PFT"));
  } else {
    await Firebase.initializeApp();
  }
}
