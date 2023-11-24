import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA9Pr6NsuRV5z8k48IZzhM1nQHACnsiyF0",
            authDomain: "barakafarm-675d4.firebaseapp.com",
            projectId: "barakafarm-675d4",
            storageBucket: "barakafarm-675d4.appspot.com",
            messagingSenderId: "395515047188",
            appId: "1:395515047188:web:c7204bc51b980023a5a601"));
  } else {
    await Firebase.initializeApp();
  }
}
