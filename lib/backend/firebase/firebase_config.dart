import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAebFCVGqdsNuf7alsrTeEoIkKKgYBUeQo",
            authDomain: "tutoria-uc-1due6e.firebaseapp.com",
            projectId: "tutoria-uc-1due6e",
            storageBucket: "tutoria-uc-1due6e.appspot.com",
            messagingSenderId: "502213677",
            appId: "1:502213677:web:a96840b1b36d293f5a5ca4"));
  } else {
    await Firebase.initializeApp();
  }
}
