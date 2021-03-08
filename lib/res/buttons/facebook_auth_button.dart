// Copyright 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart=2.12

import 'package:auth_buttons/res/shared/auth_button.dart';
import 'package:auth_buttons/res/shared/auth_colors.dart';
import 'package:auth_buttons/res/shared/auth_icons.dart';
import 'package:auth_buttons/res/shared/auth_style.dart';
import 'package:flutter/material.dart';

class FacebookAuthButton extends AuthButton {
  FacebookAuthButton({
    Key? key,
    required VoidCallback onPressed,
    Color? buttonColor,
    Color? splashColor,
    double? elevation,
    double? borderRadius = 8.0,
    EdgeInsets? padding,
    String text = 'Sign in with Facebook',
    TextStyle? textStyle,
    bool darkMode = false,
    Color? borderColor,
    double? borderWidth,
    AuthButtonStyle? style,
    double? width,
    double? height,
    double? iconSize = 35.0,
    double? separator = 10.0,
    bool rtl = false,
    Color? iconBackground,
    AuthIconStyle? iconStyle,
    VoidCallback? onLongPressed,
    Color? shadowColor,
    bool isLoading = false,
    Color? progressIndicatorColor,
    Color? progressIndicatorValueColor,
    double? progressIndicatorStrokeWidth,
    double? progressIndicatorValue,
  }) : super(
          key: key ?? ValueKey('FacebookAuthButton'),
          onPressed: onPressed,
          buttonColor: buttonColor,
          splashColor: splashColor,
          elevation: elevation,
          borderRadius: borderRadius,
          padding: padding,
          text: text,
          textStyle: textStyle,
          darkMode: darkMode,
          borderColor: borderColor,
          borderWidth: borderWidth,
          style: style,
          width: width,
          height: height,
          iconSize: iconSize,
          separator: separator,
          rtl: rtl,
          iconBackground: iconBackground,
          iconStyle: iconStyle,
          onLongPress: onLongPressed,
          shadowColor: shadowColor,
          isLoading: isLoading,
          progressIndicatorColor: progressIndicatorColor,
          progressIndicatorValueColor: progressIndicatorValueColor,
          progressIndicatorStrokeWidth: progressIndicatorStrokeWidth,
          progressIndicatorValue: progressIndicatorValue,
        );

  @override
  Color? getProgressIndicatorValueColor() {
    if (style == AuthButtonStyle.secondary) return AuthColors.facebook;
    if (style != AuthButtonStyle.secondary) return Color(0xff567de9);
  }

  @override
  String getIconUrl() {
    if (iconStyle == AuthIconStyle.outlined)
      return (darkMode) ? AuthIcons.facebookWhite[1] : AuthIcons.facebook[1];
    if (iconStyle == AuthIconStyle.secondary) return AuthIcons.facebook[2];
    return AuthIcons.facebookWhite[0];
  }

  @override
  Color getButtonColor() {
    if (style == AuthButtonStyle.secondary)
      return buttonColor ??
          (darkMode ? AuthColors.darkMode : AuthColors.facebook);
    if (iconStyle == AuthIconStyle.secondary)
      return buttonColor ?? (darkMode ? AuthColors.darkMode : Colors.white);
    return buttonColor ??
        (darkMode ? AuthColors.darkMode : AuthColors.facebook);
  }

  @override
  TextStyle getTextStyle() {
    if (iconStyle == AuthIconStyle.secondary && style == null)
      return TextStyle(
        color: darkMode ? Colors.white : Colors.blue[800],
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.50,
      );
    return TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }
}
