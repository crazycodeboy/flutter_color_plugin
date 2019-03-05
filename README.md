
[![pub package](https://img.shields.io/pub/v/flutter_color_plugin.svg)](https://pub.dartlang.org/packages/flutter_color_plugin)
[ ![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](https://github.com/crazycodeboyflutter_color_plugin/pulls)
[ ![flutter_color_plugin release](https://img.shields.io/github/release/crazycodeboy/flutter_color_plugin.svg?maxAge=2592000?style=flat-square)](https://github.com/crazycodeboy/flutter_color_plugin/releases)

A color parse package for flutter,it works on iOS and Android.

## Getting Started

### To get a color


```dart
Color color1 = ColorUtil.color('#f2f2f2');
Color color2 = ColorUtil.color('f2f2f2');
print(color1 == color2); //true

Color color3 = ColorUtil.color('#a1FF5733');
Color color4 = ColorUtil.color('a1FF5733');
print(color3 == color4); //true
```

### To get a int color

```dart
//The following is the same
int colorInt1 = ColorUtil.intColor('#f2f2f2');
int colorInt2 = ColorUtil.intColor('f2f2f2');
int colorInt3 = ColorUtil.intColor('#fff2f2f2');
int colorInt5 = ColorUtil.intColor('fff2f2f2');
```
