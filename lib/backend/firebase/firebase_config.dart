import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB1L8tfKIoFqhqzF0GniGR3izmqDq2ILlg",
            authDomain: "umtc-dee.firebaseapp.com",
            projectId: "umtc-dee",
            storageBucket: "umtc-dee.appspot.com",
            messagingSenderId: "732954617781",
            appId: "1:732954617781:web:f62bd092f1e9e09553dbfc"));
  } else {
    await Firebase.initializeApp();
  }
}
