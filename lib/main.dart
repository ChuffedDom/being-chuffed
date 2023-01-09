import 'package:being_chuffed/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Being Chuffed',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 60, 71, 197),
        textTheme: GoogleFonts.latoTextTheme(),
        fontFamily: '--apple-system',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
    );
  }
}

class UnderConstruction extends StatelessWidget {
  const UnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Being Chuffed",
          style: GoogleFonts.raleway(
            fontSize: 48,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "🚧 UNDER CONSTRUCTION 🚧",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 15),
              const Text(
                  "This site is currently building something special. To find out more contact:"),
              Text(
                "dom@chuffed.solutions",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
