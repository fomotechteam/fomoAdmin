import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAUlvF6o3GSMZnp3GeBqjX1mxtVjwzT2r8",
            authDomain: "fomo-93c6d.firebaseapp.com",
            projectId: "fomo-93c6d",
            storageBucket: "fomo-93c6d.appspot.com",
            messagingSenderId: "1059756947863",
            appId: "1:1059756947863:web:02561082275a7a7fc16cd2",
            measurementId: "G-Q6EMMVN1EC"));
  } else {
    await Firebase.initializeApp();
  }
}
