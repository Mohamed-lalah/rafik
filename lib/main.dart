import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/home_screen.dart';
import 'package:rafik/ui/screens/login_screeen.dart';
import 'package:rafik/ui/screens/memory_screen.dart';
import 'package:rafik/ui/screens/register_screen.dart';
import 'package:rafik/ui/screens/subscribe_plan_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes:{
       LoginScreen.routeName: (_)=>LoginScreen(),
       RegisterScreen.routeName: (_)=>RegisterScreen(),
       MemoryScreen.routeName: (_)=>MemoryScreen(),
       SubscribeBlan.routeName: (_)=>SubscribeBlan(),
       HomeScreen.routeName: (_)=>HomeScreen(),


     },
      initialRoute: HomeScreen.routeName,
    );
  }
}