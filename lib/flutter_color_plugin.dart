library flutter_color_plugin;

import 'dart:ui';

class ColorUtil {
  static const int BLACK = 0xFF000000;
  static const int DKGRAY = 0xFF444444;
  static const int GRAY = 0xFF888888;
  static const int LTGRAY = 0xFFCCCCCC;
  static const int WHITE = 0xFFFFFFFF;
  static const int RED = 0xFFFF0000;
  static const int GREEN = 0xFF00FF00;
  static const int BLUE = 0xFF0000FF;
  static const int YELLOW = 0xFFFFFF00;
  static const int CYAN = 0xFF00FFFF;
  static const int MAGENTA = 0xFFFF00FF;
  static const int TRANSPARENT = 0;

  /// Parse the color string, and return the corresponding color-int.
  /// If the string cannot be parsed, throws an ArgumentError
  static int intColor(String? colorString) {
    if (colorString?.isEmpty ?? true) {
      throw ArgumentError('Unknown color');
    }
    if (colorString![0] == '#') {
      int? color = int.tryParse(colorString.substring(1), radix: 16);
      if (colorString.length == 7 && color != null) {
        // Set the alpha value
        color |= 0x00000000ff000000;
      } else if (colorString.length != 9) {
        throw ArgumentError('Unknown color');
      }
      return color!;
    } else {
      int? color = sColorNameMap[(colorString.toLowerCase())];
      if (color != null) {
        return color;
      } else {
        return intColor('#' + colorString);
      }
    }
  }

  /// Parse the color string, and return the corresponding color.
  /// If the string cannot be parsed, throws an ArgumentError
  static Color color(String colorString) {
    return Color(intColor(colorString));
  }

  static const sColorNameMap = {
    "black": BLACK,
    "darkgray": DKGRAY,
    "gray": GRAY,
    "lightgray": LTGRAY,
    "white": WHITE,
    "red": RED,
    "green": GREEN,
    "blue": BLUE,
    "yellow": YELLOW,
    "cyan": CYAN,
    "magenta": MAGENTA,
    "aqua": 0xFF00FFFF,
    "fuchsia": 0xFFFF00FF,
    "darkgrey": DKGRAY,
    "grey": GRAY,
    "lightgrey": LTGRAY,
    "lime": 0xFF00FF00,
    "maroon": 0xFF800000,
    "navy": 0xFF000080,
    "olive": 0xFF808000,
    "purple": 0xFF800080,
    "silver": 0xFFC0C0C0,
    "teal": 0xFF008080
  };
}
