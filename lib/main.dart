import 'package:being_chuffed/homepage.dart';
import 'package:being_chuffed/pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BeingChuffed());
}

class BeingChuffed extends StatelessWidget {
  const BeingChuffed({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Being Chuffed',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 71, 71, 191),
        textTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: '--apple-system',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/persona': (context) => const Persona(),
        '/scope': (context) => const Scope(),
      },
    );
  }
}
