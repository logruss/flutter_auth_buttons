import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading;

  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const String appName = 'Auth Buttons Example';
    const bool darkMode = false;
    const AuthButtonStyleType authButtonStyleType = AuthButtonStyleType.icon;
    const AuthIconStyle authIconStyle = AuthIconStyle.outlined;
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
        ),
        body: Container(
          width: double.infinity,
          color: darkMode ? const Color(0xff303030) : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleAuthButton(
                onPressed: () {
                  // your implementation
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              EmailAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
              const Divider(),
              HuaweiAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
