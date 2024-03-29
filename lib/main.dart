import 'package:flutter/material.dart';
import 'package:rafik/ui/screens/emergencty_tab_screen.dart';
import 'package:rafik/ui/screens/emergency_state_screen.dart';
import 'package:rafik/ui/screens/home_screen.dart';
import 'package:rafik/ui/screens/informs_screen.dart';
import 'package:rafik/ui/screens/languages_screen.dart';
import 'package:rafik/ui/screens/login_screeen.dart';
import 'package:rafik/ui/screens/memory_screen.dart';
import 'package:rafik/ui/screens/record_screeen.dart';
import 'package:rafik/ui/screens/register_screen.dart';
import 'package:rafik/ui/screens/subscribe_plan_screen.dart';
import 'package:rafik/ui/screens/voice_screen.dart';
import 'package:rafik/ui/widgets/list_widget.dart';

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
       InformsScreen.routeName:(_)=>InformsScreen(),
       HomeScreen.routeName: (_)=>HomeScreen(),
       SubscribeBlan.routeName: (_)=>SubscribeBlan(),
       VoiceScreen.routeName: (_)=>VoiceScreen(),
       RecordScreen.routeName: (_)=>RecordScreen(),
       LanguageScreen.routeName: (_)=>LanguageScreen(),
       ListWidget.routeName: (_)=>ListWidget(),
       EmergencyTab.routeName:(_)=>EmergencyTab(),

       EmergencyState.routeName:(_)=>EmergencyState(),

       //navigation map
       // register screen  ->  Login screen   or Home Screen
       // Home screen bottom nav ->  Emergency tab
       // Emergency tab  slide button at the bottom -> Emergency state
       // inform tab
       // inform tab (text CBC)-> CBC screen

       // go to voice screen through its route name
       // click on voice icon in voice screen -> voice record screen

       // go to subscribe screen through it's route name
       // click on menu icon on top of subscribe screen -> List Widget screen
       // click on language on list widget screen -> Language Screen

       // go to memory screen through it's route name
       // click on upload photo button  -> Upload Photo screen
       //  click on camera icon -> Upload Done screen





     },
      initialRoute: RegisterScreen.routeName,
    );
  }
}