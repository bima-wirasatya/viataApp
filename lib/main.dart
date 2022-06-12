import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viata/view/SignIn/login.dart';
import 'package:viata/view/home_page.dart';
import 'package:viata/view/main_page.dart';
import 'package:viata/view/splash.dart';
import 'package:viata/view/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'main page';
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.light().copyWith(accentColor: Colors.indigo),
      home: HomePage(),
    ),
  );
}
