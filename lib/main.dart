import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'app.dart';


final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.blue,
  accentColor: Colors.cyan[400],
);

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: defaultTargetPlatform == TargetPlatform.iOS         //new
          ? kIOSTheme                                              //new
          : kDefaultTheme,
        home: App(),
      ),
    );

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatScreen();
  }
}
