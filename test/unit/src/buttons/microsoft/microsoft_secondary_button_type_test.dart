// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/core/widgets/auth_icon.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  group('microsoft secondary button type light mode', () {
    final MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = microsoftAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.microsoft[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = microsoftAuthButton.getIconBackground();
        expect(iconBackground, Colors.white);
      });
      test('iconColor', () {
        Color? iconColor = microsoftAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = microsoftAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = microsoftAuthButton.getButtonColor();
      expect(buttonColor, Colors.amber);
    });
  });

  group('microsoft secondary button type dark mode', () {
    final MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        AuthIcon icon = microsoftAuthButton.getIcon();
        expect(icon.iconUrl, AuthIcons.microsoft[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = microsoftAuthButton.getIconBackground();
        expect(iconBackground, Colors.black12);
      });
      test('iconColor', () {
        Color? iconColor = microsoftAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = microsoftAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = microsoftAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('microsoft check default button style value of', () {
    MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    AuthButtonStyle? style = microsoftAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 12.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, null);
    });
  });

  test('microsoft check text style font size', () {
    final MicrosoftAuthButton microsoftAuthButton =
        MicrosoftAuthButton(onPressed: () {});
    double? fontSize = microsoftAuthButton.getTextStyle().fontSize;
    expect(fontSize, 16.0);
  });

  test('microsoft check text style font family', () {
    final MicrosoftAuthButton microsoftAuthButton = MicrosoftAuthButton(
      onPressed: () {},
      style: const AuthButtonStyle(
        buttonType: AuthButtonType.secondary,
      ),
    );
    TextStyle textStyle = microsoftAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.lato(
        fontWeight: FontWeight.w700,
      ).fontFamily,
    );
  });
}
