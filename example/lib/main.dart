// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = false;
  bool darkMode = true;

  AuthButtonType? buttonType;
  AuthIconType? iconType;

  @override
  Widget build(BuildContext context) {
    const String appName = 'Auth Buttons Example';
    Divider _divider = const Divider(height: 24);
    return MaterialApp(
      title: appName,
      themeMode: (darkMode) ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _chooseButtonType(),
              _chooseIconType(),
              const SizedBox(height: 24),
              GoogleAuthButton(
                onPressed: () {
                  // your implementation
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              AppleAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              FacebookAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              GithubAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              MicrosoftAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              TwitterAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              EmailAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              _divider,
              HuaweiAuthButton(
                onPressed: () {},
                darkMode: darkMode,
                isLoading: isLoading,
                style: AuthButtonStyle(
                  buttonType: buttonType,
                  iconType: iconType,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chooseButtonType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Button Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthButtonType?>(
                    value: null,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.secondary,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('icon'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.icon,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chooseIconType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Icon Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthIconType?>(
                    value: null,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('outlined'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.outlined,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.secondary,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
