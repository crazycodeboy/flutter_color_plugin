# flutter_color_plugin

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
