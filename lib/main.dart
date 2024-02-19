import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauth/controllers/auth_controller.dart';
import 'package:firebaseauth/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {

   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyAKYKcTheasaCX9WFnbukWDDT0fh6SUUPk', 
    appId: '1:1005614636731:android:1c71834ee26591c793139e', 
    messagingSenderId: '1005614636731', 
    projectId: "fir-auth-47279")).then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}



