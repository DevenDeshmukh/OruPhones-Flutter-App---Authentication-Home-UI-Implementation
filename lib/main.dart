import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'AuthProvider.dart';
import 'LoginScreen.dart';
import ' VerifyOTPScreen.dart';
import ' SplashScreen.dart';
import 'ConfirmNameScreen.dart';
import 'productprovider.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OruPhones',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/verify-otp': (context) => VerifyOTPScreen(),
          '/confirm-name': (context) => ConfirmNameScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}