import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dashboard/view/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff6674bb),
          onPrimary: Color(0xffffffff),
          onSecondary: Color(0xffffffff),
          onSurface: Color(0xff1d1b20),
          primaryContainer: Color(0xffccd4ff),
          secondary: Color(0xfff4f4ff),
          background: Color(0xffe5eaff),
          surface: Color(0xffffffff),
          onBackground: Color(0xff000000),
          onError: Color(0xffffffff),
          error: Color(0xffb3261e),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.baloo2(
            fontSize: 32,
            // fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
          ),
          displaySmall: GoogleFonts.cabin(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          headlineSmall: GoogleFonts.cabin(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          // ···
          titleLarge: GoogleFonts.cabin(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          // displaySmall: GoogleFonts.pacifico(),
        ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     side: MaterialStateProperty.resolveWith<BorderSide>(
        //         (states) => BorderSide(color:  Colors.black)),
        //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //         (states) => Colors.white),
        //     shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
        //       return RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(20));
        //     }),
        //     textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        //         (states) => TextStyle(color: Colors.red)),
        //   ),
        // ),
        useMaterial3: true,
      ),
      home: const NavRailExample(),
    );
  }
}
