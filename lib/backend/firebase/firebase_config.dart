import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA4VwoJlkdI8YHKBP7oV9kqm0zLmpqKUjA",
            authDomain: "esquadrao-vendas-183ffj.firebaseapp.com",
            projectId: "esquadrao-vendas-183ffj",
            storageBucket: "esquadrao-vendas-183ffj.appspot.com",
            messagingSenderId: "774301598894",
            appId: "1:774301598894:web:7e122e6dec66078035993f"));
  } else {
    await Firebase.initializeApp();
  }
}
